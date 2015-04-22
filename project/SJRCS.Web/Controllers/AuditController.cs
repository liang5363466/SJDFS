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
namespace SJRCS.Web.Controllers
{
    public class AuditController : BaseController
    {
        private IRCS_DataAuditsBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_DataAuditsBLL>();
        private IRCS_TablesBLL tableBll = BootStrapper.AutofacContainer.Resolve<IRCS_TablesBLL>();

        public ActionResult CommitAuditData()
        {
            long auditId = long.Parse(Request["auditId"]);
            bll.AuditData(auditId, RCS_AuditStatus.UnAudit);
            return RedirectToAction("ReportTableData", "Report", new { tableId = Request["tableId"], status = Request["status"], pageIndex = Request["pageIndex"] });
        }
       
        public ActionResult DeleteUnCommitData(long auditId)
        {
            bll.DeleteAuditData(auditId);
            return RedirectToAction("ReportTableData", "Report", new { tableId = Request["tableId"], status = Request["status"], pageIndex = string.IsNullOrEmpty(Request["pageIndex"]) ? "1" : Request["pageIndex"] });
        }

        public ActionResult AuditTables(int pageIndex = 1)
        {
            int pageCount, recordCount;
            IEnumerable<Dynamic> auditTables = tableBll.GetAuditorTables(pageIndex, 10, out pageCount, out recordCount, SessionUser.UserId);
            var model = new PagedList<Dynamic>(auditTables, pageIndex, 10, recordCount);
            return View(model);
        }

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

        public ActionResult PassAuditData(long auditId, long tableId, int pageIndex = 1, int status = -1)
        {
            dynamic tableInfo = tableBll.GetTableByTableId(tableId);
            dynamic auditInfo = bll.GetAuditDataDetail(auditId);
            int dataStartX = Convert.ToInt32(tableInfo.DATA_STARTX);
            int dataStartY = Convert.ToInt32(tableInfo.DATA_STARTY);
            string auditFilePath = Const.FillTemp + auditInfo.EXPORT_FILE;
            IEnumerable<Dynamic> headCollection = tableInfo.HeadCollection;
            AnalyseImportFile analyse = new AnalyseImportFile();
            IEnumerable<Dynamic> dataCollection = analyse.GetTableData(dataStartX, dataStartY, auditFilePath, headCollection);
            foreach (dynamic item in dataCollection) item.AuditId = auditId;
            bool result = bll.PassAuditData(auditId, SessionUser.UserId, headCollection, dataCollection);
            if (result) System.IO.File.Delete(auditFilePath);
            return RedirectToAction("AuditTableData", "Audit", new { tableId = tableId ,pageIndex = pageIndex,status = status});
        }

        public ActionResult UnPassAuditData(long auditId, long tableId, int pageIndex = 1, int status = -1)
        {
            bll.UnPassAuditData(auditId, SessionUser.UserId);
            return RedirectToAction("AuditTableData", "Audit", new { tableId = tableId, pageIndex = pageIndex, status = status });
        }

        public ActionResult DownloadAuditData(long auditId)
        {
            dynamic auditInfo = bll.GetAuditDataDetail(auditId);
            string filePath = Const.FillTemp + auditInfo.EXPORT_FILE;
        
            System.IO.FileStream fs = null;
            byte[] data = null;
            try
            {
                fs = System.IO.File.OpenRead(filePath);
                data = new byte[fs.Length];
                fs.Read(data, 0, data.Length);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (fs != null) fs.Close();
            } 
            return File(data, "application/vnd.ms-excel", auditInfo.NAME+".xls");
        }

        public ActionResult AuditDataDetail()
        {
            return View();
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
            IEnumerable<Dynamic> exportData = tableBll.GetExportAuditedData(tableId, SessionUser.UserId, startDate, endDate);
            AnalyseDataExport analyse = new AnalyseDataExport();
            analyse.DataExport(tableFilePath, exportFilePath, dataStartX, dataStartY, tableInfo.HeadCollection, exportData);
            TempData["ExportName"] = exportFileName;
            return Content(tempExportName);
        }

        public ActionResult GetExportFile(string fileName)
        {
            string exportName = TempData["ExportName"].ToString();
            string exportFilePath = Const.ExportTemp + fileName + ".xls";
            System.IO.FileStream fs = null;
            byte[] data = null;
            try
            {
                fs = System.IO.File.OpenRead(exportFilePath);
                data = new byte[fs.Length];
                fs.Read(data, 0, data.Length);
            }
            catch (Exception e)
            {
                throw e; 
            }
            finally 
            {
                if (fs != null) fs.Close();
                System.IO.File.Delete(exportFilePath);
            }
            return File(data, "application/vnd.ms-excel", exportName+".xls");
        }
    }
}
