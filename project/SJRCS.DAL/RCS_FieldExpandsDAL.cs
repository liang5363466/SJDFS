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
    public class RCS_FieldExpandsDAL : BaseDAL, IRCS_FieldExpandsDAL
    {
        #region Constractor
        public RCS_FieldExpandsDAL()
        {

        }

        public RCS_FieldExpandsDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion

        public int AddFieldExpand(Dynamic fieldExpand)
        {
            long tableid = GetNextId("Rcs_FieldExpands");
            dynamic expandObj = fieldExpand;
            string sql =
            @"Insert Into Rcs_FieldExpands 
                (Id,Data_Pkey,Table_Name,Code,Value)
            Values 
                (:Id,:DataPkey,:TableName,:Code,:Value)";
            OracleParameter[] parameters = { 
                 new OracleParameter(":Id",tableid)
                ,new OracleParameter(":DataPkey",expandObj.DataPkey)                    
                ,new OracleParameter(":TableName",expandObj.TableName)                  
                ,new OracleParameter(":Code",expandObj.Code)                
                ,new OracleParameter(":Value",expandObj.Value)                
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }

        public int DeleteFieldExpandByDataId(long dataId)
        {
            string sql = "Delete From Rcs_FieldExpands Where Id = :dataId";
            OracleParameter[] parameters = {
                new OracleParameter(":dataId", dataId)};
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }

        public int UpdateFieldExpandByDataId(Dynamic fieldExpand)
        {
            dynamic expandObj = fieldExpand;
            string sql =
            @"Update Rcs_FieldExpands Set 
                  Data_Pkey=:DataPkey
                 ,Table_Name=:TableName
                 ,Code=:Code
                 ,Value=:Value
              Where Id=:Id";
            OracleParameter[] parameters = {
                new OracleParameter(":Id", expandObj.Id)
               ,new OracleParameter(":DataPkey", expandObj.DataPkey)
               ,new OracleParameter(":TableName", expandObj.TableName)
               ,new OracleParameter(":Code", expandObj.Code)
               ,new OracleParameter(":Value", expandObj.Value)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }

        public int DeleteTableFieldExpandByTableId(long tableId)
        {
            string dataTableName = GetDataTableNameByTableId(tableId);
            string sql = "Delete From RCS_FieldExpands Where Table_Name = :TableName And Data_PKEY = :DataPKey";
            OracleParameter[] parameters = {
                new OracleParameter(":TableName", dataTableName)
               ,new OracleParameter(":DataPKey", tableId)
            };
            return ExecuteNonQuery(CommandType.Text,sql,parameters,false);
        }
    }
}
