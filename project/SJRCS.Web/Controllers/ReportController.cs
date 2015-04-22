using SJRCS.Web.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Autofac;
using SJRCS.BLL;
using SJRCS.BLL.Interface;
using SJRCS.Common;
using Webdiyer.WebControls.Mvc;
using SJRCS.Model;
using SJRCS.Excel;
namespace SJRCS.Web.Controllers
{
    public class ReportController : BaseController
    {
        private IRCS_TablesBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_TablesBLL>();
        private IRCS_DataAuditsBLL auditBll = BootStrapper.AutofacContainer.Resolve<IRCS_DataAuditsBLL>();
        private IRCS_DataTableBLL dataTableBll = BootStrapper.AutofacContainer.Resolve<IRCS_DataTableBLL>();


        public ActionResult GetFillTemplate(long tableId)
        {
            dynamic tableInfo = bll.GetTableByTableId(tableId);
           
            string filePath = Const.FillTemplate + tableInfo.FILL_FILE;
            AutomaticOrgName autoOrgName = new AutomaticOrgName();
            filePath = autoOrgName.AutoFill(filePath, SessionUser.OrgName);
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
                System.IO.File.Delete(filePath);
            }
            return File(data, "application/vnd.ms-excel", tableInfo.NAME + ".xls");
        }

        public ActionResult DataImport()
        {
            HttpPostedFileBase excelFile = Request.Files["importfile"] as HttpPostedFileBase;
            string importFile = Utils.NewGuid() + ".xls";
            string importSavePath = Const.ImportTemp + importFile;
            if (excelFile != null)
            {
                long tableId = long.Parse(Request["tableId"]);
                dynamic tableInfo = bll.GetTableByTableId(tableId);
                string tableFilePath = Const.ExportTemplate + tableInfo.EXPORT_FILE;
                excelFile.SaveAs(importSavePath);
                AnalyseImportFile analyseImportFile = new AnalyseImportFile();
                int checkResult = analyseImportFile.CheckImportFileStrut(importSavePath, tableFilePath, tableInfo.HeadCollection);
                if (checkResult == 1)
                {
                    string tempFileName = Utils.NewGuid() + ".xls";
                    string tempFilePath = Const.FillTemp + tempFileName;
                    excelFile.SaveAs(tempFilePath);
                    dynamic auditData = new Dynamic();
                    auditData.TableId = tableId;
                    auditData.NAME = Request["dataName"];
                    auditData.FileName = tempFileName;
                    auditData.REPORT_TIME = DateTime.Now;
                    auditData.Reporter = SessionUser.UserId;
                    auditBll.AddAuditData(auditData);
                    ViewBag.ReturnScript = string.Format("ImportFileSuccess({0});", auditData.AuditId);
                }
                else if (checkResult == 0)
                {
                    ViewBag.ReturnScript = "ImportFileError();";
                }
                else
                {
                    ViewBag.ReturnScript = "ImportFileNoData();";
                }
            }
            System.IO.File.Delete(importSavePath);
            return View();
        }

        public ActionResult ReporterTables(int pageIndex = 1)
        {
            int pageCount, recordCount;
            IEnumerable<Dynamic> adminTables = bll.GetTablesByWriterId(pageIndex, 10, out pageCount, out recordCount, SessionUser.UserId);
            var model = new PagedList<Dynamic>(adminTables, pageIndex, 10, recordCount);
            return View(model);
        }

        public ActionResult ReportTableData(long tableId, int status = 0, int pageIndex = 1)
        {
            ViewBag.Data = bll.GetTableByTableId(tableId);
            int pageCount, recordCount;
            IEnumerable<Dynamic> auditDatas = auditBll.GetAuditDataByWriterId(pageIndex, 10, out pageCount, out recordCount, tableId, SessionUser.UserId, status);
            var model = new PagedList<Dynamic>(auditDatas, pageIndex, 10, recordCount);

            if (status == RCS_AuditStatus.UnCommit)
                return View("ReportTableData_UnCommit", model);
            else if (status == RCS_AuditStatus.UnAudit)
                return View("ReportTableData_UnAudit", model);
            else if (status == RCS_AuditStatus.Audited)
                return View("ReportTableData_Audited", model);
            else if (status == RCS_AuditStatus.UnPass)
                return View("ReportTableData_UnPass", model);


            return View(model);
        }

        public ActionResult ViewReportData()
        {
            return View();
        }

        public ActionResult EditReportData()
        {
            return View();
        }

        public ActionResult GetReportFile(long auditId)
        {
            dynamic auditInfo = auditBll.GetAuditDataDetail(auditId);
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
            return File(data, "application/vnd.ms-excel", auditInfo.EXPORT_FILE);
        }

