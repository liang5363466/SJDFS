using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Model
{
    /// <summary>
    /// 数据审核状态
    /// </summary>
    public class RCS_AuditStatus
    {
        /// <summary>
        /// 未提交
        /// </summary>
        public static readonly int UnCommit = 0;

        /// <summary>
        /// 未审核
        /// </summary>
        public static readonly int UnAudit = -1;

        /// <summary>
        /// 已审核
        /// </summary>
        public static readonly int Audited = 1;

        /// <summary>
        /// 未通过
        /// </summary>
        public static readonly int UnPass = 2;
    }
}
