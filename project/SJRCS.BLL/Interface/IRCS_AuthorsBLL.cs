using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL.Interface
{
    public interface IRCS_AuthorsBLL
    {
        IEnumerable<Dynamic> GetAllAuthors();

        IEnumerable<Dynamic> GetAuthors(int pageIndex, int pageSize, out int pageCount, out int recordCount);

        Dynamic GetAuthor(string authorId);

        bool DeleteAuthor(string authorId);

        bool CreateAuthor(string name, string url);

        bool UpdateAuthor(string authorId, string name, string url);
    }
}
