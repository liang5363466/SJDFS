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
    /// 数据导出
    /// </summary>
    public class AnalyseDataExport : AnalyseExcel
    {
        /// <summary>
        /// 数据导出
        /// </summary>
        /// <param name="exportTemplatePath">导出模板保存路径</param>
        /// <param name="exportSavePath">导出文件保存路径</param>
        /// <param name="headInfos">表样表头信息集合</param>
        /// <param name="cellData">单元格数据值</param>
        public void DataExport( 
            string exportTemplatePath, 
            string exportSavePath, 
            int dataStartX, int dataStartY, 
            IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> rowData
        )
        {
            try
            {
                Workbook workBook = application.Workbooks.Open(
                    exportTemplatePath
                    , miss, miss, miss
                    , miss, miss, miss
                    , miss, miss, miss
                    , miss, miss, miss
                    , miss, miss
                );
                Worksheet wookSheet = workBook.Sheets[1] as Worksheet;
                
                //遍历行数据集合
                foreach (Dynamic rowItem in rowData)
                {
                    //行数据实体
                    Dictionary<string, object> values = rowItem.Data;

                    #region 如果当前行是合计行，则跳过
                    Range targetCell = wookSheet.Cells[dataStartX, dataStartY] as Range;
                    bool bgIsSum = ColorTranslator.FromOle(Convert.ToInt32(targetCell.Interior.Color)) == Color.FromArgb(197, 217, 241);
                    if (bgIsSum)
                    {
                        dataStartX += 1;
                        targetCell.EntireRow.Interior.Color = ColorTranslator.ToOle(Color.Transparent);
                    } 
                    #endregion

                    #region 向导出模板中插入数据
                    foreach (dynamic headItem in headInfos)
                    {
                        int pointY = Convert.ToInt32(headItem.POINTY);
                        string columnName = headItem.CODE.ToString();
                        wookSheet.Cells[dataStartX, pointY] = values[columnName];
                    } 
                    #endregion

                    dataStartX += 1;
                }
                wookSheet.SaveAs(exportSavePath, miss, miss, miss, miss, miss, miss, miss, miss, miss);
            }
            catch (Exception e)
            {
                throw new Exception("生成数据统计失败", e);
            }
            finally
            {
                Dispose();
            }
        }

    }
}
