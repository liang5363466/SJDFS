using SJRCS.BLL.Interface;
using SJRCS.Web.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Autofac;
using SJRCS.Common;
using SJRCS.Model;
using Webdiyer.WebControls.Mvc;
namespace SJRCS.Web.Controllers
{
    public class UserController : BaseController
    {
        private IRCS_UserBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_UserBLL>();

        private IRCS_FillRulesBLL filRuleBll = BootStrapper.AutofacContainer.Resolve<IRCS_FillRulesBLL>();

        public ActionResult OrgUsers(string orgCode, long tableId)
        {
            var model = bll.GetTableOrgUsers(orgCode,tableId);
            return View(model);
        }

        public ActionResult ReportUsers(long tableId,string orgCode)
        {
            var model = bll.GetFillUsers(tableId);
            return View(model);
        }

        public ActionResult UserLogin(string userid)
        {
            if (!string.IsNullOrEmpty(userid))
            {
                dynamic loginUser = bll.UserLogin(userid);
                if (loginUser != null)
                {
                    SessionUser = new SessionUser() {
                        UserId = loginUser.USER_ID
                       ,OrgId = loginUser.ORG_ID
                       ,OrgName = loginUser.ORG_NAME
                       ,UserName = loginUser.DISPLAY_NAME
                       ,Powers = loginUser.POWERS
                    };
                    return RedirectToAction("Main", "Home");
                }
            }
            return Content("LoginError");
        }


        public ActionResult Login(string userid)
        {
            if (!string.IsNullOrEmpty(userid))
            {
                dynamic loginUser = bll.UserLogin(userid);
                if (loginUser != null)
                {
                    SessionUser = new SessionUser() {
                        UserId = loginUser.USER_ID
                       ,OrgId = loginUser.ORG_ID
                       ,OrgName = loginUser.ORG_NAME
                       ,UserName = loginUser.DISPLAY_NAME
                       ,Powers = loginUser.POWERS
                    };
                    return RedirectToAction("Main", "Home");
                }
            }
            return View();
        }

        public ActionResult LoginOut()
        {
            SessionUser = null;
            return RedirectToAction("Login", "User");
        }

        public ActionResult SetFillUser(string userId,long tableId)
        {
            bool isSuccess = filRuleBll.SetFillUser(userId, tableId);
            return isSuccess ? Content("1") : Content("0");
        }

        public ActionResult RemoveFillUser(string userId, long tableId)
        {
            bool isSuccess = filRuleBll.RemoveFillUser(userId, tableId);
            return isSuccess ? Content("1") : Content("0");
        }
    }
}
