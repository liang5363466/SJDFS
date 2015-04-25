using SJRCS.BLL.Interface;
using SJRCS.Web.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Autofac;
using SJRCS.Model;
using SJRCS.Common;
using Webdiyer.WebControls.Mvc;
using SJRCS.Web.Filters;
using SJRCS.Excel;
using System.Reflection;
namespace SJRCS.Web.Controllers
{
    public class AuditController : BaseController
    {
        private IRCS_DataAuditsBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_DataAuditsBLL>();
        private IRCS_TablesBLL tableBll = BootStrapper.AutofacContainer.Resolve<IRCS_TablesBLL>();

        public ActionResult AuditDataDetail()
        {
            return View();
        }
        /// <summary>
        /// 将在线填写好的数据入库，未审核状态
        /// </summary>
        public ActionResult CommitAuditData()
        {
            long auditId = long.Parse(Request["auditId"]);
            bll.AuditData(auditId, RCS_AuditStatus.UnAudit);
            return RedirectToAction("ReportTableData", "Report", new { tableId = Request["tableId"], status = Request["status"], pageIndex = Request["pageIndex"] });
        }
       
        /// <summary>
        /// 删除一个未提交的数据
        /// </summary>
        public ActionResult DeleteUnCommitData(long auditId)
        {
            bll.DeleteAuditData(auditId);
            return RedirectToAction("ReportTableData", "Report", new { tableId = Request["tableId"], status = Request["status"], pageIndex = string.IsNullOrEmpty(Request["pageIndex"]) ? "1" : Request["pageIndex"] });
        }

        /// <summary>
        /// 获取所有需要审核的,已提交审核的数据
        /// </summary>
        public ActionResult AuditTables(int pageIndex = 1)
        {
            int pageCount, recordCount;
            IEnumerable<Dynamic> auditTables = tableBll.GetAuditorTables(pageIndex, 10, out pageCount, out recordCount, SessionUser.UserId);
            var model = new PagedList<Dynamic>(auditTables, pageIndex, 10, recordCount);
            return View(model);
        }

        /// <summary>
        /// 根据表样id以及数据审核状态，获取相应数据
        /// </summary>
        public ActionResult AuditTableData(long tableId,int pageIndex = 1, int status = -1)
        {
            ViewBag.Data = tableBll.GetTableByTableId(tableId);
            int pageCount, recordCount;
            IEnumerable<Dynamic> auditTableData = bll.GetAuditDataByAuditorId(pageIndex, 10, out pageCount, out recordCount, tableId,SessionUser.UserId, status);
            var model = new PagedList<Dynamic>(auditTableData, pageIndex, 10, recordCount);
            ViewBag.ReturnScript = "window.top.jQuery.unblockUI();";
            if (status == RCS_AuditStatus.Audited)
                return View("AuditTableData_Audited",model);
            else if (status == RCS_AuditStatus.UnAudit)
                return View("AuditTableData_UnAudit", model);
            else if (status == RCS_AuditStatus.UnPass)
                return View("AuditTableData_UnPass", model);
            return View(model);
        }

        /// <summary>
        /// 将一条提交的数据，审核通过并入库
        /// </summary>
        public ActionResult PassAuditData(long auditId, long tableId, int pageIndex = 1, int status = -1)
        {
            dynamic tableInfo = tableBll.GetTableByTableId(tableId);
            dynamic auditInfo = bll.GetAuditDataDetail(auditId);
            string auditFilePath = Const.FillTemp + auditInfo.EXPORT_FILE;
            bool result = false;
            if (tableInfo.VERSION == RCS_TableVersion.Old)
            {
                int dataStartX = Convert.ToInt32(tableInfo.DATA_STARTX);
                int dataStartY = Convert.ToInt32(tableInfo.DATA_STARTY);
                IEnumerable<Dynamic> headCollection = tableInfo.HeadCollection;
                AnalyseImportFile analyse = new AnalyseImportFile();
                IEnumerable<Dynamic> dataCollection = analyse.GetTableData(dataStartX, dataStartY, auditFilePath, headCollection);
                foreach (dynamic item in dataCollection)
                {
                    item.AuditId = auditId;
                }
                result = bll.PassAuditData(auditId, SessionUser.UserId, headCollection, dataCollection);
            }
            else 
            {
                ITable_SJDFS dataAnalyse = (ITable_SJDFS)Assembly.Load("SJRCS.Excel").CreateInstance("SJRCS.Excel." + tableInfo.UNIQUE_CODE);
                IEnumerable<Dynamic> headCollection = tableInfo.HeadCollection;
                IEnumerable<Dynamic> dataCollection = dataAnalyse.AnalyseOlFillData(auditId,tableInfo.HeadCollection, auditFilePath);
                result = bll.PassAuditData(auditId, SessionUser.UserId, headCollection, dataCollection);
            }
            
            if (result) System.IO.File.Delete(auditFilePath);
            return RedirectToAction("AuditTableData", "Audit", new { tableId = tableId ,pageIndex = pageIndex,status = status});
        }

