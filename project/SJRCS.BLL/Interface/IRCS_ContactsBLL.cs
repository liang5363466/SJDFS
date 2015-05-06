using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL.Interface
{
    public interface IRCS_ContactsBLL
    {
        IEnumerable<dynamic> GetContacts(string userId, int pageIndex, int pageSize, out int pageCount, out int recordCount);

        IEnumerable<dynamic> GetAllContacts(string userId, long tableId);

        bool AddContact(string userId, string contactId);

        bool DeleteContact(string userId, string contactId);
    }
}
