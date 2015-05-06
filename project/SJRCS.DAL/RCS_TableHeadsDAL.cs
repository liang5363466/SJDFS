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
    public class RCS_TableHeadsDAL : BaseDAL, IRCS_TableHeadsDAL
    {
        #region Constractor
        public RCS_TableHeadsDAL()
        {

        }

        public RCS_TableHeadsDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion


        public int DeleteTableHeadByTableId(long tableId)
        {
            string sql = "Delete From Rcs_TableHeads Where Table_ID = :tableId";
            OracleParameter[] parameters = {
                new OracleParameter(":tableId", tableId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }

        public Dynamic GetTableHeadInfo(long headId)
        {
            string sql = "Select * from Rcs_TableHeads Where Id = :headId";
            OracleParameter[] parameters = {
                new OracleParameter(":headId", headId)};
            return ExecuteObjects(CommandType.Text, sql, parameters, true).FirstOrDefault<Dynamic>();
        }

        public int AddTableHeadInfo(Dynamic headInfo)
        {
            dynamic head = headInfo;
            string sql =
            @"Insert Into Rcs_TableHeads 
                (ID,Table_ID,Name,Type,Code,PointX,PointY)
            Values 
                (:Id,:TableId,:Name,:Type,:Code,:PointX,:PointY)";
            long headid = GetNextId("Rcs_TableHeads");
            OracleParameter[] parameters = {
                 new OracleParameter(":Id",headid)
                ,new OracleParameter(":TableId",head.TableId)
                ,new OracleParameter(":Name",head.Name)
                ,new OracleParameter(":Type",head.Type)
                ,new OracleParameter(":Code",head.Code)
                ,new OracleParameter(":PointX",head.PointX)
                ,new OracleParameter(":PointY",head.PointY)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
        }


        public IEnumerable<Dynamic> GetTableHeadInfosByTableId(long tableId)
        {
            string sql = "Select * from Rcs_TableHeads Where Table_Id = :tableId";
            OracleParameter[] parameters = {
                new OracleParameter(":tableId", tableId)};
            return ExecuteObjects(CommandType.Text, sql, parameters, false);
        }
    }
}
