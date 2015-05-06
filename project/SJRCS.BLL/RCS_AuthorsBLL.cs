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

    public class RCS_AuthorsBLL : BaseBLL, IRCS_AuthorsBLL
    {
        private IRCS_AuthorsDAL dal;
        public RCS_AuthorsBLL(IRCS_AuthorsDAL dal)
        {
            this.dal = dal;
        }

        public IEnumerable<Dynamic> GetAllAuthors()
        {
            return dal.GetAllAuthors();
        }

        public IEnumerable<Dynamic> GetAuthors(int pageIndex, int pageSize, out int pageCount, out int recordCount)
        {
            return dal.GetAuthors(pageIndex, pageSize, out pageCount, out recordCount);
        }

        public Dynamic GetAuthor(string authorId)
        {
            return dal.GetAuthor(authorId);
        }

        public bool DeleteAuthor(string authorId)
        {
            return dal.DeleteAuthor(authorId) > 0;
        }

        public bool CreateAuthor(string name, string url)
        {
            return dal.CreateAuthor(name, url) > 0;
        }


        public bool UpdateAuthor(string authorId, string name, string url)
        {
            return dal.UpdateAuthor(authorId, name, url) > 0;
        }

      
    }
}
