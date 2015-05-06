using DataConvert.Logger;
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
            Log.Write(LogType.Exp, filterContext.Exception.Message+"内容："+filterContext.Exception.StackTrace);
            if (filterContext.Exception.InnerException != null) 
            {
                Log.Write(LogType.Exp, filterContext.Exception.InnerException.Message + "内容：" + filterContext.Exception.InnerException.StackTrace);
            }
            filterContext.Result = new ViewResult() { ViewName = "Error" };
            filterContext.ExceptionHandled = true;
        }
    }
}