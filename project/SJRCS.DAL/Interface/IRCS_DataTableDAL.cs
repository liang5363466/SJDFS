using SJRCS.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 数据存放表操作数据访问接口
    /// </summary>
    public interface IRCS_DataTableDAL
    {
        /// <summary>
        /// 创建一张用于存放表样数据的DataTable表
        /// <para>1：创建成功 0：创建失败</para>
        /// </summary>
        /// <param name="dataTableName">表格名</param>
        /// <returns>创建结果</returns>
        int CreateDataTable(IEnumerable<Dynamic> headInfos,string dataTableName);

        /// <summary>
        /// 根据审核Id获取用户提交的数据
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <returns>单元格数据集合</returns>
        IEnumerable<Dynamic>  GetUserCommitData(long auditId);

        /// <summary>
        /// 保存用户提交的单元格数据
        /// <para>1：保存成功 0：保存失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <param name="headInfos">表头信息集合</param>
        /// <param name="datas">单元格数据集合</param>
        /// <returns>保存结果</returns>
        int SaveUserCommitData(string tableName, IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> datas);

        /// <summary>
        /// 根据数据存放表的名称删除数据存放表
        /// </summary>
        /// <param name="dataTableName">数据存放表名称</param>
        /// <returns></returns>
        int DeleteDataTableByName(string dataTableName);

        /// <summary>
        /// 根据审核id删除审核数据
        /// <para>1：删除成功，0：删除失败</para>
        /// </summary>
        /// <param name="auditId">审核id</param>
        /// <returns>删除结果</returns>
        int DeleteDataByAuditId(long auditId);
    }
}
