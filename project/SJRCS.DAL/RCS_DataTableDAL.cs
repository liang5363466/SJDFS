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
    public class RCS_DataTableDAL : BaseDAL, IRCS_DataTableDAL
    {
        #region Constractor
        public RCS_DataTableDAL()
        {

        }

        public RCS_DataTableDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion

        public int CreateDataTable(IEnumerable<Dynamic> headInfos,string dataTableName)
        {
            string checkExistsSql = string.Format("Select Table_Name From User_Tables Where Table_Name = '{0}'", dataTableName);
            bool isExists = ExecuteScalar(CommandType.Text, checkExistsSql, null, false) == null ? false : true;
            int executeResult = 0;
            if (!isExists)
            {
                #region 创建数据存放表
                StringBuilder createSql = new StringBuilder();
                createSql.AppendLine("Create Table " + dataTableName+" (");
                createSql.AppendLine("Id Number(19) not null,");
                foreach (dynamic headItem in headInfos)
                {
                    createSql.AppendLine(headItem.Code + " varchar2(2000),");
                }
                createSql.AppendLine("Audit_Id Number(19)");
                createSql.AppendLine(")");
                executeResult += ExecuteNonQuery(CommandType.Text, createSql.ToString(), null, false);
                #endregion

                #region 创建主键
                string primarySql = string.Format(
                @"alter table {0}
                  add constraint {1}_PK primary key (ID)
                  using index
                  tablespace USERS
                  pctfree 10
                  initrans 2
                  maxtrans 255",
                dataTableName, dataTableName);
                executeResult += ExecuteNonQuery(CommandType.Text, primarySql, null, false);
                #endregion

                #region 创建Sequence
                string sequenceSql = string.Format(
                 @"Create Sequence S_{0}
                  minvalue 1
                  maxvalue 999999999999999999999999999
                  start with 1
                  increment by 1
                  cache 20"
                 , dataTableName);
                executeResult += ExecuteNonQuery(CommandType.Text, sequenceSql, null, false);
                #endregion
            }
            return executeResult;
        }

        public IEnumerable<Dynamic> GetUserCommitData(long auditId)
        {
            string dataTableName = GetDataTableNameByTableId(auditId);
            string sql = "Select * from " + dataTableName + " Where Audit_Id = :auditId";
            OracleParameter[] parameters = {
                new OracleParameter(":auditId", auditId)};
            return ExecuteObjects(CommandType.Text, sql, parameters, false);
        }

        public int SaveUserCommitData(string tableName, IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> datas)
        {
            int executeResult = 0;
            foreach (Dynamic item in datas)
            {
                Dictionary<string, object> values = item.Data;
                long nextDataId = GetNextId(tableName);
                List<OracleParameter> parameters = new List<OracleParameter>();
                parameters.Add(new OracleParameter(":Id", nextDataId));
                string sqlPara = "";
                foreach (dynamic headItem in headInfos)
                {
                    sqlPara += string.Format(":{0},", headItem.CODE);
                    parameters.Add(new OracleParameter(":" + headItem.CODE, values[headItem.CODE]));
                }
                StringBuilder sql = new StringBuilder();
                sql.AppendLine("Insert Into " + tableName);
                sql.AppendLine("Values");
                sql.AppendLine("(:Id," + sqlPara + ":AuditId)");
                parameters.Add(new OracleParameter(":AuditId", values["AuditId"]));
                executeResult += ExecuteNonQuery(CommandType.Text, sql.ToString(), parameters.ToArray<OracleParameter>(), false);
            }
            return executeResult;
        }

        public int DeleteDataTableByName(string dataTableName)
        {
            string sql = string.Format("Drop Table {0}", dataTableName);
            ExecuteNonQuery(CommandType.Text, sql, null, false);
            sql = string.Format("Drop Sequence {0}", "S_"+dataTableName);
            return ExecuteNonQuery(CommandType.Text, sql, null, false);
        }

        public int DeleteDataByAuditId(long auditId)
        {
            string dataTableName = GetDataTableNameByAuditId(auditId);
            string sql = string.Format("Delete From {0} Where Audit_Id = :AuditId",dataTableName);
            OracleParameter[] parameters = {
                new OracleParameter(":AuditId",auditId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }
    }
}
