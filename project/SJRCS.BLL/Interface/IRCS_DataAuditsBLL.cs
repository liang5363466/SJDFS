using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL.Interface
{
    public interface IRCS_DataAuditsBLL
    {
        IEnumerable<Dynamic> GetAuditDataByAuditorId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string auditorId, int auditStatus);

        IEnumerable<Dynamic> GetAuditDataByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string userId, int auditStatus);

        Dynamic GetAuditDataDetail(long auditId);

        IEnumerable<Dynamic> GetAuditedData(long auditId);

        bool AddAuditData(dynamic auditData);

        bool AuditData(long auditId, int auditStatus);

        bool DeleteAuditData(long auditId);

        bool PassAuditData(long auditId, string auditor, IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> cellData);

        bool UnPassAuditData(long auditId, string auditor);

        bool UpdateAuditOpinion(long auditId, string opinion);

        bool UpdateAuditDataName(long auditId, string auditName,DateTime reportTime);

        bool CheckAuditNameIsExist(long? auditId, string auditName);
    }
}
