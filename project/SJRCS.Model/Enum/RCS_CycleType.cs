using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Model
{
    /// <summary>
    /// 上报周期类型
    /// </summary>
    public class RCS_CycleType
    {
        /// <summary>
        /// 按周上报
        /// </summary>
        public static readonly int Week = 1;
        /// <summary>
        /// 按月上报
        /// </summary>
        public static readonly int  Month = 2;
        /// <summary>
        /// 按季度上报
        /// </summary>
        public static readonly int  Quarter = 3;
        /// <summary>
        /// 按年上报
        /// </summary>
        public static readonly int Year = 4;
    }
}
