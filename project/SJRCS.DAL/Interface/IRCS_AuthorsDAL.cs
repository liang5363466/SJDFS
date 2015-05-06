using SJRCS.Common;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 权限操作数据访问接口
    /// </summary>
    public interface IRCS_AuthorsDAL
    {
        IEnumerable<Dynamic> GetAllAuthors();

        IEnumerable<Dynamic> GetAuthors(int pageIndex, int pageSize, out int pageCount, out int recordCount);

        Dynamic GetAuthor(string authorId);

        int DeleteAuthor(string authorId);

        int CreateAuthor(string name, string url);

        int UpdateAuthor(string authorId, string name, string url);
    }
}
