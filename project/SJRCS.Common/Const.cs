using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace SJRCS.Common
{
    /// <summary>
    /// 只读常量
    /// </summary>
    public class Const
    {
        /// <summary>
        /// Session用户对象键名
        /// </summary>
        public static readonly string SESSION_USER = "USERINFO";

        /// <summary>
        /// 数据存放表表名开始前缀
        /// </summary>
        public static readonly string DATATABLE_NAME_START = "RCS_DATATABLE_";

        /// <summary>
        /// 数据存放表列名开始前缀
        /// </summary>
        public static readonly string DATATABLE_HEAD_START = "HEAD_";

        /// <summary>
        /// 表样导出模板
        /// </summary>
        public static readonly string ExportTemplate = @"AppFiles\ExportTemplate\";

        /// <summary>
        /// 表样上报模板
        /// </summary>
        public static readonly string FillTemplate = @"AppFiles\FillTemplate\";

        /// <summary>
        /// 数据上报临时保存文件夹
        /// </summary>
        public static readonly string FillTemp = @"AppFiles\FillTemp\";

        /// <summary>
        /// 数据导入临时存放文件夹
        /// </summary>
        public static readonly string ImportTemp = @"AppFiles\ImportTemp\";

         /// <summary>
        /// 数据导出临时保存文件夹
        /// </summary>
        public static readonly string ExportTemp = @"AppFiles\ExportTemp\";

        /// <summary>
        /// 已审核数据预览临时保存文件夹
        /// </summary>
        public static readonly string AuditedTemp = @"AppFiles\AuditedTemp\";

        static Const() 
        {
            ExportTemplate = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + ExportTemplate);
            if (!Directory.Exists(ExportTemplate)) Directory.CreateDirectory(ExportTemplate);

            FillTemplate = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + FillTemplate);
            if (!Directory.Exists(FillTemplate)) Directory.CreateDirectory(FillTemplate);

            FillTemp = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + FillTemp);
            if (!Directory.Exists(FillTemp)) Directory.CreateDirectory(FillTemp);

            ImportTemp = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + ImportTemp);
            if (!Directory.Exists(ImportTemp)) Directory.CreateDirectory(ImportTemp);

            ExportTemp = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + ExportTemp);
            if (!Directory.Exists(ExportTemp)) Directory.CreateDirectory(ExportTemp);

            AuditedTemp = Path.Combine(AppDomain.CurrentDomain.BaseDirectory + AuditedTemp);
            if (!Directory.Exists(AuditedTemp)) Directory.CreateDirectory(AuditedTemp);
        }
    }
}
