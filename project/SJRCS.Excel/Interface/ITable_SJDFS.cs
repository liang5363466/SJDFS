using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    public interface ITable_SJDFS
    {

        /// <summary>
        /// 获取表头信息
        /// </summary>
        /// <returns></returns>
        ICollection<Dynamic> GetTableHeadInfos();

        /// <summary>
        /// 分析用户在线填报的数据
        /// </summary>
        /// <param name="filePath">文件上传保存的路径</param>
        /// <returns>数据表格</returns>
        DataTable AnalyseOlFillData(string filePath);

        /// <summary>
        /// 外部填写好的Excel数据导入处理
        /// </summary>
        /// <param name="filePath">文件上传保存的路径</param>
        /// <returns>数据表格</returns>
        DataTable ExcelDataImport(string filePath);

        /// <summary>
        /// 汇总导出的数据
        /// </summary>
        /// <param name="data">数据表格</param>
        /// <returns>汇总数据服务器保存路径</returns>
        string ExportSummaryData(DataTable data);
    }
}
