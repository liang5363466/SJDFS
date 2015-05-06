using SJRCS.Common;
using SJRCS.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SJRCS.DAL.Interface
{
    /// <summary>
    /// 数据审核操作数据访问接口
    /// </summary>
    public interface IRCS_DataAuditsDAL
    {
        /// <summary>
        /// 根据状态分页获取提交的审核数据
        /// </summary>
        /// <param name="pageIndex">页码</param>
        /// <param name="pageSize">每页显示数据条数</param>
        /// <param name="pageCount">总页数</param>
        /// <param name="recordCount">数据总条数</param>
        /// <param name="auditStatus">审核状态
        ///     <para>参见：SJRCS.Model.RCS_AuditStatus</para>
        /// </param>
        /// <returns>数据列表</returns>
        IEnumerable<Dynamic> GetAuditDataByAuditorId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string auditorId, int auditStatus);

        /// <summary>
        /// 根据状态和用户Id分页获取用户提交的审核数据
        /// </summary>
        /// <param name="pageIndex">页码</param>
        /// <param name="pageSize">每页显示数据条数</param>
        /// <param name="pageCount">总页数</param>
        /// <param name="recordCount">数据总条数</param>
        /// <param name="reporterId">用户Id</param>
        /// <param name="auditStatus">审核状态
        ///     <para>参见：SJRCS.Model.RCS_AuditStatus</para>
        /// </param>
        /// <returns>数据列表</returns>
        IEnumerable<Dynamic> GetAuditDataByWriterId(int pageIndex, int pageSize, out int pageCount, out int recordCount, long tableId, string reporterId, int auditStatus);

        /// <summary>
        /// 获取审核数据详细
        /// </summary>
        /// <param name="auditId">审核id</param>
        /// <returns>数据详细</returns>
        Dynamic GetAuditDataDetail(long auditId);

        /// <summary>
        /// 获取已审核的数据
        /// </summary>
        /// <param name="auditId">审核id</param>
        /// <returns>已审核的数据集合</returns>
        IEnumerable<Dynamic> GetAuditedData(long auditId);

        /// <summary>
        /// 检查审核数据名称是否已经存在
        /// <para>true：已存在，false：不存在</para>
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <param name="auditName">审核数据名称</param>
        /// <returns>true：已存在，false：不存在</returns>
        bool CheckAuditNameIsExist(long? auditId,string auditName);

        /// <summary>
        /// 更新审核意见
        /// <para>1：更新成功，0：更新失败</para>
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <param name="opinion">审核意见</param>
        /// <returns>1：更新成功，0：更新失败</returns>
        int UpdateAuditOpinion(long auditId, string opinion);

        /// <summary>
        /// 更新审核数据名称
        /// <para>1：更新成功，0：更新失败</para>
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <param name="opinion">审核数据名称</param>
        /// <returns>1：更新成功，0：更新失败</returns>
        int UpdateAuditDataName(long auditId, string auditName, DateTime reportTime);

        /// <summary>
        /// 添加一条审核数据
        /// <para>1：添加成功，0：添加失败</para>
        /// </summary>
        /// <param name="auditData">数据对象</param>
        /// <returns>添加结果</returns>
        int AddAuditData(dynamic auditData);

        /// <summary>
        /// 更改一条用户上报的数据的状态
        /// <para>1：更改成功 0：更改失败</para>
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <param name="auditStatus">审核状态
        ///     <para>参见：SJRCS.Model.RCS_AuditStatus</para>
        /// </param>
        /// <returns>更改结果</returns>
        int AuditData(long auditId, int auditStatus);

        /// <summary>
        /// 删除一条审核数据
        /// <para>1：删除成功 0：删除失败</para>
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <returns>删除结果</returns>
        int DeleteAuditData(long auditId);

        /// <summary>
        /// 根据表样Id删除审核数据
        /// <para>1：删除成功 0：删除失败</para>
        /// </summary>
        /// <param name="tableId">表样Id</param>
        /// <returns>删除结果</returns>
        int DeleteAuditDataByTableId(long tableId);

        /// <summary>
        /// 审核通过，并入库一条数据
        /// <para>1：入库成功 0：入库失败</para>
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <param name="headInfos">表头信息集合</param>
        /// <param name="cellData">单元格数据集合</param>
        /// <returns>入库结果</returns>
        int PassAuditData(long auditId, string auditor, IEnumerable<Dynamic> headInfos, IEnumerable<Dynamic> cellData);

        /// <summary>
        /// 将一条审核数据设为不通过
        /// <para>1：设置成功 0：设置失败</para>
        /// </summary>
        /// <param name="auditId">审核Id</param>
        /// <param name="auditor">审核人Id</param>
        /// <returns>1：设置成功 0：设置失败</returns>
        int UnPassAuditData(long auditId, string auditor);
    }
}
