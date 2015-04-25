using Devart.Data.Oracle;
using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;

namespace SJRCS.DALProfile
{
    public delegate int DoTransAction();
    public class DBHelper
    {
        private string connectionString;
        protected OracleConnection connection;
        protected OracleCommand command;

        public DBHelper()
        {
            this.connectionString = DBConfig.SJDFS_DB;
            CreateConnection(connectionString);
        }

        public DBHelper(string connectionString)
        {
            this.connectionString = connectionString;
            CreateConnection(connectionString);
        }

        public DBHelper(OracleConnection connection,OracleCommand command)
        {
            this.connection = connection;
            this.command = command;
        }

        #region ExecuteNonQuery
        protected int ExecuteNonQuery(CommandType cmdType, string cmdText, OracleParameter[] parameters,bool isCloseConn)
        {
            int excuteResult = 0;
            try
            {
                PrepareCommand(cmdType, cmdText, parameters);
                excuteResult = command.ExecuteNonQuery();
            }
            catch
            {
                if(isCloseConn)connection.Close();
                throw;
            }
            finally
            {
                if (isCloseConn) connection.Close();
            }
            return excuteResult;
        }
        #endregion

        #region ExecuteReader
        protected OracleDataReader ExecuteReader(CommandType cmdType, string cmdText, OracleParameter[] parameters,bool isCloseConn)
        {
            OracleDataReader dataReader = null;
            try
            {
                PrepareCommand(cmdType, cmdText, parameters);
                dataReader = command.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch
            {
                dataReader.Close();
                if (isCloseConn) connection.Close();
                throw;
            }
            finally
            {
                dataReader.Close();
                if (isCloseConn) connection.Close();
            }
            return dataReader;
        }
        #endregion

        #region ExecuteScalar
        protected object ExecuteScalar(CommandType cmdType, string cmdText, OracleParameter[] parameters, bool isCloseConn)
        {
            object excuteResult = null;
            try
            {
                PrepareCommand(cmdType, cmdText, parameters);
                excuteResult = command.ExecuteScalar();
            }
            catch
            {
                if (isCloseConn) connection.Close();
                throw;
            }
            finally
            {
                if (isCloseConn) connection.Close();
            }
            return excuteResult;
        }
        #endregion

        #region ExecuteObjects
        protected IEnumerable<Dynamic> ExecuteObjects(CommandType cmdType, string cmdText, OracleParameter[] parameters,bool isCloseConn)
        {
            DataSet dataSet = new DataSet();
            try
            {
                PrepareCommand(cmdType, cmdText, parameters);
                OracleDataAdapter dataAdapter = new OracleDataAdapter();
                dataAdapter.SelectCommand = command;
                dataAdapter.Fill(dataSet, "Result");
            }
            catch
            {
                if(isCloseConn)connection.Close();
                throw;
            }
            finally
            {
                if (isCloseConn) connection.Close();
            }
            DataTable dt = dataSet.Tables["Result"];
           
            ICollection<Dynamic> resultObjs = new LinkedList<Dynamic>();
            foreach (DataRow dataRow in dt.Rows)
            {
                Dictionary<string, object> dynamicData = new Dictionary<string, object>();
                foreach (DataColumn column in dt.Columns)
                {
                    dynamicData.Add(column.ColumnName, dataRow[column]);
                }
                dynamic obj = new Dynamic(dynamicData);
                resultObjs.Add(obj);
            }
            return resultObjs;
        }
        #endregion

        #region ExecutePage

        protected IEnumerable<Dynamic> ExecutePage(string allFields, string tablesAndWhere, string indexField, string orderFields, int pageIndex, int pageSize, out int pageCount, out int recordCount, bool isCloseConn)
        {
            if (pageSize <= 0) pageSize = 10;
            string dataCountSql = "Select Count(" + indexField + ") From " + tablesAndWhere;
            recordCount = int.Parse(ExecuteScalar(CommandType.Text, dataCountSql, null, false).ToString());
            pageCount = recordCount % pageSize == 0 ? (recordCount / pageSize) : (recordCount / pageSize + 1);

            if (pageIndex > pageCount) pageIndex = pageCount;
            if (pageIndex < 1) pageIndex = 1;


            string pageSql = "Select * From ( Select a.*, RowNum Rn From (Select " + allFields + " From " + tablesAndWhere + " " + orderFields + ") a Where RowNum <= {0} ) Where Rn >= {1} ";
            pageSql = string.Format(pageSql, pageSize * pageIndex, (pageIndex - 1) * pageSize + 1);
          
            return ExecuteObjects(CommandType.Text, pageSql, null, isCloseConn);
        }

        
        #endregion

        #region ExecuteTransAction
        protected int ExecuteTransaction(DoTransAction doTransAction)
        {
            int excuteResult = 0;
            if (connection.State != ConnectionState.Open) connection.Open();
            OracleTransaction transaction = connection.BeginTransaction(IsolationLevel.ReadCommitted);
            try
            {
                excuteResult = doTransAction();
                transaction.Commit();
            }
            catch
            {
                transaction.Rollback();
                connection.Close();
                throw;
            }
            finally
            {
                connection.Close();
            }
            return excuteResult;
        }
        #endregion

        #region Private Methods
        private void CreateConnection(string connectionString)
        {
            try
            {
                connection = new OracleConnection() { Unicode = true, ConnectionString = connectionString };
                command = connection.CreateCommand();
            }
            catch (Exception ex)
            {

            }
        }

        private void PrepareCommand(CommandType cmdType, string cmdText, OracleParameter[] parameters)
        {
            command.Parameters.Clear();
            if (connection.State != ConnectionState.Open) connection.Open();
            command.CommandText = cmdText;
            command.CommandType = cmdType;
            command.CommandTimeout = DBConfig.TimeOut;
            if (parameters != null) command.Parameters.AddRange(parameters);
        }
        #endregion
    }
}