        public ActionResult TempSave()
        {
            HttpPostedFileBase excelFile = Request.Files["tempfile"] as HttpPostedFileBase;
            if (excelFile == null) return Content("cancel");
            if (!string.IsNullOrEmpty(Request["auditId"]))
            {
                long auditId = long.Parse(Request["auditId"]);
                dynamic auditInfo = auditBll.GetAuditDataDetail(auditId);
                string filePath = Const.FillTemp + auditInfo.EXPORT_FILE;
                System.IO.File.Delete(filePath);
                excelFile.SaveAs(filePath);
            }
            else
            {
                string fileName = Utils.NewGuid() + ".xls";
                string fileSavePath = Const.FillTemp + fileName;
                long tableId = long.Parse(Request["tableId"]);
                dynamic tableInfo = bll.GetTableByTableId(tableId);
                string tableFilePath = Const.ExportTemplate + tableInfo.EXPORT_FILE;
                dynamic auditData = TempData["AuditInfo"] as Dynamic;
                auditData.TableId = tableId;
                auditData.FileName = fileName;
                auditData.Reporter = SessionUser.UserId;
                auditBll.AddAuditData(auditData);
                excelFile.SaveAs(fileSavePath);
                string auditid = auditData.AuditId.ToString();
                return Content(auditid);
            }
            return Content("success");
        }

        public ActionResult TableFillDescript(long tableId)
        {
            dynamic tableInfo = bll.GetTableByTableId(tableId);
            ViewBag.Data = Convert.IsDBNull(tableInfo.DESCRIPT) ? "" : tableInfo.DESCRIPT;
            return View();
        }

        public ActionResult FillTable()
        {
            return View();
        }

        public ActionResult GetAuditedDataFile(long tableId, long auditId)
        {
            dynamic tableInfo = bll.GetTableByTableId(tableId);
            int dataStartX = Convert.ToInt32(tableInfo.DATA_STARTX);
            int dataStartY = Convert.ToInt32(tableInfo.DATA_STARTY);
            string fillTemplate = Const.FillTemplate + tableInfo.FILL_FILE;
            dynamic auditInfo = auditBll.GetAuditDataDetail(auditId);
            IEnumerable<Dynamic> auditDatas = auditBll.GetAuditedData(auditId);
            AnalyseAuditedDetail analyse = new AnalyseAuditedDetail();
            string auditFile = analyse.GenerateAuditedDetail(dataStartX, dataStartY, fillTemplate, tableInfo.HeadCollection, auditDatas);
            if (!string.IsNullOrEmpty(auditFile))
            {
                System.IO.FileStream fs = null;
                byte[] data = null;
                try
                {
                    fs = System.IO.File.OpenRead(auditFile);
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
                    System.IO.File.Delete(auditFile);
                }
                return File(data, "application/vnd.ms-excel");
            }
            return View();
        }

        public ActionResult ViewAuitedData()
        {
            return View();
        }

        public ActionResult InitWriteReportName()
        {
            dynamic model = new Dynamic();
            model.NAME = "";
            model.REPORT_TIME = DateTime.Now;
            if (!string.IsNullOrEmpty(Request["auditId"]))
            {
                long auditId = long.Parse(Request["auditId"]);
                model = auditBll.GetAuditDataDetail(auditId);
                return View("WriteReportDataName", model);
            }
            return View("WriteReportDataName", model);
        }

        public ActionResult WriteReportDataName()
        {
            dynamic auditInfo = new Dynamic();
            string dataName = string.IsNullOrEmpty(Request["dataName"]) ? "" : Request["dataName"];
            DateTime reportTime = string.IsNullOrEmpty(Request["dataDate"]) ? DateTime.Now : DateTime.Parse(Request["dataDate"]);
            if (!string.IsNullOrEmpty(Request["auditId"]))
            {
                long auditId = long.Parse(Request["auditId"]);
                auditBll.UpdateAuditDataName(auditId, dataName, reportTime);
                auditInfo = auditBll.GetAuditDataDetail(auditId);
            }
            else
            {
                auditInfo.NAME = dataName;
                auditInfo.REPORT_TIME = reportTime;
                TempData["AuditInfo"] = auditInfo;
            }
            ViewBag.ReturnScript = "window.returnValue = 1;window.close();";
            return View("WriteReportDataName", auditInfo);
        }

        public ActionResult CheckAuditNameIsExist(long auditId,string auditName)
        {
            bool checkResult = auditBll.CheckAuditNameIsExist(auditId,auditName);
            string result = checkResult ? "1" : "0";
            return Content(result);
        }
    }
}
