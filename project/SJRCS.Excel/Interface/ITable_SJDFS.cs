using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SJRCS.Model;

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
        /// 初始化表格填报，主要设置一些初始化填写的字段
        /// </summary>
        string InitializeFillTable(dynamic tableInfo, SessionUser user);

        /// <summary>
        /// 分析用户在线填报的数据
        /// </summary>
        IEnumerable<Dynamic> AnalyseOlFillData(long auditId,ICollection<Dynamic> heads, string filePath);

        /// <summary>
        /// 汇总导出的数据
        /// </summary>
        void ExportSummaryData(IEnumerable<Dynamic> heads, IEnumerable<Dynamic> data, string fillTemplate,string exportPath);

        /// <summary>
        /// 预览已经审核过的数据
        /// </summary>
        string PreviewAuditedData(IEnumerable<Dynamic> heads, IEnumerable<Dynamic> datas, string templatePath);
    }
}
