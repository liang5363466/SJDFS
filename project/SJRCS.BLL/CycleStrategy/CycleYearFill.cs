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
    internal class CycleYearFill : CycleFill
    {
        internal override bool ExcuteFillStatus(dynamic table, DateTime currentTime, IRCS_TablesBLL bll)
        {
            long tableId = Convert.ToInt64(table.TableId);

            DateTime yearStart = DateTime.Parse(table.CycleYearStart);
            DateTime yearEnd = DateTime.Parse(table.CycleYearEnd);
            yearStart = new DateTime(currentTime.Year, yearStart.Month, yearStart.Day);
            yearEnd = new DateTime(currentTime.Year, yearEnd.Month, yearEnd.Day);

            if (currentTime <= yearEnd && currentTime >= yearStart)
                return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.True);
            else
                return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.False);
        }
    }
}