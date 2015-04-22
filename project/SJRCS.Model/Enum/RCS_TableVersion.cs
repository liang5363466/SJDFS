using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Model
{
    /// <summary>
    /// 上报表格的版本，老版本采用上报和导出模板各一份，新版本就一份上报模板
    /// </summary>
    public class RCS_TableVersion
    {
        /// <summary>
        /// 老版本
        /// </summary>
        public static readonly int Old = 0;
        /// <summary>
        /// 新版本
        /// </summary>
        public static readonly int New = 1;
    }
}
