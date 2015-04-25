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
    public class Table_SJDFS_000007 : ITable_SJDFS
    {
        int _dataStartX = 1, _dataStartY = 4;
        Application application = new ApplicationClass() { Visible = false, DisplayAlerts = false };
        object miss = Missing.Value;

        HeadInfo[] _headInfos = 
        {
            new HeadInfo("局名",3,1),
            new HeadInfo("截获批次",3,2),
            new HeadInfo("截获数量",3,3),
            new HeadInfo("截获批次",3,4),
            new HeadInfo("截获数量",3,5)
        };

        public IEnumerable<Dynamic> AnalyseOlFillData(long auditId,ICollection<Dynamic> heads,string filePath)
        {
            try
            {
                Workbook workBook = application.Workbooks.Open(filePath, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                ICollection<Dynamic> cellDatas = new LinkedList<Dynamic>();
                for (int j = 0; j < 1; j++)
                {
                    Dictionary<string, object> rowData = new Dictionary<string, object>();
                    for (int i = 0; i < heads.Count; i++)
                    {
                        dynamic head = heads.ElementAt(i);
                        Range cell = worksheet.Cells[_dataStartY, i + 1] as Range;
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
            try
            {
                Workbook workBook = application.Workbooks.Open(fillTemplate, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss, miss);
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                for (int j = 0; j < data.Count(); j++)
                {
                    Dynamic rowData = data.ElementAt(j);
                    for (int i = 0; i < heads.Count(); i++)
                    {
                        dynamic head = heads.ElementAt(i);
                        Range cell = worksheet.Cells[_dataStartY + j, i + 1] as Range;
                        cell.Value = rowData.Data[head.CODE];
                    }

                }
                //进行合计行计算
                Range summary1 = worksheet.get_Range("A24");
                Range summary2 = worksheet.get_Range("B24");
                Range summary3 = worksheet.get_Range("C24");
                Range summary4 = worksheet.get_Range("D24");
                Range summary5 = worksheet.get_Range("E24");
             
                summary1.Value = "全省合计";
                summary2.Formula = "=SUM(B4:B23)";
                summary3.Formula = "=SUM(C4:C23)";
                summary4.Formula = "=SUM(D4:D23)";
                summary5.Formula = "=SUM(E4:E23)";
              
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
                Range range = worksheet.get_Range("A4");
                range.Value = user.OrgName;
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
                for (int j = 0; j < 1; j++)
                {
                    Dynamic rowData = datas.ElementAt(j);
                    for (int i = 0; i < heads.Count(); i++)
                    {
                        dynamic head = heads.ElementAt(i);
                        Range cell = worksheet.Cells[_dataStartY, i + 1] as Range;
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
