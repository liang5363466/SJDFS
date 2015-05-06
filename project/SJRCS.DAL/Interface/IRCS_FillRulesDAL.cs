using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    public interface IRCS_FillRulesDAL
    {
        /// <summary>
        /// 根据表样Id,获取该表样已设置的上报用户
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>已设置的上报用户</returns>
        IEnumerable<dynamic> GetRuleUsersByTableId(long tableId);


        /// <summary>
        /// 为表样设置上报用户
        /// <para>0：设置失败 1：设置成功</para>
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <param name="tableId">表样Id</param>
        /// <returns>设置结果</returns>
        int SetFillUser(string userId, long tableId);


        /// <summary>
        /// 移除一个表样的上报用户
        /// <para>1：移除成功 0：移除失败</para>
        /// </summary>
        /// <param name="userId">用户Id</param>
        /// <param name="tableId">表样Id</param>
        /// <returns>移除结果</returns>
        int RemoveFillUser(string userId, long tableId);

        /// <summary>
        /// 根据表样Id删除表样设置数据
        /// <para>1：删除成功 0：删除失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>删除结果</returns>
        int DeleteFillRulesByTableId(long tableId);
    }
}
