using SJRCS.BLL.Infrastructure;
using SJRCS.BLL.Interface;
using SJRCS.Common;
using SJRCS.DAL;
using SJRCS.DAL.Interface;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace SJRCS.BLL
{
    public class RCS_FillRulesBLL : BaseBLL, IRCS_FillRulesBLL
    {

        private IRCS_FillRulesDAL dal;
        public RCS_FillRulesBLL(IRCS_FillRulesDAL dal)
        {
            this.dal = dal;
        }

        public bool SetFillUser(string userId, long tableId)
        {
           return dal.SetFillUser(userId, tableId) > 0;
        }

        public bool RemoveFillUser(string userId, long tableId)
        {
            return dal.RemoveFillUser(userId, tableId) > 0;
        }
    }
}
