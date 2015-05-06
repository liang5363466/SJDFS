using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 表样表头信息表操作数据访问接口
    /// </summary>
    public interface IRCS_TableHeadsDAL
    {
        /// <summary>
        /// 根据表头id获取表头单元格信息
        /// </summary>
        /// <param name="headId">表头Id</param>
        /// <returns>表头单元格信息</returns>
        Dynamic GetTableHeadInfo(long headId);

        /// <summary>
        /// 根据表样id获取表头单元格信息集合
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>表头单元格信息集合</returns>
        IEnumerable<Dynamic> GetTableHeadInfosByTableId(long tableId);

        /// <summary>
        /// 添加一个表头信息
        /// <para>1：添加成功 0：添加失败</para>
        /// </summary>
        /// <param name="headInfo">表头信息</param>
        /// <returns>添加结果</returns>
        int AddTableHeadInfo(Dynamic headInfo);

        /// <summary>
        /// 根据表样Id删除该表样的表头信息
        /// <para>1：删除成功 0：删除失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>删除结果</returns>
        int DeleteTableHeadByTableId(long tableId);
    }
}
