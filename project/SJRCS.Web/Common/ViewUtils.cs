using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SJRCS.Web.Common
{
    /// <summary>
    /// 视图通用方法类
    /// </summary>
    public class ViewUtils
    {
        public static string GetTableTypeDescript(dynamic tableType)
        {
            if (tableType == RCS_TableType.Free)
                return "自由上报";
            else if (tableType == RCS_TableType.Cycle)
                return "周期上报";
            else if (tableType == RCS_TableType.Temp)
                return "临时上报";
            return "";
        }

        public static string GetTablePublishStatus(dynamic tableStatus)
        {
            if (tableStatus == RCS_IsPublished.True)
            {
                return "<span style=\"color:green\">已发布</span>";
            }
            return "<span style=\"color:red\">未发布</span>";
        }

        public static string GetTableIsAllowStatus(dynamic allowStatus,dynamic isInCycle)
        {
            if (allowStatus == RCS_IsAllowReport.True && isInCycle == RCS_IsInCycle.True)
            {
                return "<span style=\"color:green\">允许上报</span>";
            }
            return "<span style=\"color:red\">禁止上报</span>";
        }

        public static string GetTableIsInCycle(dynamic isInCycle)
        {
            if (isInCycle == RCS_IsInCycle.False)
            {
                return "disabled=\"disabled\" title=\"当前表样不在上报周期内。\"";
            }
            return "";
        }
    }
}