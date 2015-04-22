using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SJRCS.DAL.Interface;

namespace SJRCS.DAL.Tests
{
    [TestClass]
    public class RCS_DataAuditsDALTests
    {
        private IRCS_DataAuditsDAL dal;
        public RCS_DataAuditsDALTests()
        {
            dal = new RCS_DataAuditsDAL();
        }


        [TestMethod]
        public void TestAuditData()
        {
            Assert.AreEqual(dal.AuditData(1,2), 1);
        }

        [TestMethod]
        public void TestDeleteAuditData()
        {
            Assert.AreEqual(dal.DeleteAuditData(1), 1);
        }
    }
}
