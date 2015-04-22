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
    public class RCS_DeptBLL : BaseBLL, IRCS_DeptBLL
    {
        private IRCS_DeptDAL dal;
        public RCS_DeptBLL(IRCS_DeptDAL dal)
        {
            this.dal = dal;
        }

        public IEnumerable<dynamic> GetAllOrgInfos()
        {
            return dal.GetAllOrgInfos();
        }
    }
}
