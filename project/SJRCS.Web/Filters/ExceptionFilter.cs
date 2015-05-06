using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SJRCS.Web.Filters
{
    /// <summary>
    /// 异常过滤器，一旦Action中出现异常，则将异常详细信息在Error视图中打印
    /// </summary>
    public class ExceptionFilter : FilterAttribute,IExceptionFilter  
    {
        public void OnException(ExceptionContext filterContext)
        {
            filterContext.Controller.ViewData["Error"] = filterContext;
            filterContext.Controller.ViewData["InnerError"] = filterContext.Exception.InnerException;
            filterContext.Result = new ViewResult()
            {
                ViewName = "Error",
                ViewData = filterContext.Controller.ViewData,
            };
            filterContext.ExceptionHandled = true;
        }
    }
}