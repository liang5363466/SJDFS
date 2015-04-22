$(function () {
    $("#btnSubmit").click(function () {
        var isNoError = excute_form_validator();
        var auditName = $.trim($("#txtAuditDataName").val());
        var auditId = Request.queryString("auditId");
        auditId = auditId.length == 0 ? 0:auditId;
        if (isNoError) {
            $.post("/Report/CheckAuditNameIsExist", { "auditId": auditId, "auditName": auditName }, function (data) {
                if (data == "1") {
                    $("#txtDataNameError").text("该数据名称已存在，请重新填写。");
                } else {
                    $("#reportNameForm").submit();
                }
            });
        }
        return false;
    });

    $('.Wdate').click(function () {
        WdatePicker({ skin: 'whyGreen', dateFmt: 'yyyy-MM', maxDate: new Date() });
    });
    $("#btnCancel").click(function () {
        window.close();
    });
});