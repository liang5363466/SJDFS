using SJRCS.BLL.Infrastructure;
using SJRCS.BLL.Interface;
using SJRCS.Common;
using SJRCS.DAL;
using SJRCS.DAL.Interface;
using SJRCS.DALProfile;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL
{
    public class RCS_ContactsBLL : BaseBLL, IRCS_ContactsBLL
    {
        private IRCS_ContactsDAL dal;
        public RCS_ContactsBLL(IRCS_ContactsDAL dal)
        {
            this.dal = dal;
        }

        public IEnumerable<dynamic> GetContacts(string userId, int pageIndex, int pageSize, out int pageCount, out int recordCount)
        {
            return dal.GetContacts(userId, pageIndex, pageSize, out  pageCount, out  recordCount);
        }

        public IEnumerable<dynamic> GetAllContacts(string userId, long tableId)
        {
            return dal.GetAllContacts(userId, tableId);
        }

        public bool AddContact(string userId, string contactId)
        {
            return dal.AddContact(userId, contactId) > 0;
        }

        public bool DeleteContact(string userId, string contactId)
        {
            return dal.DeleteContact(userId, contactId) > 0;
        }
    }
}
