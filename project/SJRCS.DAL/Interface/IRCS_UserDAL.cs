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
    /// 用户操作数据访问接口
    /// </summary>
    public interface IRCS_UserDAL
    {
        /// <summary>
        /// 获取所有用户
        /// </summary>
        /// <returns>用户列表</returns>
        IEnumerable<dynamic> GetALlUsers();

        /// <summary>
        /// 根据用户id获取用户对象
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <returns>用户对象</returns>
        dynamic GetUserByUserId(string userId);

        /// <summary>
        /// 根据部门Id获取部门下的所有用户
        /// </summary>
        /// <param name="orgCode"></param>
        /// <param name="pageSize"></param>
        /// <param name="pageCount"></param>
        /// <param name="recordCount"></param>
        /// <returns></returns>
        IEnumerable<dynamic> GetOrgUsers(string userId, string orgCode, int pageIndex, int pageSize, out int pageCount, out int recordCount);

        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="userId">用户Id</param>
        /// <returns>用户对象实体</returns>
        dynamic UserLogin(string userId);

        /// <summary>
        /// 根据部门id和表样Id获取该部门下未设置和已设置上报的员工
        /// </summary>
        /// <param name="orgId">组织Id</param>
        /// <param name="tableId">表样Id</param>
        /// <returns>部门下员工</returns>
        IEnumerable<dynamic> GetTableOrgUsers(string orgId,long tableId);

        /// <summary>
        /// 根据部门Id且或表样id，获取上报用户
        /// <para>上报用户列表</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <param name="deptId">部门Id</param>
        /// <returns>上报用户列表</returns>
        IEnumerable<dynamic> GetFillUsers(long tableId);

    }
}
