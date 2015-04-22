using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Model
{
    /// <summary>
    /// 表样上报类型
    /// </summary>
    public class RCS_TableType
    {
        /// <summary>
        /// 周期上报
        /// </summary>
        public static readonly int Cycle = 1;

        /// <summary>
        /// 自由上报
        /// </summary>
        public static readonly int Free = 2;

        /// <summary>
        /// 临时上报
        /// </summary>
        public static readonly int Temp = 3;
    }
}
