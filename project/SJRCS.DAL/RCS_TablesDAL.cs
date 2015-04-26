using Devart.Data.Oracle;
using SJRCS.DAL.Infrastructure;
using SJRCS.DAL.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using SJRCS.Common;
using SJRCS.Model;

namespace SJRCS.DAL
{
    public class RCS_TablesDAL : BaseDAL, IRCS_TablesDAL
    {
        private IRCS_TableHeadsDAL headDal;
        private IRCS_FieldExpandsDAL fieldDal;
        private IRCS_DataTableDAL dataTableDal;
        private IRCS_FillRulesDAL fillRuleDal;
        private IRCS_DataAuditsDAL dataAuditDal;

        #region Constractor
        public RCS_TablesDAL()
        {
            headDal = new RCS_TableHeadsDAL(connection, command);
            fieldDal = new RCS_FieldExpandsDAL(connection, command);
            dataTableDal = new RCS_DataTableDAL(connection, command);
            fillRuleDal = new RCS_FillRulesDAL(connection, command);
            dataAuditDal = new RCS_DataAuditsDAL(connection, command);
        }
        #endregion

        public IEnumerable<Dynamic> GetTablesByUploaderId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string uploaderId)
        {
            string allFields = string.Format(
                @"a.Id,a.Name,a.UpLoader,a.Create_Time,a.Is_Published,a.Is_Allow_Report,a.Is_InCycle,a.Type,a.Version,a.Unique_Code
                ,(Select Count(b.ID) From Rcs_DataAudits b Where b.Status = {0} And b.Table_Id = a.Id) as UnAudit
                ,(Select Count(b.ID) From Rcs_DataAudits b Where b.Status = {1} And b.Table_Id = a.Id) as Audited"
            , RCS_AuditStatus.UnAudit,RCS_AuditStatus.Audited);
            string tableAndWhere = "RCS_Tables a Where a.Uploader = '" + uploaderId+"'";
            string indexField = "a.Id";
            string orderByField = "Order by a.Create_Time desc";
            return ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount,true);
        }

        public IEnumerable<Dynamic> GetTablesByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string writerId)
        {
            string allFields = string.Format(
                @"b.Id,b.Name,b.Is_Published,b.Create_Time,b.Type,b.Is_Allow_Report
                ,(Select Count(c.ID) From Rcs_DataAudits c Where c.Status = {0} And c.Table_Id = a.Table_Id And c.Reporter = '#reporter#') as UnCommit
                ,(Select Count(c.ID) From Rcs_DataAudits c Where c.Status = {1} And c.Table_Id = a.Table_Id And c.Reporter = '#reporter#') as UnAudit
                ,(Select Count(c.ID) From Rcs_DataAudits c Where c.Status = {2} And c.Table_Id = a.Table_Id And c.Reporter = '#reporter#') as Audited
                ,(Select Count(c.ID) From Rcs_DataAudits c Where c.Status = {3} And c.Table_Id = a.Table_Id And c.Reporter = '#reporter#') as UnPass"
            , RCS_AuditStatus.UnCommit, RCS_AuditStatus.UnAudit, RCS_AuditStatus.Audited, RCS_AuditStatus.UnPass);
            allFields = allFields.Replace("#reporter#", writerId);
            string tableAndWhere = string.Format(
                @"Rcs_FillRules a left join RCS_Tables b on a.Table_Id = b.Id 
                Where b.Is_Published = {0} And b.Is_Allow_Report = {1} 
                And b.Is_InCycle = {2} And a.Reporter = '{3}'"
            , RCS_IsPublished.True, RCS_IsAllowReport.True,RCS_IsInCycle.True, writerId);
            string indexField = "b.Id";
            string orderByField = "Order by b.Create_Time desc";
            return ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount, true);
        }

        public IEnumerable<Dynamic> GetAuditorTables(int pageIndex, int pageSize, out int pageCount, out int recordCount, string auditorId)
        {
            string allFields = string.Format(
                @"a.Id,a.Name,a.UpLoader,a.Create_Time,a.Is_Published,a.Type,a.Is_Allow_Report,a.Version,a.Unique_Code
                ,(Select Count(b.ID) From Rcs_DataAudits b Where b.Status = {0} And b.Table_Id = a.Id) as UnAudit
                ,(Select Count(b.ID) From Rcs_DataAudits b Where b.Status = {1} And b.Table_Id = a.Id) as UnPass
                ,(Select Count(b.ID) From Rcs_DataAudits b Where b.Status = {2} And b.Table_Id = a.Id) as Audited"
            , RCS_AuditStatus.UnAudit, RCS_AuditStatus.UnPass, RCS_AuditStatus.Audited);
            string tableAndWhere = string.Format(
                @"RCS_Tables a 
                Where a.Uploader = '{0}' 
                And a.Is_Published = {1} "
            , auditorId,RCS_IsPublished.True);
            string indexField = "a.Id";
            string orderByField = "Order by a.Create_Time desc";
            return ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount, true);
        }
      
        public int UpdateTable(Dynamic updateTable)
        {
            return ExecuteTransaction(() => {
                int executeResult = 0;
                dynamic tableObj = updateTable;
                string sql =
                @"Update RCS_Tables Set 
                      Name=:Name
                     ,Descript=:Descript
                     ,Is_Published=:IsPublished
                     ,Is_Allow_Report=:IsAllowReport
                     ,Is_InCycle=:IsInCycle 
                     ,Type=:Type 
                Where Id=:Id";
                OracleParameter[] parameters = {
                    new OracleParameter(":Id",tableObj.ID)
                   ,new OracleParameter(":Name",tableObj.NAME)
                   ,new OracleParameter(":Descript",tableObj.DESCRIPT)
                   ,new OracleParameter(":IsPublished",tableObj.IS_PUBLISHED)
                   ,new OracleParameter(":IsAllowReport",tableObj.IS_ALLOW_REPORT)
                   ,new OracleParameter(":IsInCycle",RCS_IsInCycle.True)
                   ,new OracleParameter(":Type",tableObj.TYPE)
                };
                long tableId = Convert.ToInt64(tableObj.ID);
                fieldDal.DeleteTableFieldExpandByTableId(tableId);
                foreach (dynamic expandItem in tableObj.CycleFields)
                {
                    expandItem.DataPkey = tableObj.ID;
                    expandItem.TableName = tableObj.DATA_TABLE;
                    fieldDal.AddFieldExpand(expandItem);
                }
                executeResult += ExecuteNonQuery(CommandType.Text, sql, parameters, false);
                return executeResult;
            });
           
        }

        public int DeleteTable(long tableId)
        {
            return 
            ExecuteTransaction(() => {
                int executeResult = 0;
                string dataTableName = GetDataTableNameByTableId(tableId);
                string sql = "Delete From RCS_Tables Where Id = :tableId";
                OracleParameter[] parameters = {
                    new OracleParameter(":tableId", tableId)
                };
                executeResult += dataAuditDal.DeleteAuditDataByTableId(tableId);
                executeResult += fillRuleDal.DeleteFillRulesByTableId(tableId);
                executeResult += headDal.DeleteTableHeadByTableId(tableId);
                executeResult += fieldDal.DeleteTableFieldExpandByTableId(tableId);
                executeResult += dataTableDal.DeleteDataTableByName(dataTableName);
                executeResult += ExecuteNonQuery(CommandType.Text, sql, parameters, false);
                return executeResult;
            });
        }

        public int AddTable(Dynamic newTable)
        {
            return ExecuteTransaction(()=>{

                #region 添加表样信息
                dynamic tableObj = newTable;
                string sql =
                @"Insert Into RCS_Tables (
                    Id
                   ,Name
                   ,EXPORT_FILE
                   ,FILL_FILE
                   ,Data_Table
                   ,Data_StartX
                   ,Data_StartY
                   ,UpLoader
                   ,Create_Time
                   ,Descript
                   ,Is_Published
                   ,Is_Allow_Report
                   ,IS_InCycle
                   ,Type
                   ,Version
                   ,Unique_Code
                )
                Values (
                    :Id
                   ,:Name
                   ,:ExportFile
                   ,:FillFile
                   ,:DataTable
                   ,:DataStartX
                   ,:DataStartY
                   ,:UpLoader
                   ,:CreateTime
                   ,:Descript
                   ,:IsPublished
                   ,:IsAllowReport
                   ,:IsInCycle
                   ,:Type
                   ,:Version
                   ,:UniqueCode
                )";
                tableObj.Id = GetNextId("RCS_Tables");
                OracleParameter[] parameters = { 
                     new OracleParameter(":Id",tableObj.Id)
                    ,new OracleParameter(":Name",tableObj.Name)
                    ,new OracleParameter(":ExportFile",tableObj.ExportFile)      
                    ,new OracleParameter(":FillFile",tableObj.FillFile)  
                    ,new OracleParameter(":DataTable",tableObj.DataTable)                  
                    ,new OracleParameter(":DataStartX",tableObj.DataStartX)                
                    ,new OracleParameter(":DataStartY",tableObj.DataStartY)                
                    ,new OracleParameter(":UpLoader",tableObj.UpLoader)                    
                    ,new OracleParameter(":CreateTime",OracleDbType.Date,tableObj.CreateTime,ParameterDirection.Input)                
                    ,new OracleParameter(":Descript",tableObj.Descript)                    
                    ,new OracleParameter(":IsPublished",tableObj.IsPublished)              
                    ,new OracleParameter(":IsAllowReport",tableObj.IsAllowReport)
                    ,new OracleParameter(":IsInCycle",RCS_IsInCycle.True)
                    ,new OracleParameter(":Type",tableObj.Type) 
                    ,new OracleParameter(":Version",tableObj.Version)
                    ,new OracleParameter(":UniqueCode",tableObj.UniqueCode)
                }; 
                #endregion

                #region 表样扩展信息(周期填报等字段)
                foreach (dynamic expandItem in tableObj.CycleFields)
                {
                    expandItem.DataPkey = tableObj.Id;
                    expandItem.TableName = tableObj.DataTable;
                    fieldDal.AddFieldExpand(expandItem);
                } 
                #endregion

                #region 添加表样表头信息
                foreach (dynamic headItem in tableObj.HeadCollection)
                {
                    headItem.TableId = tableObj.Id;
                    headDal.AddTableHeadInfo(headItem);
                } 
                #endregion

                dataTableDal.CreateDataTable(tableObj.HeadCollection,tableObj.DataTable);
                return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
            });
        }

        public Dynamic GetTableByTableId(long tableId)
        {
            string sql = "Select * From RCS_Tables Where Id = :tableId";
            OracleParameter [] parameters = {
                new OracleParameter(":tableId",tableId)                                
            };
            dynamic tableInfo = ExecuteObjects(CommandType.Text, sql, parameters, false).FirstOrDefault<Dynamic>();
            sql = "Select * From RCS_TableHeads Where Table_Id = :tableId order by id";
            tableInfo.HeadCollection = ExecuteObjects(CommandType.Text, sql, parameters, false);
            sql = string.Format("Select Code,Value From RCS_FieldExpands Where Data_PKey = {0}",tableId);
            tableInfo.CycleFields = ExecuteObjects(CommandType.Text, sql, null, true);
            return tableInfo;
        }

        public int PublishTable(long tableId)
        {
            string sql =
            @"Update RCS_Tables Set 
                Is_Published = :IsPublished
               ,Is_Allow_Report = :IsAllowReport 
            Where 
                Id = :TableId";
            OracleParameter[] parameters = {
                 new OracleParameter(":IsPublished",RCS_IsPublished.True) 
                ,new OracleParameter(":IsAllowReport",RCS_IsAllowReport.True)
                ,new OracleParameter(":TableId",tableId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }

        public IEnumerable<Dynamic> GetExportAuditedData(long tableId, string auditor, DateTime startDate, DateTime endDate)
        {
            string tableName = GetDataTableNameByTableId(tableId);
            string sql = string.Format(
                @"Select a.* 
                From {0} a 
                Left Join Rcs_DataAudits b 
                On a.Audit_Id = b.Id 
                Where b.Auditor = :Auditor 
                And b.Table_Id = :TableId 
                And b.Audit_Time between :DateStart and :DateEnd "
            , tableName);
            OracleParameter[] parameters = {
                 new OracleParameter(":Auditor",auditor) 
                ,new OracleParameter(":TableId",tableId)
                ,new OracleParameter(":DateStart",startDate)
                ,new OracleParameter(":DateEnd",endDate)
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, true);
        }

        public int UpdateTableStatus(long tableId,int status)
        {
            string sql = "Update Rcs_Tables Set Is_Allow_Report = :IsAllowReport Where Id = :TableId";
            OracleParameter[] parameters = { 
                new OracleParameter(":IsAllowReport",status)
               ,new OracleParameter(":TableId",tableId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }

        public IEnumerable<Dynamic> GetAllPublishedTablesByType(int tableType)
        {
            string sql = string.Format(
                @"Select a.Id as TableId,b.Code,b.Value 
                From Rcs_Tables a 
                Left Join Rcs_FieldExpands b
                On a.Id = b.Data_PKey 
                Where a.Is_Published = {0} And a.Type = {1}"
            , RCS_IsPublished.True, tableType);
            IEnumerable<Dynamic> expands = ExecuteObjects(CommandType.Text, sql, null, true);
            var result = expands
                .GroupBy(c => { dynamic d = c; return d.TABLEID; })
                .Select(c => new { Data = c });
            LinkedList<Dynamic> resultObjs = new LinkedList<Dynamic>();
            foreach (var item in result)
            {
                Dictionary<string, object> dataDict = new Dictionary<string, object>();
                foreach (dynamic data in item.Data)
                {
                    if (!dataDict.ContainsKey("TableId"))
                        dataDict.Add("TableId", data.TABLEID);
                    if (!dataDict.ContainsKey(data.CODE))
                        dataDict.Add(data.CODE, data.VALUE);
                }
                resultObjs.AddLast(new Dynamic(dataDict));
            }
            return resultObjs;
        }

        public bool CheckTableNameIsExist(long? tableId ,string tableName)
        {
            tableId = tableId ?? 0;
            string sql = "Select Name From Rcs_Tables Where Name = :Name And Id <> :TableId";
            OracleParameter[] parameters = { 
                new OracleParameter(":Name",tableName)
                ,new OracleParameter(":TableId",tableId)
            };
            object nameObj = ExecuteScalar(CommandType.Text, sql, parameters, true);
            return nameObj == null ? false : true;
        }


        public int SetTableIsInCycle(long tableId, int isInCycle)
        {
            string sql =
             @"Update RCS_Tables Set 
                Is_InCycle = :IsInCycle
            Where 
                Id = :TableId";
            OracleParameter[] parameters = {
                 new OracleParameter(":IsInCycle",isInCycle)
                ,new OracleParameter(":TableId",tableId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }
    }
}
