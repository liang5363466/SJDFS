using Devart.Data.Oracle;
using SJRCS.Common;
using SJRCS.DALProfile;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace SJRCS.DAL.Infrastructure
{
    public class BaseDAL : DBHelper
    {
        #region Constractor
        public BaseDAL()
        {

        }

        public BaseDAL(string connectionString)
            : base(connectionString)
        {

        }

        public BaseDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion

        protected long GetNextId(string tableName)
        {
            string seqName = ("S_" + tableName).ToUpper();
            string sql = string.Format("Select {0}.Nextval From Dual", seqName);
            return long.Parse(ExecuteScalar(CommandType.Text, sql, null, false).ToString());
        }

        protected string GetDataTableNameByTableId(long tableId)
        {
            string sql = "Select Data_Table From Rcs_Tables Where Id = :tableId";
            OracleParameter[] parameters = { 
                new OracleParameter(":tableId",tableId)
            };
            object dataTableName = ExecuteScalar(CommandType.Text, sql, parameters, false);
            return dataTableName == null ? null : dataTableName.ToString();
        }

        protected string GetDataTableNameByAuditId(long auditId)
        {
            string sql = 
            @"Select b.Data_Table 
            From Rcs_DataAudits a left join Rcs_Tables b 
            on a.Table_Id = b.Id 
            Where a.Id = :auditId";
            OracleParameter[] parameters = { 
                new OracleParameter(":auditId",auditId)
            };
            object dataTableName = ExecuteScalar(CommandType.Text, sql, parameters, false);
            return dataTableName == null ? null : dataTableName.ToString();
        }
    }
}
