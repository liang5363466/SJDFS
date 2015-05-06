using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL.Interface
{
    public interface IRCS_TablesBLL
    {
        bool AddTable(Dynamic tableInfo);

        IEnumerable<Dynamic> GetTablesByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string writerId);

        IEnumerable<Dynamic> GetAdminTablesByUploaderId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string uploaderId);

        IEnumerable<Dynamic> GetAuditorTables(int pageIndex, int pageSize, out int pageCount, out int recordCount, string auditorId);

        void DeleteTableByTableId(long tableId);

        Dynamic GetTableByTableId(long tableId);

        bool UpdateTableStatus(long tableId, int status);

        bool UpdateTable(Dynamic updateTable);

        bool PublishTable(long tableId);

        IEnumerable<Dynamic> GetExportAuditedData(long tableId, string auditor, DateTime startDate, DateTime endDate);

        IEnumerable<Dynamic> GetAllPublishedTablesByType(int tableType);

        bool CheckTableNameIsExist(long? tableId, string tableName);

        bool SetTableIsInCycle(long tableId, int isInCycle);
    }
}
