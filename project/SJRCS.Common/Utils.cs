using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace SJRCS.Common
{
    /// <summary>
    /// 通用方法类
    /// </summary>
    public class Utils
    {
        /// <summary>
        /// 生成数据存放表表名
        /// </summary>
        /// <returns></returns>
        public static string GenerateDataTableName()
        {
            return (Const.DATATABLE_NAME_START + NewUnique(13)).ToUpper();
        }

        /// <summary>
        /// textarea字符串字符处理
        /// </summary>
        /// <param name="Input"></param>
        /// <returns></returns>
        public static string TaToHtml(string Input)
        {
            StringBuilder sb = new StringBuilder(Input);
            sb.Replace("\r\n", "<br/>");
            sb.Replace("\n", "<br/>");
            sb.Replace("\t", " ");
            sb.Replace(" ", "&nbsp;");
            return sb.ToString();
        }

        /// <summary>
        /// 生成数据存放表唯一列名
        /// </summary>
        /// <returns></returns>
        public static string GenerateTableHeadCode()
        {
            return Const.DATATABLE_HEAD_START + NewUnique(8).ToUpper();
        }

        /// <summary>
        /// 生成Guid唯一码
        /// </summary>
        /// <returns></returns>
        public static string NewGuid()
        {
            return Guid.NewGuid().ToString("N").ToUpper();
        }

        /// <summary>
        /// 生成指定位数的唯一码，位数越小重复概率越大
        /// </summary>
        /// <param name="maxSize">位数</param>
        /// <returns>唯一码</returns>
        public static string NewUnique(int maxSize)
        {
            char[] chars = new char[62];
            chars =
            "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
            byte[] data = new byte[1];
            RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
            crypto.GetNonZeroBytes(data);
            data = new byte[maxSize];
            crypto.GetNonZeroBytes(data);
            StringBuilder result = new StringBuilder(maxSize);
            foreach (byte b in data)
            {
                result.Append(chars[b % (chars.Length - 1)]);
            }
            return result.ToString();
        }
    }
}
