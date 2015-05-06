$(function () {
    $('button[operate="download"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        window.location = "/Table/DownLoadTable?tableId=" + table_id;
    });
    $('button[operate="viewdata"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        window.location = "/Report/ReportTableData?tableId=" + table_id + "&status=0";
    });
    $('button[operate="dataimport"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        Dialog.show("数据导入", "/Report/DataImport?tableId=" + table_id, ['确定', '取消'], 530, 120, function () {
            var result = Dialog.returnValue != undefined;
            var auditid = Dialog.returnValue;
            if (result) {
                Message.show("数据提交", "您的数据导入成功，是否现在提交审核？", ["确定", "取消"], function (inst) {
                    if (inst == "确定") {
                        window.location = "/Audit/CommitAuditData?auditId=" + auditid;
                    }
                    window.location.reload();
                });
            }
        });
    });
   
});