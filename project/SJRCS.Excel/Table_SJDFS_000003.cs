using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000003 : ITable_SJDFS
    {
        #region 表头信息
        string[] _headInfos = 
        {
            "使用药品名称",
            "计量单位(升/吨/公斤)",
            "药品实际使用总量（查药品台帐）",
            "标准单位用药量(g/m3)（仅熏蒸剂）",
            "理论处理数(艘次)",
            "实际处理数(艘次)",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计",
            "实际单位用药量(g/m3)（仅熏蒸剂）",
            "理论处理数(架次)",
            "实际处理数(架次)",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计",
            "实际单位用药量(g/m3)（仅熏蒸剂）",
            "理论处理数(列)",
            "实际处理数(列)",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计",
            "实际单位用药量(g/m3)（仅熏蒸剂）",
            "理论处理数(辆)",
            "实际处理数(辆)",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计",
            "实际单位用药量(g/m3)（仅熏蒸剂）",

            "使用药品名称",
            "计量单位(升/吨/公斤)",
            "药品实际使用总量（查药品台帐）",
            "标准单位用药量(重量/单位)",
            "理论处理数(批次)",
            "实际处理数(批次)",
            "实际重量（吨）",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计",
            "实际单位用药量(g/m3)（仅熏蒸剂）",
            "理论处理数(批次)",
            "实际处理数(批次)",
            "实际重量（吨）",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计",
            "实际单位用药量(g/m3)（仅熏蒸剂）",
            "理论处理数(标箱)",
            "实际处理数(标箱)",
            "实际对应处理量(m3)（仅熏蒸剂）	",
            "药品实际使用量小计	",
            "实际单位用药量(g/m3)（仅熏蒸剂）	",
            "理论处理数(标箱)",
            "实际处理数(标箱)",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计	",
            "实际单位用药量(g/m3)（仅熏蒸剂）",

            "使用药品名称",
            "计量单位(升/吨/公斤)",
            "药品实际使用总量（查药品台帐）",
            "标准单位用药量(重量/单位)",
            "理论处理数(件)",
            "实际处理数(件)",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计	",
            "实际单位用药量(g/m3)（仅熏蒸剂）",	
            "理论处理数(件)	",
            "实际处理数(件)	",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计	",
            "实际单位用药量(g/m3)（仅熏蒸剂）",
            "理论处理数(单位)",
            "实际处理数(单位)",
            "实际对应处理量(m3)（仅熏蒸剂）",
            "药品实际使用量小计",
            "实际单位用药量(g/m3)（仅熏蒸剂）"
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
