using SJRCS.Common;
using SJRCS.Model;
using SJRCS.Web.Filters;
using System;
using System.Collections.Generic;
using System.IO.Compression;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace SJRCS.Web.Common
{
    [SessionFilter, ExceptionFilter]
    public class BaseController:Controller
    {
        /// <summary>
        /// Session用户对象
        /// </summary>
        protected SessionUser SessionUser
        {
            get 
            {
               return Session[Const.SESSION_USER] as SessionUser;
            }
            set 
            {
                Session[Const.SESSION_USER] = value;
            }
        }
       

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            SetBrowserNoCache(filterContext.HttpContext.Response);
            CompressFilter(filterContext);
        }

        #region 私有方法
        /// <summary>
        /// 设置浏览器禁用缓存
        /// </summary>
        /// <param name="response"></param>
        private void SetBrowserNoCache(HttpResponseBase response)
        {
            response.Cache.SetCacheability(HttpCacheability.NoCache);
            response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            response.Expires = 0;
        }

        /// <summary>
        /// 为页面启用GZIP压缩
        /// </summary>
        private void CompressFilter(ActionExecutingContext filterContext)
        {
            HttpRequestBase request = filterContext.HttpContext.Request;

            string acceptEncoding = request.Headers["Accept-Encoding"];

            if (string.IsNullOrEmpty(acceptEncoding)) return;

            acceptEncoding = acceptEncoding.ToUpperInvariant();

            HttpResponseBase response = filterContext.HttpContext.Response;

            if (acceptEncoding.Contains("GZIP"))
            {
                response.AppendHeader("Content-encoding", "gzip");
                response.Filter = new GZipStream(response.Filter, CompressionMode.Compress);
            }
            else if (acceptEncoding.Contains("DEFLATE"))
            {
                response.AppendHeader("Content-encoding", "deflate");
                response.Filter = new DeflateStream(response.Filter, CompressionMode.Compress);
            }
        }
        #endregion

        #region 子类控制器通用操作
        protected byte[] GetServerFileBytes(string path, bool isDelete)
        {
            System.IO.FileStream fs = null;
            byte[] data = null;
            try
            {
                fs = System.IO.File.OpenRead(path);
                data = new byte[fs.Length];
                fs.Read(data, 0, data.Length);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (fs != null) 
                    fs.Close();
                if (isDelete)
                    System.IO.File.Delete(path);
                
            }
            return data;
        }

        #endregion
    }
}