using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 部门操作数据访问接口
    /// </summary>
    public interface IRCS_DeptDAL
    {
        /// <summary>
        /// 获取所有组织信息
        /// </summary>
        /// <returns>所有组织信息</returns>
        IEnumerable<dynamic> GetAllOrgInfos();
    }
}
