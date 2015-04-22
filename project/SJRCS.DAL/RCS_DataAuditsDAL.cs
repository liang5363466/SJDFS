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
    public class RCS_DataAuditsDAL : BaseDAL, IRCS_DataAuditsDAL
    {
        private IRCS_DataTableDAL dataTableDal;
        private IRCS_UserDAL userDal; 

        #region Constractor
        public RCS_DataAuditsDAL()
        {
            dataTableDal = new RCS_DataTableDAL(connection, command);
            userDal = new RCS_UserDAL();
        }

        public RCS_DataAuditsDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {
             
        } 
        #endregion

        public IEnumerable<Dynamic> GetAuditDataByAuditorId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string auditorId, int auditStatus)
        {
            string allFields = "a.Id,a.Reporter,a.Name,a.Auditor,a.Create_Time,a.Audit_Time,a.Report_Time,a.Row_Count,a.Status";
            string tableAndWhere = "RCS_DataAudits a left join RCS_Tables b on a.Table_Id = b.Id Where a.Table_Id = "+tableId+" And a.Status = " + auditStatus + " And b.Uploader = '"+auditorId+"'";
            string indexField = "a.Id";
            string orderByField = "Order by a.Create_Time desc";
            IEnumerable<Dynamic> auditData = ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount, true);
            foreach (dynamic item in auditData)
            {
                string reporter = item.REPORTER;
                dynamic reporterInfo = userDal.GetUserByUserId(reporter);
                item.REPORTER_NAME = reporterInfo.DISPLAY_NAME;
            }
            return auditData;
        }

        public IEnumerable<Dynamic> GetAuditDataByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string reporterId, int auditStatus)
        {
            string allFields = "Id,Reporter,Name,Auditor,Create_Time,Report_Time,Audit_Time,Row_Count,Status,Opinion";
            string tableAndWhere = "RCS_DataAudits Where Table_Id = "+tableId+" And Status = " + auditStatus + " And Reporter = '" + reporterId+"'";
            string indexField = "Id";
            string orderByField = "Order by Create_Time desc";
            IEnumerable<Dynamic> auditData =  ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount, true);
            dynamic reporterInfo = userDal.GetUserByUserId(reporterId);
            foreach (dynamic item in auditData)
            {
                item.REPORTER_NAME = reporterInfo.DISPLAY_NAME;
                string auditorId = Convert.IsDBNull(item.AUDITOR) ? "0" : item.AUDITOR;
                dynamic auditorInfo = userDal.GetUserByUserId(auditorId);
                item.AUDITOR_NAME = auditorInfo != null ? auditorInfo.DISPLAY_NAME : "";
            }
            return auditData;
        }
 

        public int DeleteAuditData(long auditId)
        {
            return ExecuteTransaction(() => {
                int executeResult = 0;
                executeResult += dataTableDal.DeleteDataByAuditId(auditId);
                string sql = "Delete From RCS_DataAudits Where Id = :AuditId";
                OracleParameter[] parameters = {
                    new OracleParameter(":AuditId", auditId)
                };
                executeResult += ExecuteNonQuery(CommandType.Text, sql, parameters, false);
                return executeResult;
            });
        }

        public int AuditData(long auditId, int auditStatus)
        {
            OracleParameter[] parameters = null;
            string sql =
            @"Update RCS_DataAudits Set Status = :AuditStatus Where Id = :AuditId";
            if (auditStatus == RCS_AuditStatus.UnAudit)
            {
                sql = @"Update RCS_DataAudits Set Status=:AuditStatus Where Id = :AuditId";
                parameters = new OracleParameter[]{
                    new OracleParameter(":AuditId",auditId)
                   ,new OracleParameter(":AuditStatus",auditStatus)
                };
            }
            else
            {
                parameters = new OracleParameter[]{
                    new OracleParameter(":AuditId",auditId)
                   ,new OracleParameter(":AuditStatus",auditStatus)
                };
            }
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public int DeleteAuditDataByTableId(long tableId)
        {
            string sql = "Delete From RCS_DataAudits Where Table_Id = :tableId";
            OracleParameter[] parameters = {
                new OracleParameter(":tableId", tableId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }


        public int AddAuditData(dynamic auditData)
        {
            return ExecuteTransaction(() => {
                int executeResult = 0;
                string sql = 
                @"Insert Into RCS_DataAudits 
                    (ID,Table_Id,Name,EXPORT_FILE,Status,Row_Count,Reporter,Create_Time,Report_Time,Auditor,Audit_Time)
                  Values
                    (:AuditId,:TableId,:Name,:FileName,:Status,:RowCount,:Reporter,:CreateTime,:ReportTime,:Auditor,:AuditTime)";
                long auditId = GetNextId("RCS_DataAudits");
                auditData.AuditId = auditId;
                OracleParameter[] parameters = {
                     new OracleParameter(":AuditId", auditId)
                    ,new OracleParameter(":TableId", auditData.TableId)
                    ,new OracleParameter(":Name", auditData.NAME)
                    ,new OracleParameter(":FileName", auditData.FileName)
                    ,new OracleParameter(":Status",RCS_AuditStatus.UnCommit)
                    ,new OracleParameter(":RowCount",0)
                    ,new OracleParameter(":Reporter",auditData.Reporter)
                    ,new OracleParameter(":CreateTime",DateTime.Now)
                    ,new OracleParameter(":ReportTime",auditData.REPORT_TIME)
                    ,new OracleParameter(":AuditTime",DBNull.Value)
                    ,new OracleParameter(":Auditor",DBNull.Value)
                };
                executeResult += ExecuteNonQuery(CommandType.Text, sql, parameters, false);
                return executeResult;
            });
        }


        public Dynamic GetAuditDataDetail(long auditId)
        {
            string sql = "Select * From Rcs_DataAudits a Where Id = :AuditId";
            OracleParameter[] parameters = {
                new OracleParameter(":AuditId", auditId)
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, true).FirstOrDefault<Dynamic>();
        }

        public IEnumerable<Dynamic> GetAuditedData(long auditId)
        {
            string tableName = GetDataTableNameByAuditId(auditId);
            string sql = string.Format("Select * From {0} Where Audit_Id = :AuditId", tableName);
            OracleParameter[] parameters = {
                new OracleParameter(":AuditId", auditId)
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, true);
        }

        public int PassAuditData(long auditId, string auditor, IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> cellData)
        {
            return ExecuteTransaction(() => {
                int executeResult = 0;
                string tableName = GetDataTableNameByAuditId(auditId);
                executeResult += dataTableDal.SaveUserCommitData(tableName, headInfos,cellData);
                string sql = "Update Rcs_DataAudits Set Status = :Status,Auditor = :Auditor,Audit_Time = :AuditTime Where Id = :AuditId";
                OracleParameter[] parameters = {
                    new OracleParameter(":Status", RCS_AuditStatus.Audited)
                   ,new OracleParameter(":AuditId", auditId)
                   ,new OracleParameter(":Auditor", auditor)
                   ,new OracleParameter(":AuditTime", DateTime.Now)
                };
                executeResult += ExecuteNonQuery(CommandType.Text, sql, parameters, false);
                return executeResult;
            });
        }


        public int UnPassAuditData(long auditId, string auditor)
        {
            string sql =
            @"Update RCS_DataAudits Set 
             Status = :AuditStatus 
            ,Auditor = :Auditor 
            ,Audit_Time = :AuditTime 
            Where Id = :AuditId";
            OracleParameter[] parameters =  new OracleParameter[]{
                 new OracleParameter(":AuditStatus",RCS_AuditStatus.UnPass)
                ,new OracleParameter(":Auditor",auditor)
                ,new OracleParameter(":AuditTime",DateTime.Now)
                ,new OracleParameter(":AuditId",auditId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public int UpdateAuditOpinion(long auditId, string opinion)
        {
            string sql = "Update Rcs_DataAudits Set Opinion = :Opinion,Status = :Status Where Id = :AuditId";
            OracleParameter[] parameters = new OracleParameter[]{
                 new OracleParameter(":Opinion",opinion)
                ,new OracleParameter(":Status",RCS_AuditStatus.UnPass)
                ,new OracleParameter(":AuditId",auditId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public int UpdateAuditDataName(long auditId, string auditName, DateTime reportTime)
        {
            string sql = "Update Rcs_DataAudits Set Name = :Name,Report_Time = :ReportTime Where Id = :AuditId";
            OracleParameter[] parameters = new OracleParameter[]{
                 new OracleParameter(":Name",auditName)
                ,new OracleParameter(":ReportTime",reportTime)
                ,new OracleParameter(":AuditId",auditId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public bool CheckAuditNameIsExist(long? auditId,string auditName)
        {
            auditId = auditId ?? 0;
            string sql = "Select Name From Rcs_DataAudits Where Name = :Name And Id <> :AuditId";
            OracleParameter[] parameters = { 
                new OracleParameter(":Name",auditName)
               ,new OracleParameter(":AuditId",auditId)
            };
       
            object nameObj = ExecuteScalar(CommandType.Text, sql, parameters, true);
            return nameObj == null ? false : true;
        }
    }
}
