using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace SJRCS.DALProfile
{
    /// <summary>
    /// 数据库连接字符串配置类
    /// </summary>
    public class DBConfig
    {
        public static string SJDFS_DB = ConfigurationManager.ConnectionStrings["SJDFS_DB"].ConnectionString;
        public static string JYJYDW_DB = ConfigurationManager.ConnectionStrings["JYJYDW_DB"].ConnectionString;
        public static string JSDM_DB = ConfigurationManager.ConnectionStrings["JSDM_DB"].ConnectionString;
        public static int TimeOut = 30;
    }
}
