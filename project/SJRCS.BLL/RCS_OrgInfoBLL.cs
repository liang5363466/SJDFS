using SJRCS.BLL.Infrastructure;
using SJRCS.BLL.Interface;
using SJRCS.Common;
using SJRCS.DAL.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL
{
    public class RCS_OrgInfoBLL : BaseBLL, IRCS_OrgInfoBLL
    {
        private IRCS_OrgInfoDAL dal;
        public RCS_OrgInfoBLL(IRCS_OrgInfoDAL dal)
        {
            this.dal = dal;
        }

        public IEnumerable<dynamic> GetRootOrgInfo()
        {
            return dal.GetRootOrgInfo();
        }


        public IEnumerable<dynamic> GetChildOrgInfos(string parentCode)
        {
            return dal.GetChildOrgInfos(parentCode);
        }
    }
}
