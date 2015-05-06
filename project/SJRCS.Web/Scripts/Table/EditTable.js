$(document).ready(function () {
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


    $('input[name="fillType"][value="' + $("#hidType").val() + '"]').trigger("click");
    $("#cycleType").find('option[value="' + $("#hidCycleType").val() + '"]').attr("selected", true);
    var htmlUrl = $("#cycleType > option:selected").attr("cycle-content");
    $.get(htmlUrl, function (result) {
        $("#dvContainer").append(result).append($('<div>').css('height', '10px'));
        $('input[type="hidden"]')
            .not($("#hidType,#hidCycleType"))
            .each(function () {
                $('*[name="' + $(this).attr("id").replace("hid", "") + '"]').val($(this).val());
            });
        LoadCustomBootstrapStyle();
    });
    Dialog.button('完成').click(function () {
        var isNoError = excute_form_validator();
        var tableId = Request.queryString("tableId");
        if (isNoError) {
            var tableName = $.trim($("#txtTableFileName").val());
            $.post("/Table/CheckTableNameIsExist", { "tableId": tableId, "tableName": tableName }, function (data) {
                if (data == "1") {
                    $("#txtErrorTableName").text("该表样名称已存在，请重新填写。");
                } else {
                    $("#tableEditForm").submit();
                }
            });
        }
        return false;
    });
    Dialog.button('取消').click(function () {
        Dialog.close();
    });
    $("#tempContainer").hide();
});