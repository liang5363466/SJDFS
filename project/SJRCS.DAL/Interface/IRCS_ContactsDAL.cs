using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    public interface IRCS_ContactsDAL
    {
        IEnumerable<dynamic> GetContacts(string userId, int pageIndex, int pageSize, out int pageCount, out int recordCount);

        IEnumerable<dynamic> GetUserAllContacts(string userId);

        IEnumerable<dynamic> GetAllContacts(string userId, long tableId);

        int AddContact(string userId, string contactId);

        int DeleteContact(string userId, string contactId);
    }
}
