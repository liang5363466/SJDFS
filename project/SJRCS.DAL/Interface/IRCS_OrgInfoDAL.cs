using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 组织操作数据访问接口
    /// </summary>
    public interface IRCS_OrgInfoDAL
    {
        /// <summary>
        /// 获取一级组织信息
        /// </summary>
        /// <returns>一级组织信息</returns>
        IEnumerable<dynamic> GetRootOrgInfo();

        /// <summary>
        /// 根据父组织Id获取其下子组织
        /// </summary>
        /// <param name="parentCode">父组织代码</param>
        /// <returns>子组织</returns>
        IEnumerable<dynamic> GetChildOrgInfos(string parentCode);
    }
}
