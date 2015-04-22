$(function () {
    Dialog.setButtons(['上一步', '完成', '取消']);
    Dialog.button('上一步').click(function () {
        window.location = "/Table/InitUpload";
    });
    Dialog.button('取消').click(function () {
        Dialog.close();
    });

    Dialog.button('完成').click(function () {
        var isNoError = excute_form_validator();
        if (isNoError) {
            window.top.InitializeBusyIndicator("正在保存表样数据，请稍后...");
            $('#setHeadForm').submit();
        }
    });
    if (window.top.jQuery.unblockUI != undefined) {
        window.top.jQuery.unblockUI();
    }
});