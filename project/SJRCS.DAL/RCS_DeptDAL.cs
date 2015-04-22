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
    public class RCS_DeptDAL : BaseDAL, IRCS_DeptDAL
    {
        #region Constractor
        public RCS_DeptDAL()
            : base(DBConfig.SJDFS_EXT_DB)
        {

        }
        public RCS_DeptDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion

        public IEnumerable<dynamic> GetAllOrgInfos()
        {
            string sql = "Select Org_Code,Org_CName From SA_T_ORG_INFO where Org_Code like '32%'";
            return ExecuteObjects(CommandType.Text, sql, null, true).AsEnumerable<dynamic>();
        }
    }
}
