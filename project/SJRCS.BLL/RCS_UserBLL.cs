using SJRCS.BLL.Infrastructure;
using SJRCS.BLL.Interface;
using SJRCS.Common;
using SJRCS.DAL;
using SJRCS.DAL.Interface;
using SJRCS.DALProfile;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL
{

    public class RCS_UserBLL : BaseBLL, IRCS_UserBLL
    {
        private IRCS_UserDAL dal;
        public RCS_UserBLL(IRCS_UserDAL dal)
        {
            this.dal = dal;
        }

        public IEnumerable<dynamic> GetTableOrgUsers(string orgId, long tableId)
        {
            return dal.GetTableOrgUsers(orgId, tableId);
        }

        public IEnumerable<dynamic> GetFillUsers(long tableId)
        {
            return dal.GetFillUsers(tableId);
        }

        public dynamic UserLogin(string userId)
        {
            return dal.UserLogin(userId);
        }

        public IEnumerable<dynamic> GetOrgUsers(string userId, string orgCode, int pageIndex, int pageSize, out int pageCount, out int recordCount)
        {
            return dal.GetOrgUsers(userId, orgCode, pageIndex, pageSize, out  pageCount, out  recordCount);
        }
    }
}
