using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL.Interface
{
    public interface IRCS_FillRulesBLL
    {
        bool SetFillUser(string userId, long tableId);

        bool RemoveFillUser(string userId, long tableId);
    }
}
