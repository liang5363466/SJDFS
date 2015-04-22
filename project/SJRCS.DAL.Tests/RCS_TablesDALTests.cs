using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SJRCS.DAL.Interface;
using System.Data;
using SJRCS.Model;
using SJRCS.Common;
using System.Collections.Generic;

namespace SJRCS.DAL.Tests
{
    [TestClass]
    public class RCS_TablesDALTests
    {
        private IRCS_TablesDAL dal;
        public RCS_TablesDALTests()
        {
            dal = new RCS_TablesDAL();
        }

        [TestMethod]
        public void TestAddTable()
        {
            
        }

        [TestMethod]
        public void TestDeleteTable()
        {
            Assert.AreEqual(dal.DeleteTable(30), 1);
        }

        [TestMethod]
        public void TestUpdateTable()
        {
            dynamic obj = new Dynamic();
            obj.Id = 31;
            obj.Name = "清障大队";
            obj.FileName = "test.xls";
            obj.DataTable = "RCS_DataTable_test";
            obj.DataStartX = 2;
            obj.DataStartY = 2;
            obj.UpLoader = 2;
            obj.CreateTime = DateTime.Now;
            obj.Descript = "请按格式规范填写222";
            obj.IsPublished = 1;
            obj.IsAllowReport = 1;
            obj.Type = RCS_TableType.Cycle;
            Assert.AreEqual(dal.UpdateTable(obj), 1);
        }

        [TestMethod]
        public void TestGetTablesByUploaderId()
        {
            int pageCount, recordCount;
        }
        [TestMethod]
        public void TestGetAuditorTableDataStatis()
        {
        }

        [TestMethod]
        public void TestGetReporterTableDataStatis()
        {
        }
    }
}
