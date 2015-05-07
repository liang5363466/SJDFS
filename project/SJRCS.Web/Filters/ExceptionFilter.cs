using SJRCS.Logger;
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
            Log.Write(LogType.Exp, "消息：" + filterContext.Exception.Message + "<br/>内容：" + filterContext.Exception.StackTrace.Replace("\r\n","<br/>"));
            if (filterContext.Exception.InnerException != null) 
            {
                Log.Write(LogType.Exp, "消息：" + filterContext.Exception.InnerException.Message + "<br/>内容：" + filterContext.Exception.InnerException.StackTrace.Replace("\r\n", "<br/>"));
            }
            filterContext.Result = new ViewResult() { ViewName = "Error" };
            filterContext.ExceptionHandled = true;
        }
    }
}