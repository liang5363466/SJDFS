using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace SJRCS.Excel
{
    public abstract class AnalyseExcel : IDisposable
    {
        private bool m_disposed;
        protected Application application = new ApplicationClass() { Visible = false, DisplayAlerts = false };
        protected object miss = Missing.Value;

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (!m_disposed)
            {
                application.Workbooks.Close();
                application.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(application);
                application = null;
                GC.Collect();
                m_disposed = true;
            }
        }

        ~AnalyseExcel()
        {
            Dispose(false);
        }
    }
}
