using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using SJRCS.Common;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 表样操作数据访问接口
    /// </summary>
    public interface IRCS_TablesDAL
    {
        /// <summary>
        /// 以分页形式获取上传人所上传的表样数据
        /// </summary>
        /// <param name="pageIndex">页码</param>
        /// <param name="pageSize">每页显示数据条数</param>
        /// <param name="pageCount">总页数</param>
        /// <param name="recordCount">数据总条数</param>
        /// <param name="uploaderId">表样上传人Id</param>
        /// <returns>表样数据列表</returns>
        IEnumerable<Dynamic> GetTablesByUploaderId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string uploaderId);

        /// <summary>
        /// 以分页形式获取用户所需填写的表样数据
        /// </summary>
        /// <param name="pageIndex">页码</param>
        /// <param name="pageSize">每页显示数据条数</param>
        /// <param name="pageCount">总页数</param>
        /// <param name="recordCount">数据总条数</param>
        /// <param name="uploaderId">用户Id</param>
        /// <returns>表样数据列表</returns>
        IEnumerable<Dynamic> GetTablesByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, string writerId);

        /// <summary>
        /// 以分页形式获取审核者表样列表
        /// </summary>
        /// <param name="pageIndex">页码</param>
        /// <param name="pageSize">每页显示数据条数</param>
        /// <param name="pageCount">总页数</param>
        /// <param name="recordCount">数据总条数</param>
        /// <param name="uploaderId">审核人Id</param>
        /// <returns>表样数据列表</returns>
        IEnumerable<Dynamic> GetAuditorTables(int pageIndex, int pageSize, out int pageCount, out int recordCount, string auditorId);

        /// <summary>
        /// 更新一个表样
        /// <para>1：更新成功 0：更新失败</para>
        /// </summary>
        /// <param name="updateTable">被更新的表样</param>
        /// <returns>更新结果</returns>
        int UpdateTable(Dynamic updateTable);

        /// <summary>
        /// 设置表样状态，即允许或禁止上报
        /// <para>1：设置成功，0：设置失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <param name="status">表样状态</param>
        /// <returns>设置结果</returns>
        int UpdateTableStatus(long tableId, int status);

        /// <summary>
        /// 添加一个新表样
        /// <para>1：添加成功 0：添加失败</para>
        /// </summary>
        /// <param name="newTable">新表样对象</param>
        /// <returns>添加结果</returns>
        int AddTable(Dynamic newTable);

        /// <summary>
        /// 根据表样Id获取表样信息
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>表样信息</returns>
        Dynamic GetTableByTableId(long tableId);

        /// <summary>
        /// 根据表样Id删除一个表样
        /// <para>1：删除成功 0：删除失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>删除结果</returns>
        int DeleteTable(long tableId);

        /// <summary>
        /// 发布一个表样
        /// <para>1：发布成功 0:发布失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>发布结果</returns>
        int PublishTable(long tableId);

        /// <summary>
        /// 获取导出数据列表
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <param name="auditor">审核者id</param>
        /// <param name="startDate">起始日期</param>
        /// <param name="endDate">截止日期</param>
        /// <returns>导出数据列表</returns>
        IEnumerable<Dynamic> GetExportAuditedData(long tableId, string auditor, DateTime startDate, DateTime endDate);

        /// <summary>
        /// 获取所有已发布的周期性填报表样
        /// </summary>
        /// <returns>已发布表样列表</returns>
        IEnumerable<Dynamic> GetAllPublishedTablesByType(int tableType);

        /// <summary>
        /// 检查表样名称是否已经存在
        /// <para>true：已存在，false：不存在</para>
        /// </summary>
        /// <param name="tableName">表样Id</param>
        /// <param name="tableName">表样名称</param>
        /// <returns>true：已存在，false：不存在</returns>
        bool CheckTableNameIsExist(long? tableId, string tableName);

        /// <summary>
        /// 设置表样是否在填报周期内
        /// <para>1：设置成功 0:设置失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <param name="isInCycle">是否在填报周期内</param>
        /// <returns>1：设置成功 0:设置失败</returns>
        int SetTableIsInCycle(long tableId, int isInCycle);
    }
}
