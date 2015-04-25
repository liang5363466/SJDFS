using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000004 : ITable_SJDFS
    {
        #region 表头信息
        string[] _headInfos = 
        {
            "单位/部门名称",
            "应开展效果评价次数",
            "实际开展效果评价次数",
            "效果评价率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）",
            "次数",
            "合格次数",
            "合格率（%）"
        }; 
        #endregion

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
