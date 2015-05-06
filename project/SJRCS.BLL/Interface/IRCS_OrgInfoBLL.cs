using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL.Interface
{
    public interface IRCS_OrgInfoBLL
    {
        IEnumerable<dynamic> GetRootOrgInfo();

        IEnumerable<dynamic> GetChildOrgInfos(string parentCode);
    }
}
