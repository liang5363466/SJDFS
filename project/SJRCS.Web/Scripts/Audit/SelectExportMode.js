$(function () {
    $("#txtExportStart").val(new Date().format("yyyy") + "-01-01");
    $("#txtExportEnd").val(new Date().format("yyyy-MM-dd"));
    $("#txtExportStart").click(function () {
        WdatePicker({
            skin: 'default', dateFmt: 'yyyy-MM-dd',  onpicked: function (dp) {
                var islessThan = dp.cal.getNewDateStr() <= $("#txtExportEnd").val();
                if (!islessThan) {
                    alert("必须小于结束时间!");
                    $(this).val(new Date().format("yyyy") + "-01-01");
                    return true;
                }
                return false;
            }
        });
    });
    $("#txtExportEnd").click(function () {
        WdatePicker({
            skin: 'default', dateFmt: 'yyyy-MM-dd', onpicked: function (dp) {
                var ismoreThan = dp.cal.getNewDateStr() >= $("#txtExportStart").val();
                if (!ismoreThan) {
                    alert("必须大于开始时间!");
                    $(this).val(new Date().format("yyyy-MM-dd"));
                    return true;
                }
            }
        });
    });
    Dialog.button("确定").click(function () {
        var isNoError = excute_form_validator();
        if (isNoError) {
            var paraData = {
                 'tableId': $('#hidTableId').val()
                ,'exportFileName': $('#txtExportFileName').val()
                ,'startDate': $('#txtExportStart').val()
                ,'endDate': $('#txtExportEnd').val()
            };
            window.top.InitializeBusyIndicator('正在分析数据，请稍后...');
            $.post("/Audit/DataExport", paraData, function (data) {
                window.top.jQuery.unblockUI();
                Dialog.returnValue = data;
                Dialog.close();
            });
        }
    });
    Dialog.button("取消").click(function () {
        Dialog.close();
    });
});