using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SJRCS.DAL.Interface;
using SJRCS.DALProfile;

namespace SJRCS.DAL.Tests
{
    [TestClass]
    public class RCS_DeptDALTests
    {
        private IRCS_OrgInfoDAL dal;
        public RCS_DeptDALTests()
        {
            dal = new RCS_OrgInfoDAL();
        }
    }
}
