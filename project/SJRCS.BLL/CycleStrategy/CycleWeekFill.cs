using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SJRCS.BLL;
using SJRCS.Common;
using SJRCS.BLL.Interface;
using SJRCS.Model;
namespace SJRCS.BLL
{
    internal class CycleWeekFill : CycleFill
    {
        internal override bool ExcuteFillStatus(dynamic table, DateTime currentTime, IRCS_TablesBLL bll)
        {
            long tableId = Convert.ToInt64(table.TableId);
            int dayOfWeek = CheckNowIsDayOfWeek();
            int weekStart = Convert.ToInt32(table.CycleWeekStart);
            int weekEnd = Convert.ToInt32(table.CycleWeekEnd);
            if (dayOfWeek <= weekEnd && dayOfWeek >= weekStart)
                return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.True);
            else
                return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.False);
        }
    }
}