using Devart.Data.Oracle;
using SJRCS.Common;
using SJRCS.DAL.Infrastructure;
using SJRCS.DAL.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL
{
    public class RCS_FillRulesDAL : BaseDAL, IRCS_FillRulesDAL
    {
        #region Constractor
        public RCS_FillRulesDAL()
        {

        }

        public RCS_FillRulesDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion

        public IEnumerable<dynamic> GetRuleUsersByTableId(long tableId)
        {
            string sql = "Select a.Table_Id,a.Reporter From Rcs_FillRules a Where a.Table_Id=:tableId";
            OracleParameter[] parameters = { 
                new OracleParameter(":tableId",tableId) 
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, true);
        }


        public int SetFillUser(string userId, long tableId)
        {
            string sql = "Insert Into Rcs_FillRules Values(:RuleId,:TableId,:Reporter)";
            long ruleId = GetNextId("Rcs_FillRules");
             OracleParameter[] parameters = { 
                 new OracleParameter(":RuleId",ruleId) 
                ,new OracleParameter(":TableId",tableId) 
                ,new OracleParameter(":Reporter",userId) 
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }




        public int RemoveFillUser(string userId, long tableId)
        {
            string sql = "Delete From Rcs_FillRules Where Reporter = :Reporter And Table_Id = :TableId";
            OracleParameter[] parameters = { 
                 new OracleParameter(":Reporter",userId) 
                ,new OracleParameter(":TableId",tableId) 
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public int DeleteFillRulesByTableId(long tableId)
        {
            string sql = "Delete From Rcs_FillRules Where Table_Id = :tableId";
            OracleParameter[] parameters = { 
                new OracleParameter(":tableId",tableId) 
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }
    }
}
