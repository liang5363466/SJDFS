﻿using SJRCS.BLL.Interface;
using SJRCS.Web.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Autofac;
using SJRCS.Common;
using Webdiyer.WebControls.Mvc;
using System.Web.Routing;
using SJRCS.Model;
using System.IO;
using SJRCS.Excel;
using System.Diagnostics;
using System.Reflection;
using SJRCS.Logger;
namespace SJRCS.Web.Controllers
{
    public class TableController : BaseController
    {
        private IRCS_TablesBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_TablesBLL>();
        private IRCS_UserBLL userBll = BootStrapper.AutofacContainer.Resolve<IRCS_UserBLL>();


        public ActionResult InitUpload()
        {
            return View("TableUpload");
        }

        public ActionResult SetTableRule(long tableId)
        {
            return View();
        }


        public ActionResult TableView(long tableId)
        {
            return View();
        }

        public ActionResult EditTable(long tableId)
        {
            dynamic tableInfo = bll.GetTableByTableId(tableId);
            return View(tableInfo);
        }

        /// <summary>
        /// 获取当前用户上传的的所有表样
        /// </summary>
        public ActionResult UploaderTables(int pageIndex = 1)
        {
            int pageCount, recordCount;
            IEnumerable<Dynamic> adminTables = bll.GetAdminTablesByUploaderId(pageIndex, 10, out pageCount, out recordCount, SessionUser.UserId);
            var model = new PagedList<Dynamic>(adminTables, pageIndex, 10, recordCount);
            return View(model);
        }
        /// <summary>
        /// 删除一个表样
        /// </summary>
        public ActionResult DeleteOneTable(long tableId, int pageIndex = 1)
        {
            bll.DeleteTableByTableId(tableId);
            return RedirectToAction("UploaderTables", "Table", new { pageIndex = pageIndex });
        }

        /// <summary>
        /// 表样上传入库处理
        /// </summary>
        [HttpPost]
        public ActionResult TableUpload()
        {
            //读取上报模板信息，并保存至上报模板文件夹
            HttpPostedFileBase fillTemplate = Request.Files["fillTemplate"] as HttpPostedFileBase;
            string tableName = Utils.NewGuid() + ".xls";
            string fillTemplateSavePath = Const.FillTemplate + tableName;
            fillTemplate.SaveAs(fillTemplateSavePath);
            string exportTemplateSavePath = Const.ExportTemplate + tableName;
            fillTemplate.SaveAs(exportTemplateSavePath);

            ////表样实体属性设置
            dynamic tableInfo = new Dynamic();
            tableInfo.Name = Request["tableName"];
            tableInfo.UniqueCode = fillTemplate.FileName.Substring(0, 18);
            tableInfo.ExportFile = tableName;
            tableInfo.FillFile = tableName;
            tableInfo.DataTable = Utils.GenerateDataTableName();
            tableInfo.DataStartX = 0;
            tableInfo.DataStartY = 0;
            tableInfo.UpLoader = SessionUser.UserId;
            tableInfo.CreateTime = DateTime.Now;
            tableInfo.Descript = Request["descript"];
            tableInfo.IsPublished = RCS_IsPublished.False;
            tableInfo.IsAllowReport = RCS_IsPublished.False;
            tableInfo.Type = int.Parse(Request["fillType"]);

            tableInfo.Version = RCS_TableVersion.New;

            tableInfo.CycleFields = new List<Dynamic>();

            if (tableInfo.Type == RCS_TableType.Cycle)
                DoCycleTypeSave(tableInfo);
            else if (tableInfo.Type == RCS_TableType.Temp)
                DoTempTypeSave(tableInfo);
            //从配置文件中获取表头信息
            ITable_SJDFS tableAnalyse = (ITable_SJDFS)Assembly.Load("SJRCS.Excel").CreateInstance("SJRCS.Excel." + tableInfo.UniqueCode);
            tableInfo.HeadCollection = tableAnalyse.GetTableHeadInfos();
            bll.AddTable(tableInfo);
            ViewBag.ReturnScript = @"window.top.jQuery.unblockUI();Dialog.returnValue = true;Dialog.close();";
            return View("TableUpload");
        }

        /// <summary>
        /// 下载指定id的表样
        /// </summary>
        public ActionResult DownLoadTable(long tableId)
        { 
            dynamic tableInfo = bll.GetTableByTableId(tableId);
            string filePath = Const.ExportTemplate + tableInfo.EXPORT_FILE;
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
            return File(data, "application/vnd.ms-excel", tableInfo.NAME+".xls");
        }

        /// <summary>
        /// 在线预览上传的表样
        /// </summary>
        public ActionResult PreviewTable(long tableId)
        {
            dynamic tableInfo = bll.GetTableByTableId(tableId);
            string filePath = Const.ExportTemplate + tableInfo.EXPORT_FILE;
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
            return File(data, "application/vnd.ms-excel", tableInfo.NAME+".xls");
        }

        /// <summary>
        /// 发布表样
        /// </summary>
        public ActionResult PublishTable(long tableId, long pageIndex = 1)
        {
            bll.PublishTable(tableId);
            return RedirectToAction("UploaderTables", "Table", new { pageIndex = pageIndex });
        }

        /// <summary>
        /// 设置表样可以上报
        /// </summary>
        public ActionResult SetTableIsAllowReport(long tableId,int status,long pageIndex = 1)
        {
            bll.UpdateTableStatus(tableId, status);
            return RedirectToAction("UploaderTables", "Table", new { pageIndex = pageIndex });
        }



