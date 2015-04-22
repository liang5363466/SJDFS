using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    /// <summary>
    /// 自动填写组织名称
    /// </summary>
    public class AutomaticOrgName:AnalyseExcel
    {
        public string AutoFill(string filePath,string orgName)
        {
            string savePath = Const.FillTemp + Utils.NewGuid()+".xls";
            try
            {
                Workbook workBook = application.Workbooks.Open(
                    filePath, miss, miss, miss
                    , miss, miss, miss
                    , miss, miss, miss
                    , miss, miss, miss
                    , miss, miss
                );
                Worksheet worksheet = workBook.Sheets[1] as Worksheet;
                #region 遍历单元格，找到自动填写的数据单元格
                foreach (Range cell in worksheet.UsedRange.Cells)
                {
                    if ((bool)cell.MergeCells && (cell.MergeArea.Column != cell.Column || cell.MergeArea.Row != cell.Row)) continue;
                    if ((bool)cell.EntireRow.Hidden) continue;
                    if ((bool)cell.EntireColumn.Hidden) continue;
                    int colorIndex = int.Parse(cell.Interior.ColorIndex.ToString());
                    bool bgIsOrgName = ColorTranslator.FromOle(Convert.ToInt32(cell.Interior.Color)) == Color.FromArgb(149, 179, 215);
                    //如果单元格背景色不是白色且不是透明色那么为表头单元格
                    if (bgIsOrgName)
                    {
                        cell.Interior.Color = ColorTranslator.ToOle(Color.Transparent);
                        cell.Value = orgName;
                        break;
                    }
                }
                #endregion
                worksheet.SaveAs(savePath, miss
                    , miss, miss, miss, miss
                    , miss, miss, miss, miss
                );
                return savePath;
            }
            catch (Exception e)
            {
                throw new Exception("组织名称填写失败", e);
            }
            finally 
            {
                Dispose();
            }
        }
    }
}
