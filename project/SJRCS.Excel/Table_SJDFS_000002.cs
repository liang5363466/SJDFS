using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Office.Interop.Excel;
using SJRCS.Common;
using SJRCS.Model;
using System.Reflection;

namespace SJRCS.Excel
{
    public class Table_SJDFS_000002 : ITable_SJDFS
    {
        int _dataStartX = 1, _dataStartY = 4;
        Application application = new ApplicationClass() { Visible = false, DisplayAlerts = false };
        object miss = Missing.Value;

        HeadInfo[] _headInfos = 
        {
            new HeadInfo("处理对象",3,1),
            new HeadInfo("卫生处理原因(依据/指证)",3,2),
            new HeadInfo("签发卫生处理通知书(份)",3,3),
            new HeadInfo("消毒",3,4),
            new HeadInfo("除鼠",3,5),
            new HeadInfo("除虫",3,6),
            new HeadInfo("其他",3,7),
            new HeadInfo("处理数量",3,8)
        };

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
