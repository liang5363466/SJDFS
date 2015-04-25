using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000006 : ITable_SJDFS
    {
        string[] _headInfos = 
        { 
            "单位/部门名称",
            "抽查签发卫生处理通知书（份）",
            "抽查发现存在问题或签发不规范的卫生处理通知书数（份）",
            "单证合格率（%）",
            "总数",
            "存在问题或填写不规范数量",
            "总数",
            "存在问题或填写不规范数量",
            "总数",
            "存在问题或填写不规范数量",
            "总数（份）",
            "存在问题或填写不规范数量",
            "合格率（%）"
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
