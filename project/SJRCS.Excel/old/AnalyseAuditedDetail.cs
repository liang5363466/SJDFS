using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    /// <summary>
    /// 解析生成已审核数据预览
    /// </summary>
    public class AnalyseAuditedDetail:AnalyseExcel
    {
        /// <summary>
        /// 生成已审核数据预览
        /// </summary>
        /// <param name="dataStartX">数据开始单元格行索引</param>
        /// <param name="dataStartY">数据开始单元格列索引</param>
        /// <param name="tablefile">表样文件路径</param>
        /// <param name="headInfos">表头信息集合</param>
        /// <param name="auditDatas">审核数据集合</param>
        /// <returns>预览文件路径</returns>
        public  string GenerateAuditedDetail(int dataStartX, int dataStartY, string tablefile, IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> auditDatas)
        {
            string auditedFileSavePath = Const.AuditedTemp + Utils.NewGuid() + ".xls";
            try
            {
                Workbook workBook = application.Workbooks.Open(
                    tablefile, miss, miss, miss
                    , miss, miss, miss
                    , miss, miss, miss
                    , miss, miss, miss
                    , miss, miss
                );
                Worksheet wookSheet = workBook.Sheets[1] as Worksheet;

                foreach (Dynamic rowItem in auditDatas)
                {
                    Dictionary<string, object> values = rowItem.Data;
                    foreach (dynamic headItem in headInfos)
                    {
                        int pointY = Convert.ToInt32(headItem.POINTY);
                        string columnName = headItem.CODE.ToString();
                        wookSheet.Cells[dataStartX, pointY] = values[columnName];
                    }
                    dataStartX += 1;
                }
                wookSheet.SaveAs(
                    auditedFileSavePath, miss
                    , miss, miss, miss, miss
                    , miss, miss, miss, miss
                );
            }
            catch (Exception e)
            {
                auditedFileSavePath = null;
                throw new Exception("生成数据预览失败", e);
            }
            finally
            {
                Dispose();
            }
            return auditedFileSavePath;
        }
    }
}
