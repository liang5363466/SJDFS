using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using SJRCS.Model;
using System.Reflection;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000002 : ITable_SJDFS
    {
        int _dataStartX = 3, _dataStartY = 4;
        Application application = new ApplicationClass() { Visible = false, DisplayAlerts = false };
        object miss = Missing.Value;

        HeadInfo[] _headInfos = 
        {
            new HeadInfo("签发卫生处理通知书(份)",3,3),
            new HeadInfo("消毒",3,4),
            new HeadInfo("除鼠",3,5),
            new HeadInfo("除虫",3,6),
            new HeadInfo("其他",3,7),
            new HeadInfo("处理数量",3,8)
        };

        public IEnumerable<Dynamic> AnalyseOlFillData(long auditId,ICollection<Dynamic> heads,string filePath)
        {
            try
            {
                Workbook workBook = application.Workbooks.Open(filePath, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                ICollection<Dynamic> cellDatas = new LinkedList<Dynamic>();
                for (int i = 0; i < 60; i++)
                {
                    Dictionary<string, object> rowData = new Dictionary<string, object>();
                    for (int j = 0; j < heads.Count; j++)
                    {
                        dynamic head = heads.ElementAt(j);
                        Range cell = worksheet.Cells[_dataStartY + i, head.POINTX] as Range;
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
            var tables = data.ToLookup(c=>c.Data["AUDIT_ID"]).ToList();
            try
            {
                Workbook workBook = application.Workbooks.Open(fillTemplate, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                for (int i = 0; i < tables.Count; i++)
                {
                    IEnumerable<Dynamic> table = tables.ElementAt(i); 
                    for (int j = 0; j < 60; j++)
                    {
                        Dynamic rowData = table.ElementAt(j);
                        for (int k = 0; k < heads.Count(); k++)
                        {
                            dynamic head = heads.ElementAt(k);
                            Range cell = worksheet.Cells[_dataStartY + j, head.POINTX] as Range;
                            if (cell.Value != null)
                            {
                                cell.Value = int.Parse(cell.Value.ToString()) + int.Parse(rowData.Data[head.CODE].ToString());
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
                for (int j = 0; j < 60; j++)
                {
                    Dynamic rowData = datas.ElementAt(j);
                    for (int i = 0; i < heads.Count(); i++)
                    {
                        dynamic head = heads.ElementAt(i);
                        Range cell = worksheet.Cells[_dataStartY + j, head.POINTX] as Range;
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
