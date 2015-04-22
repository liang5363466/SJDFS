using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SJRCS.DAL.Interface;
using SJRCS.DALProfile;
using System.Data;
using SJRCS.Model;
using SJRCS.Common;

namespace SJRCS.DAL.Tests
{
    [TestClass]
    public class RCS_UserDALTests
    {
        private IRCS_UserDAL dal;
        public RCS_UserDALTests()
        {
            dal = new RCS_UserDAL();
        }

        [TestMethod]
        public void TestUserLogin()
        {
        }
    }
}
