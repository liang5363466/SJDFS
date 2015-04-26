using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000003 : ITable_SJDFS
    {
        //int _dataStartX = 1, _dataStartY = 4;
        Application application = new ApplicationClass() { Visible = false, DisplayAlerts = false };
        object miss = Missing.Value;
        #region 表头信息
        HeadInfo[] _headInfos = 
        {
            //new HeadInfo("使用药品名称",4,1),
            //new HeadInfo("计量单位(升/吨/公斤)",4,2),
            new HeadInfo("药品实际使用总量（查药品台帐）",4,3),
            new HeadInfo("标准单位用药量(g/m3)（仅熏蒸剂）",4,4),
            new HeadInfo("理论处理数(艘次)",4,5),
            new HeadInfo("实际处理数(艘次)",4,6),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,7),
            new HeadInfo("药品实际使用量小计",4,8),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,9),
            new HeadInfo("理论处理数(架次)",4,10),
            new HeadInfo("实际处理数(架次)",4,11),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,12),
            new HeadInfo("药品实际使用量小计",4,13),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,14),
            new HeadInfo("理论处理数(列)",4,15),
            new HeadInfo("实际处理数(列)",4,16),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,17),
            new HeadInfo("药品实际使用量小计",4,18),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,19),
            new HeadInfo("理论处理数(辆)",4,20),
            new HeadInfo("实际处理数(辆)",4,21),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,22),
            new HeadInfo("药品实际使用量小计",4,23),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,24),
           
            //new HeadInfo("使用药品名称",23,1),
            //new HeadInfo("计量单位(升/吨/公斤)",23,2),
            new HeadInfo("药品实际使用总量（查药品台帐）",23,3),
            new HeadInfo("标准单位用药量(重量/单位)",23,4),
            new HeadInfo("理论处理数(批次)",23,5),
            new HeadInfo("实际处理数(批次)",23,6),
            new HeadInfo("实际重量（吨）",23,7),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",23,8),
            new HeadInfo("药品实际使用量小计",23,9),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,10),
            new HeadInfo("理论处理数(批次)",23,11),
            new HeadInfo("实际处理数(批次)",23,12),
            new HeadInfo("实际重量（吨）",23,13),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",23,14),
            new HeadInfo("药品实际使用量小计",23,15),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,16),
            new HeadInfo("理论处理数(标箱)",23,17),
            new HeadInfo("实际处理数(标箱)",23,18),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）	",23,19),
            new HeadInfo("药品实际使用量小计",23,20),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,21),
            new HeadInfo("理论处理数(标箱)",23,22),
            new HeadInfo("实际处理数(标箱)",23,23),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",23,24),
            new HeadInfo("药品实际使用量小计",23,25),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,26),
            
            //new HeadInfo("使用药品名称",43,1),
            //new HeadInfo("计量单位(升/吨/公斤)",43,2),
            new HeadInfo("药品实际使用总量（查药品台帐）",43,3),
            new HeadInfo("标准单位用药量(重量/单位)",43,4),
            new HeadInfo("理论处理数(件)",43,5),
            new HeadInfo("实际处理数(件)",43,6),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",43,7),
            new HeadInfo("药品实际使用量小计	",43,8),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",	43,9),
            new HeadInfo("理论处理数(件)",43,10),
            new HeadInfo("实际处理数(件)",43,11),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",43,12),
            new HeadInfo("药品实际使用量小计	",43,13),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",43,14),
            new HeadInfo("理论处理数(单位)",43,15),
            new HeadInfo("实际处理数(单位)",43,16),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",43,17),
            new HeadInfo("药品实际使用量小计",43,18),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",43,19)
        }; 
        #endregion

        public IEnumerable<Dynamic> AnalyseOlFillData(long auditId,ICollection<Dynamic> heads,string filePath)
        {
            try
            {
                Workbook workBook = application.Workbooks.Open(filePath, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                ICollection<Dynamic> cellDatas = new LinkedList<Dynamic>();
                for (int i = 1; i <= 15; i++)
                {
                    Dictionary<string, object> rowData = new Dictionary<string, object>();
                    for (int j = 0; j < heads.Count; j++)
                    {
                        dynamic head = heads.ElementAt(j);
                        Range cell = worksheet.Cells[head.POINTY + i, head.POINTX] as Range;
                        rowData.Add(head.CODE.ToString(), cell.Text);
                    }
                    rowData.Add("AuditId", auditId);
                    cellDatas.Add(new Dynamic(rowData));
                }
                return cellDatas;
            }
            catch
            {
                throw new Exception("分析用户在线上报数据失败，文件路径：" + filePath);
            }
            finally
            {
                application.Workbooks.Close();
                application.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(application);
                application = null;
                GC.Collect();
                GC.SuppressFinalize(this);
            }
        }

        public void ExportSummaryData(IEnumerable<Dynamic> heads, IEnumerable<Dynamic> data, string fillTemplate,string exportPath)
        {
            var tables = data.ToLookup(c => c.Data["AUDIT_ID"]).ToList();
            try
            {
                Workbook workBook = application.Workbooks.Open(fillTemplate, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                for (int i = 0; i < tables.Count; i++)
                {
                    IEnumerable<Dynamic> table = tables.ElementAt(i);
                    for (int j = 1; j <= 15; j++)
                    {
                        Dynamic rowData = table.ElementAt(j-1);
                        for (int k = 0; k < heads.Count(); k++)
                        {
                            dynamic head = heads.ElementAt(k);
                            Range cell = worksheet.Cells[head.POINTY + j, head.POINTX] as Range;
                            if (cell.Value != null)
                            {
                                 cell.Value = double.Parse(cell.Value.ToString()) + double.Parse(rowData.Data[head.CODE].ToString().Trim());
                            }
                            else
                            {
                                cell.Value = rowData.Data[head.CODE];
                            }
                        }
                    }
                }
                worksheet.SaveAs(exportPath, miss, miss, miss, miss, miss, miss, miss, miss, miss);
            }
            catch
            {
                throw new Exception("数据汇总导出失败，表样文件路径：" + fillTemplate);
            }
            finally
            {
                application.Workbooks.Close();
                application.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(application);
                application = null;
                GC.Collect();
                GC.SuppressFinalize(this);
            }
        }

        public ICollection<Dynamic> GetTableHeadInfos()
        {
            ICollection<Dynamic> heads = new LinkedList<Dynamic>();
            for (int i = 0, l = _headInfos.Length; i < l; i++)
            {
                dynamic headInfo = new Dynamic();
                headInfo.Name = _headInfos[i].Name;
                headInfo.Code = Utils.GenerateTableHeadCode();
                headInfo.Type = 0;
                headInfo.PointX = _headInfos[i].PointX;
                headInfo.PointY = _headInfos[i].PointY;
                heads.Add(headInfo);
            }
            return heads;
        }


        public string InitializeFillTable(dynamic tableInfo, SessionUser user)
        {
            string templatePath = Const.FillTemplate + tableInfo.FILL_FILE;
            string fillTempPath = Const.FillTemp + Utils.NewGuid() + ".xls";

            try
            {
                Workbook workBook = application.Workbooks.Open(templatePath, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                worksheet.SaveAs(fillTempPath, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                return fillTempPath;
            }
            catch
            {
                throw new Exception("初始化表样上报失败：" + tableInfo.ID);
            }
            finally
            {
                application.Workbooks.Close();
                application.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(application);
                application = null;
                GC.Collect();
                GC.SuppressFinalize(this);
            }
        }


        public string PreviewAuditedData(IEnumerable<Dynamic> heads, IEnumerable<Dynamic> datas, string templatePath)
        {
            string previewPath = Const.AuditedTemp + Utils.NewGuid() + ".xls";
            try
            {
                Workbook workBook = application.Workbooks.Open(templatePath, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                for (int j = 1; j <= 15; j++)
                {
                    Dynamic rowData = datas.ElementAt(j-1);
                    for (int i = 0; i < heads.Count(); i++)
                    {
                        dynamic head = heads.ElementAt(i);
                        Range cell = worksheet.Cells[head.POINTY + j, head.POINTX] as Range;
                        cell.Value = rowData.Data[head.CODE];
                    }

                }
                worksheet.SaveAs(previewPath, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                return previewPath;
            }
            catch
            {
                throw new Exception("预览已审核数据失败，文件路径：" + previewPath);
            }
            finally
            {
                application.Workbooks.Close();
                application.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(application);
                application = null;
                GC.Collect();
                GC.SuppressFinalize(this);
            }
        }
    }
}
