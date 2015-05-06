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
    public class OrgController : BaseController
    {
        private IRCS_OrgInfoBLL bll = BootStrapper.AutofacContainer.Resolve<IRCS_OrgInfoBLL>();

        public ActionResult GetOrgInfos(string parentOrgCode)
        {
            IEnumerable<dynamic> orgInfos ;
            if (parentOrgCode == null)
                orgInfos = bll.GetRootOrgInfo();
            else
                orgInfos = bll.GetChildOrgInfos(parentOrgCode);
            var jsonResult = orgInfos.Select(c => new { Code = c.ORG_CODE, Name = c.ORG_NAME,HasChild = c.CHILD_COUNT > 0 });
            return Json(jsonResult, JsonRequestBehavior.AllowGet);
        }
    }
}
