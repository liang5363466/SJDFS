using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000002 : ITable_SJDFS
    {
        string[] _headInfos = 
        {
            "处理对象",
            "卫生处理原因(依据/指证)",
            "签发卫生处理通知书(份)",
            "消毒",
            "除鼠",
            "除虫",
            "其他",
            "处理数量"
        };

        public DataTable AnalyseOlFillData(string filePath)
        {
            throw new NotImplementedException();
        }

        public DataTable ExcelDataImport(string filePath)
        {
            throw new NotImplementedException();
        }

        public string ExportSummaryData(DataTable data)
        {
            throw new NotImplementedException();
        }

        public ICollection<Dynamic> GetTableHeadInfos()
        {
            ICollection<Dynamic> heads = new LinkedList<Dynamic>();
            for (int i = 0, l = _headInfos.Length; i < l; i++)
            {
                dynamic headInfo = new Dynamic();
                headInfo.Name = _headInfos[i];
                headInfo.Code = Utils.GenerateTableHeadCode();
                headInfo.Type = 0;
                headInfo.PointX = 0;
                headInfo.PointY = 0;

                heads.Add(headInfo);
            }
            return heads;
        }
    }
}
