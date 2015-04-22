using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SJRCS.DAL.Interface;
using SJRCS.Common;

namespace SJRCS.DAL.Tests
{
    [TestClass]
    public class RCS_FieldExpandsDALTests
    {
        private IRCS_FieldExpandsDAL dal;
        public RCS_FieldExpandsDALTests()
        {
            dal = new RCS_FieldExpandsDAL();
        }

        [TestMethod]
        public void TestAddFieldExpand()
        {
            dynamic obj = new Dynamic();
            obj.DataPkey = "111";
            obj.TableName = "尼玛";
            obj.Code = 1;
            obj.Value = 1;
            Assert.AreEqual(dal.AddFieldExpand(obj), 1);
        }

        [TestMethod]
        public void TestUpdateFieldExpandByDataId()
        {
            dynamic obj = new Dynamic();
            obj.Id = 2;
            obj.DataPkey = 222;
            obj.TableName = "隔壁";
            obj.Code = "222";
            obj.Value = "2222";
            Assert.AreEqual(dal.UpdateFieldExpandByDataId(obj), 1);
        }
    }
}
