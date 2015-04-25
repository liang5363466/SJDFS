using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000003 : ITable_SJDFS
    {
        #region 表头信息
        HeadInfo[] _headInfos = 
        {
            new HeadInfo("使用药品名称",4,1),
            new HeadInfo("计量单位(升/吨/公斤)",4,2),
            new HeadInfo("药品实际使用总量（查药品台帐）",4,3),
            new HeadInfo("标准单位用药量(g/m3)（仅熏蒸剂）",4,4),
            new HeadInfo("理论处理数(艘次)",4,5),
            new HeadInfo("实际处理数(艘次)",4,6),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,7),
            new HeadInfo("药品实际使用量小计",4,8),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,9),
            new HeadInfo("理论处理数(架次)",4,10),
            new HeadInfo("实际处理数(架次)",4,11),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,12),
            new HeadInfo("药品实际使用量小计",4,13),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,14),
            new HeadInfo("理论处理数(列)",4,15),
            new HeadInfo("实际处理数(列)",4,16),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,17),
            new HeadInfo("药品实际使用量小计",4,18),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,19),
            new HeadInfo("理论处理数(辆)",4,20),
            new HeadInfo("实际处理数(辆)",4,21),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",4,22),
            new HeadInfo("药品实际使用量小计",4,23),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",4,24),
           
            new HeadInfo("使用药品名称",23,1),
            new HeadInfo("计量单位(升/吨/公斤)",23,2),
            new HeadInfo("药品实际使用总量（查药品台帐）",23,3),
            new HeadInfo("标准单位用药量(重量/单位)",23,4),
            new HeadInfo("理论处理数(批次)",23,5),
            new HeadInfo("实际处理数(批次)",23,6),
            new HeadInfo("实际重量（吨）",23,7),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",23,8),
            new HeadInfo("药品实际使用量小计",23,9),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,10),
            new HeadInfo("理论处理数(批次)",23,11),
            new HeadInfo("实际处理数(批次)",23,12),
            new HeadInfo("实际重量（吨）",23,13),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",23,14),
            new HeadInfo("药品实际使用量小计",23,15),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,16),
            new HeadInfo("理论处理数(标箱)",23,17),
            new HeadInfo("实际处理数(标箱)",23,18),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）	",23,19),
            new HeadInfo("药品实际使用量小计",23,20),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,21),
            new HeadInfo("理论处理数(标箱)",23,22),
            new HeadInfo("实际处理数(标箱)",23,23),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",23,24),
            new HeadInfo("药品实际使用量小计",23,25),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",23,26),
            
            new HeadInfo("使用药品名称",43,1),
            new HeadInfo("计量单位(升/吨/公斤)",43,2),
            new HeadInfo("药品实际使用总量（查药品台帐）",43,3),
            new HeadInfo("标准单位用药量(重量/单位)",43,4),
            new HeadInfo("理论处理数(件)",43,5),
            new HeadInfo("实际处理数(件)",43,6),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",43,7),
            new HeadInfo("药品实际使用量小计	",43,8),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",	43,9),
            new HeadInfo("理论处理数(件)",43,10),
            new HeadInfo("实际处理数(件)",43,11),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",43,12),
            new HeadInfo("药品实际使用量小计	",43,13),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",43,14),
            new HeadInfo("理论处理数(单位)",43,15),
            new HeadInfo("实际处理数(单位)",43,16),
            new HeadInfo("实际对应处理量(m3)（仅熏蒸剂）",43,17),
            new HeadInfo("药品实际使用量小计",43,18),
            new HeadInfo("实际单位用药量(g/m3)（仅熏蒸剂）",43,19)
        }; 
        #endregion

        public IEnumerable<Dynamic> AnalyseOlFillData(long auditId,ICollection<Dynamic> heads,string filePath)
        {
            throw new NotImplementedException();
        }

        public void ExportSummaryData(IEnumerable<Dynamic> heads, IEnumerable<Dynamic> data, string fillTemplate,string exportPath)
        {
            throw new NotImplementedException();
        }

        public ICollection<Dynamic> GetTableHeadInfos()
        {
            ICollection<Dynamic> heads = new LinkedList<Dynamic>();
            for (int i = 0, l = _headInfos.Length; i < l; i++)
            {
                dynamic headInfo = new Dynamic();
                headInfo.Name = _headInfos[i].Name;
                headInfo.Code = Utils.GenerateTableHeadCode();
                headInfo.Type = 0;
                headInfo.PointX = _headInfos[i].PointX;
                headInfo.PointY = _headInfos[i].PointY;

                heads.Add(headInfo);
            }
            return heads;
        }


        public string InitializeFillTable(dynamic tableInfo, SessionUser user)
        {
            throw new NotImplementedException();
        }


        public string PreviewAuditedData(IEnumerable<Dynamic> heads, IEnumerable<Dynamic> datas, string templatePath)
        {
            throw new NotImplementedException();
        }
    }
}
