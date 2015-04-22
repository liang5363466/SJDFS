$(function () {
    $('button[operate="viewdata"]').click(function () {
        var tableId = $(this).parent().attr("table-id");
        window.location = "/Audit/AuditTableData?tableId=" + tableId + "&status=-1";
    });
    $('button[operate="export"]').click(function () {
        var tableId = $(this).parent().attr("table-id");
        var exportUrl = "/Audit/SelectExportMode/" + tableId;
        Dialog.show("数据导出", exportUrl, ['确定','取消'],530, 100, function () {
            if (Dialog.returnValue != undefined) {
                window.location = "/Audit/GetExportFile?fileName=" + Dialog.returnValue;
            }
        });
    });
});