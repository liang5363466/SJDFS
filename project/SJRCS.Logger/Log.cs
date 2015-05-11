using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace SJRCS.Logger
{
    public class Log
    {
        private static object obj = new object();

        public static void Write(LogType type,string content) 
        {
            lock (obj)
            {
                string fileName = Const.AppLogs + DateTime.Now.ToString("yyyy-MM-dd") + ".html";
                if (!File.Exists(fileName))File.Copy(LogConfig.TEMPLATE, fileName);

                string tag = string.Empty, logContent = string.Empty;
                using (FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read))
                {
                    using (StreamReader sr = new StreamReader(fs))
                    {
                        tag = sr.ReadToEnd();
                        tag = tag.Replace("$title$", DateTime.Now.ToString("yyyy年MM月dd日志"));
                        switch (type)
                        {
                            case LogType.Info:
                                logContent = string.Format(@"<tbody><tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>", "运行日志", DateTime.Now.ToString("HH时mm分ss秒"), content);
                                break;
                            case LogType.Exp:
                                logContent = string.Format(@"<tbody><tr class='Exp'><td>{0}</td><td>{1}</td><td>{2}</td></tr>", "系统异常", DateTime.Now.ToString("HH时mm分ss秒"), content);
                                break;
                        }
                        tag = tag.Replace("<tbody>", logContent);
                    }
                }

                using (FileStream fs = new FileStream(fileName, FileMode.Create, FileAccess.Write))
                {
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        sw.Write(tag);
                    }
                }
            }    
        }

    }
}
