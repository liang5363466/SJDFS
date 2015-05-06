using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Model
{
    /// <summary>
    /// 表头单元格数据类型
    /// </summary>
    public class RCS_HeadDataType
    {
        /// <summary>
        /// 文本类型
        /// </summary>
        public static readonly int Text = 1;

        /// <summary>
        /// 日期类型
        /// </summary>
        public static readonly int Date = 2;

        /// <summary>
        /// 整数类型
        /// </summary>
        public static readonly int Integer = 3;

        /// <summary>
        /// 小数类型
        /// </summary>
        public static readonly int Double = 4;

        /// <summary>
        /// 时间类型
        /// </summary>
        public static readonly int Time = 5;
    }
}
