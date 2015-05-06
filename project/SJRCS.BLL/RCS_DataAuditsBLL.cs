using SJRCS.BLL.Infrastructure;
using SJRCS.BLL.Interface;
using SJRCS.Common;
using SJRCS.DAL.Interface;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL
{
    public class RCS_DataAuditsBLL : BaseBLL, IRCS_DataAuditsBLL
    {
        private IRCS_DataAuditsDAL dal;
        public RCS_DataAuditsBLL(IRCS_DataAuditsDAL dal)
        {
            this.dal = dal;
        }

        public IEnumerable<Dynamic> GetAuditDataByAuditorId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string auditorId, int auditStatus)
        {
            return dal.GetAuditDataByAuditorId(pageIndex, pageSize, out  pageCount, out  recordCount, tableId, auditorId, auditStatus);
        }
        public IEnumerable<Dynamic> GetAuditDataByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string userId, int auditStatus)
        {
            return dal.GetAuditDataByWriterId(pageIndex, pageSize, out  pageCount, out  recordCount, tableId, userId, auditStatus);
        }

        public bool AddAuditData(dynamic auditData)
        {
            return dal.AddAuditData(auditData) > 0;
        }

        public bool AuditData(long auditId, int auditStatus)
        {
            return dal.AuditData(auditId, auditStatus) > 0;
        }

        public bool DeleteAuditData(long auditId)
        {
            return dal.DeleteAuditData(auditId) > 0;
        }

        public Dynamic GetAuditDataDetail(long auditId)
        {
            return dal.GetAuditDataDetail(auditId);
        }

        public IEnumerable<Dynamic> GetAuditedData(long auditId)
        {
            return dal.GetAuditedData(auditId);
        }

        public bool PassAuditData(long auditId, string auditor, IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> cellData)
        {
            return dal.PassAuditData(auditId, auditor, headInfos, cellData) > 0;
        }

        public bool UnPassAuditData(long auditId, string auditor)
        {
            return dal.UnPassAuditData(auditId, auditor) > 0;
        }

        public bool UpdateAuditOpinion(long auditId, string opinion)
        {
            return dal.UpdateAuditOpinion(auditId, opinion) > 0;
        }

        public bool UpdateAuditDataName(long auditId, string auditName,DateTime reportTime)
        {
            return dal.UpdateAuditDataName(auditId, auditName, reportTime) > 0;
        }

        public bool CheckAuditNameIsExist(long? auditId, string auditName)
        {
            return dal.CheckAuditNameIsExist(auditId,auditName);
        }
    }
}
