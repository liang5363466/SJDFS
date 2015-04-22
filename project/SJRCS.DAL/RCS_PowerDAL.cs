using Devart.Data.Oracle;
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
    public class RCS_PowerDAL : BaseDAL, IRCS_PowerDAL
    {
        #region Constructor
        public RCS_PowerDAL()
            : base(DBConfig.JSDM_DB)
        {
        }
        public RCS_PowerDAL(OracleConnection connection, OracleCommand command)
            : base(connection, command)
        {

        }
        #endregion


        public IEnumerable<dynamic> GetUserPowers(string userId)
        {
            string sql =
            @"Select d.* From F_USR_ROLE a 
            Left join f_Role_Power b 
                on a.role_id = b.role_id 
            Left join F_Power c 
                on b.power_id = c.power_id 
            Left join F_Menu_Tree d
                on c.power_id = d.power_id
            Where a.Usr_Id = :UserId and d.TYPE = 'reportFrame' And d.P_ID <> 0 
                Order by d.Power_id asc";
            OracleParameter[] parameters = {
                 new OracleParameter(":UserId",userId)
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, true).AsEnumerable<dynamic>();
        }
    }
}
