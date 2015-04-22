using SJRCS.Web.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SJRCS.Web.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Main()
        {
            ViewBag.UserName = SessionUser.UserName;
            ViewBag.Powers = SessionUser.Powers;
            return View();
        }
    }
}