        /// <summary>
        /// 将一条提交的数据，审核不通过
        /// </summary>
        public ActionResult UnPassAuditData(long auditId, long tableId, int pageIndex = 1, int status = -1)
        {
            bll.UnPassAuditData(auditId, SessionUser.UserId);
            return RedirectToAction("AuditTableData", "Audit", new { tableId = tableId, pageIndex = pageIndex, status = status });
        }

        /// <summary>
        /// 下载一条已审核过的数据
        /// </summary>
        public ActionResult DownloadAuditData(long auditId)
        {
            dynamic auditInfo = bll.GetAuditDataDetail(auditId);
            string filePath = Const.FillTemp + auditInfo.EXPORT_FILE;
            byte[] fileBytes = GetServerFileBytes(filePath, false);
            return File(fileBytes, "application/vnd.ms-excel", auditInfo.NAME + ".xls");
        }

        public ActionResult InitWriteOpinion(long auditId)
        {
            var model = bll.GetAuditDataDetail(auditId);
            return View("WriteAuditOpinion", model);
        }

        public ActionResult WriteAuditOpinion(long auditId)
        {
            var model = bll.GetAuditDataDetail(auditId);
            string opinion = string.IsNullOrEmpty(Request["opinion"]) ? "" : Request["opinion"];
            bll.UpdateAuditOpinion(auditId,opinion);
            ViewBag.ReturnScript = "window.returnValue = 1;window.close();";
            return View(model);
        }
        
        public ActionResult SelectExportMode(long id)
        {
            var model = tableBll.GetTableByTableId(id);
            return View(model);
        }

        /// <summary>
        /// 根据时间范围导出上报的数据
        /// </summary>
        [HttpPost]
        public ActionResult DataExport(long tableId, string exportFileName, DateTime startDate, DateTime endDate)
        {
            endDate = endDate.AddHours(23).AddMinutes(59).AddSeconds(59);
            dynamic tableInfo = tableBll.GetTableByTableId(tableId);
            int dataStartX = Convert.ToInt32(tableInfo.DATA_STARTX);
            int dataStartY = Convert.ToInt32(tableInfo.DATA_STARTY);
            string tempExportName = Utils.NewGuid();
            string tableFilePath = Const.ExportTemplate + tableInfo.EXPORT_FILE;
            string exportFilePath = Const.ExportTemp + tempExportName + ".xls";
            string fillTemplate = Const.FillTemplate + tableInfo.FILL_FILE;
            IEnumerable<Dynamic> exportData = tableBll.GetExportAuditedData(tableId, SessionUser.UserId, startDate, endDate);
            if (tableInfo.VERSION == RCS_TableVersion.Old)
            {
                AnalyseDataExport analyse = new AnalyseDataExport();
                analyse.DataExport(tableFilePath, exportFilePath, dataStartX, dataStartY, tableInfo.HeadCollection, exportData);
            }
            else 
            {
                ITable_SJDFS dataExport = (ITable_SJDFS)Assembly.Load("SJRCS.Excel").CreateInstance("SJRCS.Excel." + tableInfo.UNIQUE_CODE);
                dataExport.ExportSummaryData(tableInfo.HeadCollection, exportData, fillTemplate, exportFilePath);
            }
            Session["ExportName"] = exportFileName;
            return Content(tempExportName);
        }

        /// <summary>
        /// 当选择完导出数据时间区间，关闭数据导出开窗后，获取服务器已导出好的数据文件，提供下载
        /// </summary>
        public ActionResult GetExportFile(string fileName)
        {
            string exportName = Session["ExportName"].ToString();
            string exportFilePath = Const.ExportTemp + fileName + ".xls";
            if (Session["ExportFile"] == null) 
                Session["ExportFile"] = GetServerFileBytes(exportFilePath, true);
            return File((byte[])Session["ExportFile"], "application/vnd.ms-excel", exportName + ".xls");
        }
    }
}
