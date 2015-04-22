using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL.Interface
{
    public interface IRCS_UserBLL
    {
        IEnumerable<dynamic> GetTableOrgUsers(string orgId,long tableId);
        IEnumerable<dynamic> GetOrgUsers(string userId, string orgCode, int pageIndex, int pageSize, out int pageCount, out int recordCount);
        IEnumerable<dynamic> GetFillUsers(long tableId);
        dynamic UserLogin(string userId);
    }
}
