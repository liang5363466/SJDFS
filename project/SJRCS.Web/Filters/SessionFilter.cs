using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace SJRCS.Web.Filters
{
    /// <summary>
    /// 会话判断过滤器，一旦会话消失，则提醒用户重新登录
    /// </summary>
    public class SessionFilter : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            bool IsPluginLogin = filterContext.HttpContext.Request.Url.ToString().Contains("User/UserLogin");
            bool IsUserLogin = filterContext.HttpContext.Request.Url.ToString().Contains("User/Login");
            bool IsSessionOut = filterContext.HttpContext.Session[Const.SESSION_USER] == null;
            if (!IsUserLogin && !IsPluginLogin && IsSessionOut)
            {
               filterContext.HttpContext.Response.Redirect("/ErrorPage/SessionOut.html");
            }
            base.OnActionExecuting(filterContext);
        }
    }
}