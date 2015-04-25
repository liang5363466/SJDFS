var formIsError = false;
$(function () {
    Dialog.setButtons(['下一步', '取消']);
    Dialog.button("取消").click(function () {
        Dialog.close();
    });
    Dialog.button("下一步").click(function () {
        if ($("#fillTemplate").val().length == 0) {
            $("#fillTemplate + .error-block").text("请选择上报模板");
            return false;
        }
        var tableName = $.trim($("#txtTableFileName").val());
        var isNoError = excute_form_validator();
        if (!formIsError && isNoError) {
            $.post("/Table/CheckTableNameIsExist", { 'tableId': 0, "tableName": tableName }, function (data) {
                if (data == "1") {
                    $("#txtErrorTableName").text("该表样名称已存在，请重新填写。");
                } else {
                    window.top.InitializeBusyIndicator("正在分析表样结构，请稍候...");
                    $("#uploadForm").submit();
                }
            });
        }
        return false;
    });
    $("#txtTempStart").val(new Date().format("yyyy-MM-dd")).click(function () {
        WdatePicker({
            minDate: new Date(),
            skin: 'default', dateFmt: 'yyyy-MM-dd', isShowClear: false, readOnly: true, onpicked: function (dp) {
                var islessThan = dp.cal.getNewDateStr() <= $("#txtTempEnd").val();
                if (!islessThan) {
                    alert("必须小于结束时间!");
                    $(this).val(new Date().format("yyyy-MM-dd"));
                    return true;
                }
            }
        });
    });
    $("#txtTempEnd").val(new Date().format("yyyy-MM-dd")).click(function () {
        WdatePicker({
            minDate: new Date(),
            skin: 'default', dateFmt: 'yyyy-MM-dd', isShowClear: false, readOnly: true, onpicked: function (dp) {
                var ismoreThan = dp.cal.getNewDateStr() >= $("#txtTempStart").val();
                if (!ismoreThan) {
                    alert("必须大于开始时间!");
                    $(this).val(new Date().format("yyyy-MM-dd"));
                    return true;
                }
            }
        });
    });

    $("#fillTemplate").change(function () {
        $(this).next(".error-block").text("");
        var strFileName = $(this).val().replace(/^.+?\\([^\\]+?)(\.[^\.\\]*?)?$/gi, "$1");
        formIsError = !/^[a-zA-Z]:(\\.+)(.xls|.XLS)$/.test($(this).val());
        if (formIsError) {
            $(this).next(".error-block").text("您选择的模板有误，请选择格式为.xls的Excel文件。");
        } else {
            $('#txtTableFileName').val(strFileName);
        }
    });

    $("#cycleType").change(function () {
        var htmlUrl = $('option:selected', this).attr("cycle-content");
        $.get(htmlUrl, function (result) {
            $('#cycleType ~ *').remove();
            $("#dvContainer").append(result).append($('<div>').css('height', '10px'));
            LoadCustomBootstrapStyle();
        });
    });
    $('input[name="fillType"]').change(function () {
        $("#cycleContainer,#tempContainer").hide();
        if ($(this).val() == "1") {
            $("#cycleContainer").show();
        } else if ($(this).val() == "3") {
            $("#tempContainer").show();
        }
    });

    var htmlUrl = $('#cycleType > option:selected').attr("cycle-content");
    $.get(htmlUrl, function (result) {
        $("#dvContainer").append(result).append($('<div>').css('height', '10px'));
        LoadCustomBootstrapStyle();
    });
    $("#tempContainer,#cycleContainer").hide();
});