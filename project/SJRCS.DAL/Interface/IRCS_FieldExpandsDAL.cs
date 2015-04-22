using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 扩展字段表操作数据访问接口
    /// </summary>
    public interface IRCS_FieldExpandsDAL
    {

        /// <summary>
        /// 根据表样Id删除该表样的扩展字段
        /// <para>1:删除成功 0：删除失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>删除结果</returns>
        int DeleteTableFieldExpandByTableId(long tableId);

        /// <summary>
        /// 添加一个扩展字段
        /// <para>1：添加成功 0：添加失败</para>
        /// </summary>
        /// <param name="fieldExpand">扩展字段信息</param>
        /// <returns>添加结果</returns>
        int AddFieldExpand(Dynamic fieldExpand);


        /// <summary>
        /// 根据数据主键，删除一个扩展字段
        /// <para>1：删除成功 0：删除失败</para>
        /// </summary>
        /// <param name="dataId">数据主键</param>
        /// <returns>删除结果</returns>
        int DeleteFieldExpandByDataId(long dataId);

        /// <summary>
        /// 根据数据主键，更新一个扩展字段
        /// <para>1：更新成功 0：更新失败</para>
        /// </summary>
        /// <param name="dataId">数据主键</param>
        /// <returns>更新结果</returns>
        int UpdateFieldExpandByDataId(Dynamic fieldExpand);
    }
}
