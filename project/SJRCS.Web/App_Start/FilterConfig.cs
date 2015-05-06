using SJRCS.Web.Filters;
using System.Web;
using System.Web.Mvc;

namespace SJRCS.Web
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            //filters.Add(new ExceptionFilter());
            filters.Add(new HandleErrorAttribute());
        }
    }
}