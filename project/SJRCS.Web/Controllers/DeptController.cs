using SJRCS.BLL.Interface;
using SJRCS.Web.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Autofac;
using SJRCS.Common;
namespace SJRCS.Web.Controllers
{
    public class DeptController : BaseController
    {
        private IRCS_DeptBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_DeptBLL>();

        public ActionResult GetOrgInfos()
        {
            IEnumerable<dynamic> orgInfos = bll.GetAllOrgInfos();
            var jsonResult = orgInfos.Select(c => new { Code = c.ORG_CODE, Name = c.ORG_CNAME });
            return Json(jsonResult, JsonRequestBehavior.AllowGet);
        }
    }
}
