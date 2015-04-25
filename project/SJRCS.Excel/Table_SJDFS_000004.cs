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
    public class Table_SJDFS_000004 : ITable_SJDFS
    {
        #region 表头信息
        HeadInfo[] _headInfos = 
        {
            new HeadInfo("单位/部门名称",4,1),
            new HeadInfo("应开展效果评价次数",4,2),
            new HeadInfo("实际开展效果评价次数",4,3),
            new HeadInfo("效果评价率（%）",4,4),
            new HeadInfo("次数",4,5),
            new HeadInfo("合格次数",4,6),
            new HeadInfo("合格率（%）",4,7),
            new HeadInfo("次数",4,8),
            new HeadInfo("合格次数",4,9),
            new HeadInfo("合格率（%）",4,10),
            new HeadInfo("次数",4,11),
            new HeadInfo("合格次数",4,12),
            new HeadInfo("合格率（%）",4,13),
            new HeadInfo("次数",4,14),
            new HeadInfo("合格次数",4,15),
            new HeadInfo("合格率（%）",4,16),
            new HeadInfo("次数",4,17),
            new HeadInfo("合格次数",4,18),
            new HeadInfo("合格率（%）",4,19),
            new HeadInfo("次数",4,20),
            new HeadInfo("合格次数",4,21),
            new HeadInfo("合格率（%）",4,22),
            new HeadInfo("次数",4,23),
            new HeadInfo("合格次数",4,24),
            new HeadInfo("合格率（%）",4,25),
            new HeadInfo("次数",4,26),
            new HeadInfo("合格次数",4,27),
            new HeadInfo("合格率（%）",4,28),
            new HeadInfo("次数",4,29),
            new HeadInfo("合格次数",4,30),
            new HeadInfo("合格率（%）",4,31),
            new HeadInfo("次数",4,32),
            new HeadInfo("合格次数",4,33),
            new HeadInfo("合格率（%）",4,34),
            new HeadInfo("次数",4,35),
            new HeadInfo("合格次数",4,36),
            new HeadInfo("合格率（%）",4,37)
        }; 
        #endregion
        Application application = new ApplicationClass() { Visible = false, DisplayAlerts = false };
        object miss = Missing.Value;
        int _dataStartX = 1, _dataStartY = 5;
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
                Range summary1  = worksheet.get_Range("A25");
                Range summary2  = worksheet.get_Range("B25");
                Range summary3  = worksheet.get_Range("C25");
                Range summary4  = worksheet.get_Range("D25");
                Range summary5  = worksheet.get_Range("E25");
                Range summary6  = worksheet.get_Range("F25");
                Range summary7  = worksheet.get_Range("G25");
                Range summary8  = worksheet.get_Range("H25");
                Range summary9  = worksheet.get_Range("I25");
                Range summary10 = worksheet.get_Range("J25");
                Range summary11 = worksheet.get_Range("K25");
                Range summary12 = worksheet.get_Range("L25");
                Range summary13 = worksheet.get_Range("M25");
                Range summary14 = worksheet.get_Range("N25");
                Range summary15 = worksheet.get_Range("O25");
                Range summary16 = worksheet.get_Range("P25");
                Range summary17 = worksheet.get_Range("Q25");
                Range summary18 = worksheet.get_Range("R25");
                Range summary19 = worksheet.get_Range("S25");
                Range summary20 = worksheet.get_Range("T25");
                Range summary21 = worksheet.get_Range("U25");
                Range summary22 = worksheet.get_Range("V25");
                Range summary23 = worksheet.get_Range("W25");
                Range summary24 = worksheet.get_Range("X25");
                Range summary25 = worksheet.get_Range("Y25");
                Range summary26 = worksheet.get_Range("Z25");
                Range summary27 = worksheet.get_Range("AA25");
                Range summary28 = worksheet.get_Range("AB25");
                Range summary29 = worksheet.get_Range("AC25");
                Range summary30 = worksheet.get_Range("AD25");
                Range summary31 = worksheet.get_Range("AE25");
                Range summary32 = worksheet.get_Range("AF25");
                Range summary33 = worksheet.get_Range("AG25");
                Range summary34 = worksheet.get_Range("AH25");
                Range summary35 = worksheet.get_Range("AI25");
                Range summary36 = worksheet.get_Range("AJ25");
                Range summary37 = worksheet.get_Range("AK25");




                summary1.Value = "分支机构合计";
                summary2  .Formula = "=Sum(B5:B24)";
                summary3.  Formula = "=Sum(C5:C24)";
                summary4.  Formula = "=Sum(D5:D24)/1900*100";
                summary5.  Formula = "=Sum(E5:E24)";
                summary6.  Formula = "=Sum(F5:F24)";
                summary7.  Formula = "=Sum(G5:G24)/1900*100";
                summary8.  Formula = "=Sum(H5:H24)";
                summary9.  Formula = "=Sum(I5:I24)";
                summary10. Formula = "=Sum(J5:J24)/1900*100";
                summary11. Formula = "=Sum(K5:K24)";
                summary12. Formula = "=Sum(L5:L24)";
                summary13. Formula = "=Sum(M5:M24)/1900*100";
                summary14. Formula = "=Sum(N5:N24)";
                summary15. Formula = "=Sum(O5:O24)";
                summary16. Formula = "=Sum(P5:P24)/1900*100";
                summary17. Formula = "=Sum(Q5:Q24)";
                summary18. Formula = "=Sum(R5:R24)";
                summary19. Formula = "=Sum(S5:S24)/1900*100";
                summary20. Formula = "=Sum(T5:T24)";
                summary21. Formula = "=Sum(U5:U24)";
                summary22. Formula = "=Sum(V5:V24)/1900*100";
                summary23. Formula = "=Sum(W5:W24)";
                summary24. Formula = "=Sum(X5:X24)";
                summary25. Formula = "=Sum(Y5:Y24)/1900*100";
                summary26. Formula = "=Sum(Z5:Z24)";
                summary27. Formula = "=Sum(AA5:AA24)";
                summary28. Formula = "=Sum(AB5:AB24)/1900*100";
                summary29. Formula = "=Sum(AC5:AC24)";
                summary30. Formula = "=Sum(AD5:AD24)";
                summary31. Formula = "=Sum(AE5:AE24)/1900*100";
                summary32. Formula = "=Sum(AF5:AF24)";
                summary33. Formula = "=Sum(AG5:AG24)";
                summary34. Formula = "=Sum(AH5:AH24)/1900*100";
                summary35. Formula = "=Sum(AI5:AI24)";
                summary36. Formula = "=Sum(AJ5:AJ24)";
                summary37. Formula = "=Sum(AK5:AK24)/1900*100";

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
                Range range = worksheet.get_Range("A5");
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
