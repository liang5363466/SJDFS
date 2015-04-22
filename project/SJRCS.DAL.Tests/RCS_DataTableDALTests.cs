using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SJRCS.DAL.Interface;
using SJRCS.Common;

namespace SJRCS.DAL.Tests
{
    [TestClass]
    public class RCS_DataTableDALTests
    {
        /**/
        private IRCS_DataTableDAL dal;
        public RCS_DataTableDALTests()
        {
            dal = new RCS_DataTableDAL();
            String a = "";
        }
    }
}
