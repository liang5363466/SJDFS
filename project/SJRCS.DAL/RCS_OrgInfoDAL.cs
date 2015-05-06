using Devart.Data.Oracle;
using SJRCS.Common;
using SJRCS.DAL.Infrastructure;
using SJRCS.DAL.Interface;
using SJRCS.DALProfile;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL
{
    public class RCS_OrgInfoDAL : BaseDAL, IRCS_OrgInfoDAL
    {
        #region Constractor
        public RCS_OrgInfoDAL()
            : base(DBConfig.JYJYDW_DB)
        {

        }
        public RCS_OrgInfoDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion

        public IEnumerable<dynamic> GetRootOrgInfo()
        {
            string sql =
            @"Select a.Org_Code,a.Org_Name, 
            (Select Count(Org_Code) From T_OrgInfo where Porg_Id = a.Org_Code) as Child_Count
            From T_OrgInfo a where a.Porg_Id is null";
            return ExecuteObjects(CommandType.Text, sql, null, true).AsEnumerable<dynamic>();
        }


        public IEnumerable<dynamic> GetChildOrgInfos(string parentCode)
        {
            string sql =
            @"Select a.Org_Code,a.Org_Name, 
            (Select Count(Org_Code) From T_OrgInfo where Porg_Id = a.Org_Code) as Child_Count  
            From T_OrgInfo a where a.Porg_Id = '" + parentCode + "' order by a.sort_index";
            return ExecuteObjects(CommandType.Text, sql, null, true).AsEnumerable<dynamic>();
        }
    }
}
