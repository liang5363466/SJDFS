using Devart.Data.Oracle;
using SJRCS.Common;
using SJRCS.DAL.Infrastructure;
using SJRCS.DAL.Interface;
using SJRCS.DALProfile;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL
{
    public class RCS_UserDAL : BaseDAL, IRCS_UserDAL
    {
        private IRCS_FillRulesDAL fillRuleDal;
        private IRCS_PowerDAL powerDal;
        private IRCS_ContactsDAL contactsDal;

        #region Constructor
        public RCS_UserDAL()
            : base(DBConfig.JYJYDW_DB)
        {
            fillRuleDal = new RCS_FillRulesDAL();
            powerDal = new RCS_PowerDAL();
            contactsDal = new RCS_ContactsDAL();
        }
        public RCS_UserDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion

        public dynamic UserLogin(string userId)
        {
            string sql = 
            @"Select a.*,b.ORG_NAME  
            From T_UserInfo a left join T_OrgInfo b  
            on a.Org_Id = b.Org_Code 
            where User_Id = :UserId";
            OracleParameter[] parameters = { 
                new OracleParameter(":UserId",userId) 
            };
            object userObject = ExecuteScalar(CommandType.Text, sql, parameters, true);
            bool userIsExists = userObject != null;
            if (userIsExists)
            {
                dynamic userObj = ExecuteObjects(CommandType.Text, sql, parameters, true).Single<dynamic>();
                userObj.POWERS = powerDal.GetUserPowers(userId);
                return userObj;
            }
            return null;
        }


        public IEnumerable<dynamic> GetTableOrgUsers(string orgId,  long tableId)
        {
            IEnumerable<dynamic> rules = fillRuleDal.GetRuleUsersByTableId(tableId).AsEnumerable<dynamic>();
            string sql = "Select * From T_UserInfo Where Org_Id = :OrgId";
            OracleParameter[] parameters = { 
                 new OracleParameter(":OrgId",orgId) 
            };
            IEnumerable<dynamic> orgUsers = ExecuteObjects(CommandType.Text, sql, parameters, true).AsEnumerable<dynamic>();
            return
            orgUsers.Select((a) =>{
                a.ISSET = rules.Where((dynamic c) => c.REPORTER == a.USER_ID).Count() > 0;
                return a;
            }).
            OrderBy((c) => { dynamic d = c; return d.ISSET; })
            .AsEnumerable<dynamic>();
        }


        public IEnumerable<dynamic> GetFillUsers(long tableId)
        {
            IEnumerable<dynamic> reporters = fillRuleDal.GetRuleUsersByTableId(tableId);
            string sql = "Select * From T_UserInfo";
            IEnumerable<dynamic> users = ExecuteObjects(CommandType.Text, sql, null, true);
            return
            reporters.Join(
                users,
                (a) =>  a.REPORTER,
                (b) =>  b.USER_ID,
                (a, b) => { a.DISPLAY_NAME = b.DISPLAY_NAME; return a; }
            ).AsEnumerable<dynamic>();
        }


        public IEnumerable<dynamic> GetOrgUsers(string userId, string orgCode, int pageIndex, int pageSize, out int pageCount, out int recordCount)
        {
            string allFields = "a.*";
            string tableAndWhere = "T_UserInfo a Where a.Org_Id = '"+orgCode+"' ";
            string indexField = "rownum ";
            string orderByField = "Order by rownum ";
            IEnumerable<dynamic> deptUsers = ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount, true);
            IEnumerable<dynamic> userContacts = contactsDal.GetUserAllContacts(userId);
            return deptUsers.Select(c => {
                c.ISSET = userContacts.Where(d => d.CONTACT_ID == c.USER_ID).Count() > 0;
                return c;
            }).AsEnumerable<dynamic>().OrderBy(c => c.ISSET);
        }

        public dynamic GetUserByUserId(string userId)
        {
            if (string.IsNullOrEmpty(userId)) return null;
            string sql = "Select * From T_UserInfo Where User_Id = :UserId ";
            OracleParameter[] parameters = { 
                 new OracleParameter(":UserId",userId) 
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, false).FirstOrDefault<dynamic>();
        }

        public IEnumerable<dynamic> GetALlUsers()
        {
            string sql = "Select * From T_UserInfo";
            return ExecuteObjects(CommandType.Text, sql, null, true);
        }
    }
}
