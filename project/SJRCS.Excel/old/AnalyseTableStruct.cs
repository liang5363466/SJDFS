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
    /// 分析表样文件格式
    /// </summary>
    public class AnalyseTableStruct:AnalyseExcel
    {
        /// <summary>
        /// 根据表样文件所在服务器路径，解析表样结构
        /// <para>记录表样的表头单元格集合，以及数据单元格起始的坐标</para>
        /// </summary>
        /// <param name="filePath">表样所在服务器路径</param>
        /// <returns>表样结构信息</returns>
        public void AnalyseTableStrut(dynamic tableInfo, string filePath)
        {
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
                dynamic headInfo = AnalyseLeftTopAndRightBottom(tableInfo,worksheet);
                AnalyseTableHead(worksheet, tableInfo, headInfo);
            }
            catch (Exception e)
            {
                throw new Exception("表样解析失败", e);
            }
            finally
            {
                Dispose();
                System.IO.File.Delete(filePath);
            }
        }

        #region 表样文件信息处理
        /// <summary>
        /// 解析得到表样表头起始单元格与结束单元格坐标
        /// </summary>
        private static dynamic AnalyseLeftTopAndRightBottom(dynamic tableInfo,Worksheet worksheet)
        {
            dynamic headInfo = new Dynamic();
            headInfo.StartPoint = new Dynamic();
            headInfo.StartPoint.X = 0;
            headInfo.StartPoint.Y = 0;
            headInfo.EndPoint = new Dynamic();
            headInfo.EndPoint.X = 0;
            headInfo.EndPoint.Y = 0;
            headInfo.RowCount = 0;
            headInfo.ColumnCount = 0;

            #region 记录表头单元格开始坐标
            foreach (Range cell in worksheet.UsedRange.Cells)
            {
                if ((bool)cell.MergeCells && (cell.MergeArea.Column != cell.Column || cell.MergeArea.Row != cell.Row)) continue;
                if ((bool)cell.EntireRow.Hidden) continue;
                if ((bool)cell.EntireColumn.Hidden) continue;
                int colorIndex = int.Parse(cell.Interior.ColorIndex.ToString());
                bool bgIsHead = ColorTranslator.FromOle(Convert.ToInt32(cell.Interior.Color)) == Color.FromArgb(141, 180, 226);
                //如果单元格背景色不是白色且不是透明色那么为表头单元格
                if (bgIsHead)
                {
                    headInfo.StartPoint.X = Convert.ToInt32(cell.Row);
                    headInfo.StartPoint.Y = Convert.ToInt32(cell.Column);
                    headInfo.EndPoint.X = headInfo.StartPoint.X;
                    headInfo.EndPoint.Y = headInfo.StartPoint.Y;
                    break;
                   
                }
            }
            #endregion

            #region 记录数据起始单元格
            foreach (Range cell in worksheet.UsedRange.Cells)
            {
                if ((bool)cell.MergeCells && (cell.MergeArea.Column != cell.Column || cell.MergeArea.Row != cell.Row)) continue;
                if ((bool)cell.EntireRow.Hidden) continue;
                if ((bool)cell.EntireColumn.Hidden) continue;
                int colorIndex = int.Parse(cell.Interior.ColorIndex.ToString());
                bool bgIsDataStart = ColorTranslator.FromOle(Convert.ToInt32(cell.Interior.Color)) == Color.FromArgb(184, 204, 228);
                if (bgIsDataStart)
                {
                    tableInfo.DataStartX = cell.Row;
                    tableInfo.DataStartY = cell.Column;
                    break;
                }
            }
            #endregion

            #region 检测确定表头结束单元格的X坐标
            while (true)
            {
                headInfo.EndPoint.X += 1;
                Range testEnd = worksheet.Cells[headInfo.EndPoint.X, headInfo.EndPoint.Y] as Range;
         
                bool bgIsHead = ColorTranslator.FromOle(Convert.ToInt32(testEnd.Interior.Color)) == Color.FromArgb(141, 180, 226);
                if (!bgIsHead)
                {
                    headInfo.EndPoint.X -= 1;
                    break;
                }
            }
            #endregion

            #region 检测确定表头结束单元格的Y坐标
            while (true)
            {
                headInfo.EndPoint.Y += 1;
                Range testEnd = worksheet.Cells[headInfo.EndPoint.X, headInfo.EndPoint.Y] as Range;
                bool bgIsHead = ColorTranslator.FromOle(Convert.ToInt32(testEnd.Interior.Color)) == Color.FromArgb(141, 180, 226);
                if (!bgIsHead)
                {
                    headInfo.EndPoint.Y -= 1;
                    break;
                }
            }
            #endregion

            headInfo.RowCount = headInfo.EndPoint.X - headInfo.StartPoint.X + 1;
            headInfo.ColumnCount = headInfo.EndPoint.Y - headInfo.StartPoint.Y + 1;
            return headInfo;
        }
        private static void AnalyseTableHead(Worksheet worksheet, dynamic tableInfo, dynamic headInfo)
        {
            //tableInfo.DataStartX = headInfo.StartPoint.X + headInfo.RowCount;
            //tableInfo.DataStartY = headInfo.StartPoint.Y;
            tableInfo.HeadCollection = new List<Dynamic>();
            int rowCount = headInfo.RowCount;
            //
            for (int y = headInfo.StartPoint.Y; y <= headInfo.EndPoint.Y; y++)
            {
                Range headCell = worksheet.Cells[headInfo.EndPoint.X, y] as Range;

                bool isMerge = (bool)headCell.MergeCells; //是否合并了单元格
                //int MergeRowCount = headCell.MergeArea.Rows.Count;//合并了几行
                //int MergeColumnCount = headCell.MergeArea.Columns.Count;//合并了几列
                //int headLevel = rowCount - (x - headInfo.StartPoint.X) - MergeRowCount + 1;//确定表头等级
                if (isMerge)
                {
                    headCell = worksheet.Cells[headCell.MergeArea.Row, headCell.MergeArea.Column] as Range;
                }
                dynamic headItem = new Dynamic();
                headItem.Name = headCell.Text.ToString();
                headItem.Code = Utils.GenerateTableHeadCode();
                headItem.UniqueCode = Utils.NewGuid();
                headItem.Type = 0;
                headItem.PointX = headCell.Row;
                headItem.PointY = headCell.Column;
                tableInfo.HeadCollection.Add(headItem);
            }
        }
        #endregion
    }
}
