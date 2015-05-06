using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    /// <summary>
    /// 分析导入文件格式
    /// </summary>
    public class AnalyseImportFile : AnalyseExcel
    {
        /// <summary>
        /// 校验表样数据导入表格结构
        /// <para>1：成功，0：失败，-1：导入表格无数据</para>
        /// </summary>
        /// <param name="importFile">数据表文件</param>
        /// <param name="tablefile">表样文件</param>
        /// <param name="headInfos">表头集合</param>
        /// <returns>校验结果 1：成功，0：失败，-1：导入表格无数据</returns>
        public int CheckImportFileStrut(string importFile, string tablefile, IEnumerable<Dynamic> headInfos)
        {
            Application importFileApp = new ApplicationClass() { Visible = false, DisplayAlerts = false };
            Application tableFileApp = new ApplicationClass() { Visible = false, DisplayAlerts = false };
            try
            {
                Workbook importWookBook = importFileApp.Workbooks.Open(
                    importFile, miss, miss, miss
                   , miss, miss, miss
                   , miss, miss, miss
                   , miss, miss, miss
                   , miss, miss
                );
                Workbook tableWookBook = tableFileApp.Workbooks.Open(
                    tablefile, miss, miss, miss
                   , miss, miss, miss
                   , miss, miss, miss
                   , miss, miss, miss
                   , miss, miss
                );
                Worksheet importSheet = importWookBook.Sheets[1] as Worksheet;
                Worksheet tableSheet = tableWookBook.Sheets[1] as Worksheet;
                int nullCount = 0;
                foreach (dynamic headItem in headInfos)
                {
                    Range importCell = importSheet.Cells[headItem.POINTX, headItem.POINTY];
                    Range tableCell = tableSheet.Cells[headItem.POINTX, headItem.POINTY];
                    Range dataCell = importSheet.Cells[headItem.POINTX + 1, headItem.POINTY];
                    bool cellIsTrue = importCell.Text.ToString() == tableCell.Text.ToString();
                    bool cellIsNull = dataCell.Text.ToString().Trim().Length == 0;
                    if (!cellIsTrue) return 0;
                    if (cellIsNull) nullCount++;
                }
                if (nullCount == headInfos.Count()) return -1;
            }
            catch (Exception e)
            {
                throw new Exception("数据结构校验失败", e);
            }
            finally
            {
                importFileApp.Workbooks.Close();
                importFileApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(importFileApp);
                importFileApp = null;

                tableFileApp.Workbooks.Close();
                tableFileApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(tableFileApp);
                tableFileApp = null;
                GC.Collect();
            }
            return 1;
        }

        /// <summary>
        /// 获取数据导入数据表数据集合
        /// </summary>
        /// <param name="importFile">导入数据文件路径</param>
        /// <param name="headInfos">表头集合</param>
        /// <returns>数据集合</returns>
        public  IEnumerable<Dynamic> GetTableData(int dataStartX, int dataStartY, string importFile, IEnumerable<Dynamic> headInfos)
        {
            LinkedList<Dynamic> rowData = new LinkedList<Dynamic>();
            try
            {
                Workbook workBook = application.Workbooks.Open(
                    importFile, miss, miss, miss
                   , miss, miss, miss
                   , miss, miss, miss
                   , miss, miss, miss
                   , miss, miss
               );
                Worksheet wookSheet = workBook.Sheets[1] as Worksheet;
                int headCount = headInfos.Count();
                while (true)
                {
                    Dictionary<string, object> dataDict = new Dictionary<string, object>();
                    int nullCount = 0;
                    foreach (dynamic headItem in headInfos)
                    {
                        int pointX = Convert.ToInt32(headItem.POINTX);
                        int pointY = Convert.ToInt32(headItem.POINTY);
                        Range checkCell = wookSheet.Cells[dataStartX, pointY] as Range;
                        if (checkCell.Value == null) nullCount += 1;

                        string columnName = headItem.CODE.ToString();
                        Range dataCell = wookSheet.Cells[dataStartX, pointY] as Range;
                        dataDict.Add(columnName, dataCell.Text);
                    }
                    if (nullCount == headCount) break;
                    rowData.AddLast(new Dynamic(dataDict));
                    dataStartX += 1;
                }
            }
            catch (Exception e)
            {
                throw new Exception("数据导入失败", e);
            }
            finally
            {
                Dispose();
            }
            return rowData;
        }

    }
}
