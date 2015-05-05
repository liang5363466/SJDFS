var formIsError = false;
$(function () {
    Dialog.setButtons(['确定', '取消']);
    Dialog.button('取消').click(function () {
        Dialog.close();
    });
    Dialog.button('确定').click(function () {
        $("#tableFile").trigger("change");
        var isNoError = excute_form_validator();
        var auditName = $.trim($("#txtAuditDataName").val());
        if (!formIsError && isNoError) {
            $.post("/Report/CheckAuditNameIsExist", {"auditId":"0", "auditName": auditName }, function (data) {
                if (data == "1") {
                    $("#txtDataNameError").text("该数据名称已存在，请重新填写。");
                } else {
                    window.top.InitializeBusyIndicator('正在导入数据，请稍后...');
                    $("#dataImportForm").submit();
                }
            });
        }
        return false;
    });
    $("#tableFile").change(function () {
        var strFileName = $(this).val().replace(/^.+?\\([^\\]+?)(\.[^\.\\]*?)?$/gi, "$1");
        if ($.trim($("#txtAuditDataName").val()) == 0) {
            $("#txtAuditDataName").val(strFileName.substring(19));
            $("#txtAuditDataName").trigger("focus").trigger("blur");
        }
        var fileName = $(this).val();
        formIsError = fileName.length == 0;
        if (formIsError) {
            $("#txtTableFileError").text("请选择数据表。");
            return;
        }
        var fileRegex = /^[a-zA-Z]:(\\.+)(.xls|.XLS)$/.test(fileName);
        if (!fileRegex) {
            formIsError = true;
            $("#txtTableFileError").text("").text("您选择的表样有误，请选择格式为.xls的Excel文件。");
        }
    });
});

function ImportFileError() {
    window.top.jQuery.unblockUI();
    $("#txtTableFileError").text("您所选的数据表格式有误，请选择正确的表格导入。");
};
function ImportFileNoData() {
    window.top.jQuery.unblockUI();
    $("#txtTableFileError").text("您所选的数据表没有数据，请选择有数据的表格导入。");
};
function ImportFileSuccess(auditid) {
    window.top.jQuery.unblockUI();
    Dialog.returnValue = auditid;
    Dialog.close();
};
