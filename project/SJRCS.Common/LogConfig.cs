using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace SJRCS.Common
{
    public class LogConfig
    {
        public static readonly string FOLDER;
        public static readonly string TEMPLATE;

        static LogConfig() 
        {
            FOLDER = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + @"AppLogs\");
            if (!Directory.Exists(FOLDER)) Directory.CreateDirectory(FOLDER);

            TEMPLATE = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + "bin\\LogTemplate.txt");
            
        }
    }
}
