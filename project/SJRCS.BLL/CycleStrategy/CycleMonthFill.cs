using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SJRCS.BLL;
using SJRCS.Common;
using SJRCS.BLL.Interface;
using SJRCS.Model;
using SJRCS.DAL.Interface;
namespace SJRCS.BLL
{
    internal class CycleMonthFill : CycleFill
    {
        internal override bool ExcuteFillStatus(dynamic table, DateTime currentTime,IRCS_TablesBLL bll)
        {
           long tableId = Convert.ToInt64(table.TableId);
           int dayOfMonth = currentTime.Day;
           int monthStart = Convert.ToInt32(table.CycleMonthStart);
           int monthkEnd = Convert.ToInt32(table.CycleMonthEnd);

           if (dayOfMonth <= monthkEnd && dayOfMonth >= monthStart)
               return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.True);
           else
               return bll.SetTableIsInCycle(tableId, RCS_IsInCycle.False);
        }
    }
}