using SJRCS.BLL.Interface;
using SJRCS.Web.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Autofac;
using SJRCS.Common;
using Webdiyer.WebControls.Mvc;
namespace SJRCS.Web.Controllers
{
    public class ContactController : BaseController
    {
        private IRCS_ContactsBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_ContactsBLL>();
        private IRCS_UserBLL userBll = BootStrapper.AutofacContainer.Resolve<IRCS_UserBLL>();

        public ActionResult Main()
        {
            return View();
        }
        public ActionResult OrgUsers(string orgCode, int pageIndex = 1)
        {
            int pageCount, recordCount;
            IEnumerable<dynamic> users = userBll.GetOrgUsers(SessionUser.UserId,orgCode, pageIndex, 10, out pageCount, out recordCount);
            var model = new PagedList<dynamic>(users, pageIndex, 10, recordCount);
            return View(model);
        }

        [HttpPost]
        public ActionResult SetContactUser(string userId)
        {
            bool isSuccess = bll.AddContact(SessionUser.UserId, userId);
            return isSuccess ? Content("1") : Content("0");
        }

        public ActionResult Contacts(int pageIndex = 1)
        {
            int pageCount, recordCount;
            IEnumerable<dynamic> contacts = bll.GetContacts(SessionUser.UserId,pageIndex, 10, out pageCount, out recordCount);
            var model = new PagedList<dynamic>(contacts, pageIndex, 10, recordCount);
            return View(model);
        }

        public ActionResult AllContacts(long tableId)
        {
            var model = bll.GetAllContacts(SessionUser.UserId, tableId);
            return View("UserContacts", model);
        }

        [HttpPost]
        public ActionResult RemoveContact(string id)
        {
            bool isSuccess = bll.DeleteContact(SessionUser.UserId, id);
            return isSuccess ? Content("1") : Content("0");
        }
    }
}