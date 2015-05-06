using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SJRCS.BLL;
using SJRCS.Common;
using SJRCS.Model;
using SJRCS.BLL.Interface;

namespace SJRCS.BLL
{
    internal class CycleQuarterFill : CycleFill
    {
        internal override bool ExcuteFillStatus(dynamic table, DateTime currentTime, IRCS_TablesBLL bll)
        {
            int quaterNum = Convert.ToInt32(table.CycleQuarter);
            long tableId = Convert.ToInt64(table.TableId);
            bool isQuarterNum = CheckCurrentQuarter(quaterNum);
            if (isQuarterNum)
            {
                int dayOfMonth = currentTime.Day;
                int quarterStart = Convert.ToInt32(table.CycleQuarterStart);
                int quarterEnd = Convert.ToInt32(table.CycleQuarterEnd);
                if (dayOfMonth >= quarterStart && dayOfMonth <= quarterEnd)
                    return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.True);
                else
                    return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.False);
            }
            return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.False);
        }
    }
}