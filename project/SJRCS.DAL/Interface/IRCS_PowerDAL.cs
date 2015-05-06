using SJRCS.Common;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 角色操作数据访问接口
    /// </summary>
    public interface IRCS_PowerDAL
    {
        /// <summary>
        /// 根据用户id和用户所属组织id获取用户权限列表
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <returns>权限列表</returns>
        IEnumerable<dynamic> GetUserPowers(string userId);
    }
}
