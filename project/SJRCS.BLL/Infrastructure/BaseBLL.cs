using SJRCS.BLL.Interface;
using SJRCS.Common;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace SJRCS.BLL.Infrastructure
{
    public class BaseBLL
    {
        protected void CycleFillObserver(IRCS_TablesBLL bll) 
        {
            CycleTableObserver(bll);
            TempTableObserver(bll);
        }

        #region 表样监视
        /// <summary>
        /// 周期表样监视
        /// </summary>
        /// <param name="bll"></param>
        private void CycleTableObserver(IRCS_TablesBLL bll)
        {
            IEnumerable<Dynamic> cycleTables = bll.GetAllPublishedTablesByType(RCS_TableType.Cycle);
            foreach (dynamic tableItem in cycleTables)
            {
                CycleFill cycleFill = null;
                int cycleType = Convert.ToInt32(tableItem.CycleType);
                if (cycleType == RCS_CycleType.Week)
                    cycleFill = new CycleWeekFill();
                else if (cycleType == RCS_CycleType.Month)
                    cycleFill = new CycleMonthFill();
                else if (cycleType == RCS_CycleType.Quarter)
                    cycleFill = new CycleQuarterFill();
                else
                    cycleFill = new CycleYearFill();
                cycleFill.ExcuteFillStatus(tableItem, DateTime.Now, bll);
            }
        }

        /// <summary>
        /// 临时表样监视
        /// </summary>
        /// <param name="bll"></param>
        private void TempTableObserver(IRCS_TablesBLL bll)
        {
            IEnumerable<Dynamic> tempTables = bll.GetAllPublishedTablesByType(RCS_TableType.Temp);
            DateTime currentTime = DateTime.Now;
            foreach (dynamic tableItem in tempTables)
            {
                long tableId = Convert.ToInt64(tableItem.TableId);
                DateTime tempStart = DateTime.Parse(tableItem.TempStart);
                DateTime tempEnd = DateTime.Parse(tableItem.TempEnd);
                tempEnd = tempEnd.AddHours(23).AddMinutes(59).AddSeconds(59).AddMilliseconds(999);
                if (currentTime <= tempEnd && currentTime >= tempStart)
                    bll.SetTableIsInCycle(tableId, RCS_IsInCycle.True);
                else
                    bll.SetTableIsInCycle(tableId, RCS_IsInCycle.False);
            }
        } 
        #endregion
    }
}