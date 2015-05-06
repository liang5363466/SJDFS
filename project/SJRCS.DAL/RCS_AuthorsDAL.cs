using Devart.Data.Oracle;
using SJRCS.Common;
using SJRCS.DAL.Infrastructure;
using SJRCS.DAL.Interface;
using SJRCS.DALProfile;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL
{
    public class RCS_AuthorsDAL : BaseDAL, IRCS_AuthorsDAL
    {
        #region Constractor
        public RCS_AuthorsDAL()
        {

        }
        #endregion

        public IEnumerable<Dynamic> GetAllAuthors()
        {
            string sql = "Select * From Rcs_Authors";
            return ExecuteObjects(CommandType.Text, sql, null, true);
        }

        public IEnumerable<Dynamic> GetAuthors(int pageIndex, int pageSize, out int pageCount, out int recordCount)
        {
            string allFields = "Id,Name,Url";
            string tableAndWhere = "RCS_Authors";
            string indexField = "Id";
            string orderByField = "Order by Id desc";
            return ExecutePage(allFields, tableAndWhere, indexField, orderByField, pageIndex, pageSize, out pageCount, out recordCount, true);
        }

        public Dynamic GetAuthor(string authorId)
        {
            string sql = "Select * From Rcs_Authors Where Id = :AuthorId";
            OracleParameter[] parameters = {
                new OracleParameter(":AuthorId",authorId)
            };
            return ExecuteObjects(CommandType.Text, sql, parameters, true).FirstOrDefault<Dynamic>();
        }

        public int DeleteAuthor(string authorId)
        {
            string sql = "Delete From Rcs_Authors Where Id = :AuthorId";
            OracleParameter[] parameters = {
                new OracleParameter(":AuthorId",authorId)
            };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }


        public int CreateAuthor(string name, string url)
        {
            return ExecuteTransaction(() => {
                string sql = @"Insert Into Rcs_Authors Values(:AuthorId,:Name,:Url)";
                long authorId = GetNextId("Rcs_Authors");
                OracleParameter[] parameters = {
                    new OracleParameter(":AuthorId",authorId)
                   ,new OracleParameter(":Name",name)
                   ,new OracleParameter(":Url",url)
                };
                return ExecuteNonQuery(CommandType.Text, sql, parameters, false);
            });
           
        }


        public int UpdateAuthor(string authorId, string name, string url)
        {
            string sql = @"Update Rcs_Authors Set Name = :Name ,Url = :Url Where Id = :AuthorId";
            OracleParameter[] parameters = {
                    new OracleParameter(":AuthorId",authorId)
                   ,new OracleParameter(":Name",name)
                   ,new OracleParameter(":Url",url)
                };
            return ExecuteNonQuery(CommandType.Text, sql, parameters, true);
        }
    }
}
