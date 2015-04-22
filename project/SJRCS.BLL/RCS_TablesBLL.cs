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
    public class RCS_TablesBLL : BaseBLL, IRCS_TablesBLL
    {
        private IRCS_TablesDAL dal;
        public RCS_TablesBLL(IRCS_TablesDAL dal)
        {
            this.dal = dal;
        }

        public IEnumerable<Dynamic> GetAdminTablesByUploaderId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string uploaderId)
        {
            CycleFillObserver(this);
            return dal.GetTablesByUploaderId(pageIndex, pageSize, out  pageCount, out  recordCount, uploaderId);
        }

        public IEnumerable<Dynamic> GetAuditorTables(int pageIndex, int pageSize, out int pageCount, out int recordCount, string auditorId)
        {
            CycleFillObserver(this);
            return dal.GetAuditorTables(pageIndex, pageSize, out  pageCount, out  recordCount, auditorId);
        }

        public IEnumerable<Dynamic> GetTablesByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string writerId)
        {
            CycleFillObserver(this);
            return dal.GetTablesByWriterId(pageIndex, pageSize, out pageCount, out recordCount, writerId);
        }

        public IEnumerable<Dynamic> GetExportAuditedData(long tableId, string auditor, DateTime startDate, DateTime endDate)
        {
            CycleFillObserver(this);
            return dal.GetExportAuditedData(tableId, auditor, startDate, endDate);
        }

        public void DeleteTableByTableId(long tableId)
        {
            dynamic tableInfo = dal.GetTableByTableId(tableId);
            dal.DeleteTable(tableId);
            string exportFile = Const.ExportTemplate + tableInfo.EXPORT_FILE;
            string fillFile = Const.FillTemplate + tableInfo.FILL_FILE;
            File.Delete(exportFile);
            File.Delete(fillFile);
        }

        public bool AddTable(Dynamic tableInfo)
        {
            return dal.AddTable(tableInfo) > 0;
        }

        public Dynamic GetTableByTableId(long tableId)
        {
            return dal.GetTableByTableId(tableId);
        }

        public bool PublishTable(long tableId)
        {
            return dal.PublishTable(tableId) > 0;
        }

        public bool UpdateTableStatus(long tableId, int status)
        {
            return dal.UpdateTableStatus(tableId, status) > 0;
        }

        public bool UpdateTable(Dynamic updateTable)
        {
            return dal.UpdateTable(updateTable) > 0;
        }

        public IEnumerable<Dynamic> GetAllPublishedTablesByType(int tableType)
        {
            return dal.GetAllPublishedTablesByType(tableType);
        }

        public bool CheckTableNameIsExist(long? tableId, string tableName)
        {
            return dal.CheckTableNameIsExist(tableId,tableName);
        }

        public bool SetTableIsInCycle(long tableId, int isInCycle)
        {
            return dal.SetTableIsInCycle(tableId,isInCycle) > 0;
        }
    }
}