        /// <summary>
        /// 保存修改后的上报表样信息
        /// </summary>
        public ActionResult SaveTableChange(long tableId)
        {
            dynamic tableInfo = bll.GetTableByTableId(tableId);
            tableInfo.TYPE = int.Parse(Request["fillType"]);
            tableInfo.NAME = Request["tableName"];
            tableInfo.IS_PUBLISHED = RCS_IsPublished.False;
            tableInfo.IS_ALLOW_REPORT = RCS_IsPublished.False;
            tableInfo.DESCRIPT = Request["descript"];
            tableInfo.CycleFields = new List<Dynamic>();
            if (tableInfo.TYPE == RCS_TableType.Cycle) 
                DoCycleTypeSave(tableInfo);
            else if (tableInfo.TYPE == RCS_TableType.Temp) 
                DoTempTypeSave(tableInfo);
            TempData["EditTable"] = tableInfo;
            bll.UpdateTable(tableInfo);
            ViewBag.ReturnScript = "Dialog.returnValue = true;Dialog.close();";
            tableInfo = bll.GetTableByTableId(tableId);
            return View("EditTable", tableInfo);
        }

        /// <summary>
        /// 检查表样是否已设置上报人员
        /// </summary>
        public ActionResult CheckTableIsSetFillUser(long tableId)
        {
            IEnumerable<dynamic> fillUsers =  userBll.GetFillUsers(tableId);
            return fillUsers.Count() > 0 ? Content("1") : Content("0");
        }

        /// <summary>
        /// 检测表样名称是否已存在
        /// </summary>
        public ActionResult CheckTableNameIsExist(long tableId,string tableName)
        {
            bool checkResult = bll.CheckTableNameIsExist(tableId,tableName);
            string result = checkResult ? "1" : "0";
            return Content(result);
        }
        
        #region 私有方法
        private void DoCycleTypeSave(dynamic tableInfo)
        {
            int cycleType = int.Parse(Request["CycleType"]);
            dynamic cycleTypeObj = new Dynamic();
            cycleTypeObj.Code = RCS_TableTypeExpand.CycleType;
            cycleTypeObj.Value = cycleType;
            tableInfo.CycleFields.Add(cycleTypeObj);

            if (cycleType == RCS_CycleType.Week)
            {
                dynamic cycleWeekStart = new Dynamic();
                cycleWeekStart.Code = RCS_TableTypeExpand.CycleWeekStart;
                cycleWeekStart.Value = Request[RCS_TableTypeExpand.CycleWeekStart];
                tableInfo.CycleFields.Add(cycleWeekStart);

                dynamic cycleWeekEnd = new Dynamic();
                cycleWeekEnd.Code = RCS_TableTypeExpand.CycleWeekEnd;
                cycleWeekEnd.Value = Request[RCS_TableTypeExpand.CycleWeekEnd];
                tableInfo.CycleFields.Add(cycleWeekEnd);
            }
            else if (cycleType == RCS_CycleType.Month)
            {
                dynamic cycleMonthStart = new Dynamic();
                cycleMonthStart.Code = RCS_TableTypeExpand.CycleMonthStart;
                cycleMonthStart.Value = Request[RCS_TableTypeExpand.CycleMonthStart];
                tableInfo.CycleFields.Add(cycleMonthStart);

                dynamic cycleMonthEnd = new Dynamic();
                cycleMonthEnd.Code = RCS_TableTypeExpand.CycleMonthEnd;
                cycleMonthEnd.Value = Request[RCS_TableTypeExpand.CycleMonthEnd];
                tableInfo.CycleFields.Add(cycleMonthEnd);
            }
            else if (cycleType == RCS_CycleType.Quarter)
            {
                dynamic cycleQuarter = new Dynamic();
                cycleQuarter.Code = RCS_TableTypeExpand.CycleQuarter;
                cycleQuarter.Value = Request[RCS_TableTypeExpand.CycleQuarter];
                tableInfo.CycleFields.Add(cycleQuarter);

                dynamic cycleQuarterStart = new Dynamic();
                cycleQuarterStart.Code = RCS_TableTypeExpand.CycleQuarterStart;
                cycleQuarterStart.Value = Request[RCS_TableTypeExpand.CycleQuarterStart];
                tableInfo.CycleFields.Add(cycleQuarterStart);

                dynamic cycleQuarterEnd = new Dynamic();
                cycleQuarterEnd.Code = RCS_TableTypeExpand.CycleQuarterEnd;
                cycleQuarterEnd.Value = Request[RCS_TableTypeExpand.CycleQuarterEnd];
                tableInfo.CycleFields.Add(cycleQuarterEnd);
            }
            else if (cycleType == RCS_CycleType.Year)
            {
                dynamic cycleYearStart = new Dynamic();
                cycleYearStart.Code = RCS_TableTypeExpand.CycleYearStart;
                cycleYearStart.Value = Request[RCS_TableTypeExpand.CycleYearStart];
                tableInfo.CycleFields.Add(cycleYearStart);

                dynamic cycleYearEnd = new Dynamic();
                cycleYearEnd.Code = RCS_TableTypeExpand.CycleYearEnd;
                cycleYearEnd.Value = Request[RCS_TableTypeExpand.CycleYearEnd];
                tableInfo.CycleFields.Add(cycleYearEnd);
            }
        }

        private void DoTempTypeSave(dynamic tableInfo)
        {
            dynamic tempStart = new Dynamic();
            tempStart.Code = RCS_TableTypeExpand.TempStart;
            tempStart.Value = Request[RCS_TableTypeExpand.TempStart];
            tableInfo.CycleFields.Add(tempStart);

            dynamic tempEnd = new Dynamic();
            tempEnd.Code = RCS_TableTypeExpand.TempEnd;
            tempEnd.Value = Request[RCS_TableTypeExpand.TempEnd];
            tableInfo.CycleFields.Add(tempEnd);
        } 
        #endregion
    }
}
