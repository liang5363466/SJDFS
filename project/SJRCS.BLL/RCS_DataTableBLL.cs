using SJRCS.BLL.Infrastructure;
using SJRCS.BLL.Interface;
using SJRCS.Common;
using SJRCS.DAL.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.BLL
{
    public class RCS_DataTableBLL : BaseBLL, IRCS_DataTableBLL
    {
        private IRCS_DataTableDAL dal;
        public RCS_DataTableBLL(IRCS_DataTableDAL dal)
        {
            this.dal = dal;
        }
    }
}
