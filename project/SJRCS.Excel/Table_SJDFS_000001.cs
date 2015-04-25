using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
namespace SJRCS.Excel
{
    public class Table_SJDFS_000001 : ITable_SJDFS
    {
        string [] _headInfos = 
        {
            "单位/部门名称",
            "辖区卫生处理单位数量（家）",
            "辖区卫生处理单位数量（家）",
            "应监管次数",
            "实际监管次数",
            "监管率（%）",
            "良好/合格",
            "合格/限期整改",
            "不合格/停业整顿",
            "合格级以上",
            "监管合格率（%）",
            "合格",
            "限期整改",
            "监管合格率（%）"
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
