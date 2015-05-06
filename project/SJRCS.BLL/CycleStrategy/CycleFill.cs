using SJRCS.BLL.Interface;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace SJRCS.BLL
{
    internal class CycleFill
    {
        internal virtual bool ExcuteFillStatus(dynamic table, DateTime currentTime, IRCS_TablesBLL bll)
        {
            return true;
        }

        protected int CheckNowIsDayOfWeek()
        {
            return DateTime.Now.DayOfWeek == DayOfWeek.Sunday ? 7 : (int)DateTime.Now.DayOfWeek;
        }

        /// <summary>
        /// 检查现在是否是季度第第几个月
        /// </summary>
        protected bool CheckCurrentQuarter(int quarterOfMonth)
        {
            int month = DateTime.Now.Month;
            int num = month % 3;
            if (num == 0)
            {
                return 3 == quarterOfMonth;
            }
            return num == quarterOfMonth;
        }
    }
}