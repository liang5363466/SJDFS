using Devart.Data.Oracle;
using SJRCS.Common;
using SJRCS.DAL.Infrastructure;
using SJRCS.DAL.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL
{
    public class RCS_ContactsDAL : BaseDAL, IRCS_ContactsDAL
    {
        #region Constractor
        public RCS_ContactsDAL()
        {
        }
        #endregion

        public IEnumerable<dynamic> GetContacts(string userId, int pageIndex, int pageSize, out int pageCount, out int recordCount)
        {
            IRCS_UserDAL pvtUserDAL = new RCS_UserDAL();
            string allFields = "a.Contact_Id";
            string tableAndWhere = "Rcs_Contacts a Where a.User_Id = '" + userId+"'";
            string indexField = "a.Create_Time ";
            string orderByField = "Order by a.Create_Time desc";
            IEnumerable<dynamic> contactors = ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount, true);
            IEnumerable<dynamic> allUsers = pvtUserDAL.GetALlUsers();
            return 
            contactors.Join(
                allUsers
               ,a => a.CONTACT_ID
               ,b => b.USER_ID
               ,(a, b) => {
                    return b;
                }
            ).AsEnumerable<dynamic>();
        }

        public IEnumerable<dynamic> GetAllContacts(string userId, long tableId)
        {
            
            string sql =
            @"Select a.Contact_Id ,(Select Count(c.Id) From Rcs_FillRules c Where c.Reporter = a.Contact_Id And c.Table_Id = :tableId) as SetCount 
            From Rcs_Contacts a 
            Where a.User_Id = :userId";
            OracleParameter[] parameters = { 
                 new OracleParameter(":tableId",tableId) 
                ,new OracleParameter(":userId",userId)
            };
            IEnumerable<dynamic> contactors = ExecuteObjects(CommandType.Text, sql, parameters, true);
            IRCS_UserDAL pvtUserDAL = new RCS_UserDAL();
            IEnumerable<dynamic> allUsers = pvtUserDAL.GetALlUsers();
            return contactors.Join(
              allUsers
             ,a => a.CONTACT_ID
             ,b => b.USER_ID
             ,(a, b) =>{
                 dynamic c = new Dynamic();
                 c.ISSET = a.SETCOUNT > 0;
                 c.USER_ID = b.USER_ID;
                 c.ORG_ID = b.ORG_ID;
                 c.DISPLAY_NAME = b.DISPLAY_NAME;
                 return c;
             }
          ).AsEnumerable<dynamic>();
        }

        public int AddContact(string userId, string contactId)
        {
            string sql = "Insert Into Rcs_Contacts Values(:UserId,:ContactId,:CreateTime)";
            OracleParameter[] parameters = { 
                 new OracleParameter(":UserId",userId) 
                ,new OracleParameter(":ContactId",contactId)
                ,new OracleParameter(":CreateTime",DateTime.Now)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public int DeleteContact(string userId, string contactId)
        {
            string sql = "Delete From Rcs_Contacts Where User_Id = :UserId And Contact_Id = :ContactId";
            OracleParameter[] parameters = { 
                 new OracleParameter(":UserId",userId) 
                ,new OracleParameter(":ContactId",contactId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public IEnumerable<dynamic> GetUserAllContacts(string userId)
        {
            string sql = "Select * From Rcs_Contacts Where User_Id = :UserId";
            OracleParameter[] parameters = { 
                 new OracleParameter(":UserId",userId) 
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, false).AsEnumerable<dynamic>();
        }
    }
}
