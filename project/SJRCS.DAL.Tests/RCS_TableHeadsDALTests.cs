using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SJRCS.DAL.Interface;
using SJRCS.Common;
using SJRCS.Model;
using System.Diagnostics;

namespace SJRCS.DAL.Tests
{
    [TestClass]
    public class RCS_TableHeadsDALTests
    {
        private IRCS_TableHeadsDAL dal;
        public RCS_TableHeadsDALTests()
        {
            dal = new RCS_TableHeadsDAL();
        }

        [TestMethod]
        public void TestAddTableHeadInfo()
        {
            dynamic obj = new Dynamic();
            obj.TableId = 1;
            obj.Name = "哈哈";
            obj.Type = RCS_HeadDataType.Text;
            obj.Code = "1231";
            obj.PointX = 3;
            obj.PointY = 1;
            Assert.AreEqual(dal.AddTableHeadInfo(obj),1);
        }

        [TestMethod]
        public void TestDeleteTableHeadByTableId()
        {
            Assert.AreEqual(dal.DeleteTableHeadByTableId(3), 1);
        }

        [TestMethod]
        public void TestGetTableHeadInfo()
        {
            dynamic obj = dal.GetTableHeadInfo(5);
            Assert.AreNotEqual(obj,null);
            dynamic obj1  = obj.NAME;
        }
    }
}
