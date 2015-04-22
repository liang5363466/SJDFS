$(function () {
    $("#btnUpload").click(function () {
        Dialog.show("表样上传", "/Table/InitUpload", ["下一步", "取消"], 530, 350, function () {
            var result = Dialog.returnValue == true;
            if (result) {
                window.location.reload();
            }
        });
    });
    $('button[operate="delete"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        var pageIndex = Request.queryString("pageIndex");
        Message.show("删除确认", "确定要删除这个表样的数据?", ["确定", "取消"], function (inst) {
            if (inst == "确定") {
                window.location.href = "/Table/DeleteOneTable?tableId=" + table_id + "&pageIndex=" + pageIndex;
            }
        });
    });
    $('button[operate="setRule"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        Dialog.show("上报人员设置", "/Table/SetTableRule?tableId=" + table_id, null, 530, 340, function () {
            var result = Dialog.returnValue == true;
            if (result) {
                window.location.reload();
            }
        });
    });
    $('button[operate="download"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        window.location = "/Table/DownLoadTable?tableId=" + table_id;
    });
    $('button[operate="edit"]').click(function () {
        var tableId = $(this).parent().attr("table-id");
        var editUrl = "/Table/EditTable?tableId=" + tableId;
        Dialog.show("表样修改", editUrl, ['完成', '取消'], 530, 250, function () {
            var result = Dialog.returnValue == true;
            if (result) {
                window.location.reload();
            }
        });
    });

    $('button[operate="view"]').click(function () {
        window.top.InitializeBusyIndicator("正在初始化控件，请稍候...");
        var table_id = $(this).parent().attr("table-id");
        setTimeout(function () {
            window.location = "/Table/TableView?tableId=" + table_id;
        }, 1000);
    });

    $('button[operate="publish"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        var pageIndex = Request.queryString("pageIndex");
        $.post("/Table/CheckTableIsSetFillUser", { "tableId": table_id }, function (result) {
            if (result == "0") {
                Message.show("操作提示", "该表样还未设置上报人员，无法发布！", ["确定"]);
            } else {
                Message.show("发布确认", "确定要发布这个表样?", ["确定", "取消"], function (inst) {
                    if (inst == "确定") {
                        window.location = "/Table/PublishTable?tableId=" + table_id + "&pageIndex=" + pageIndex;
                    }
                });
            }
        });
    });

    $('button[operate="allow"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        var pageIndex = Request.queryString("pageIndex");
        var isInCycle = $(this).parent().attr("isInCycle") == "1";
        if (!isInCycle) {
            Message.show("操作提示", "当前表样不在上报周期内，无法允许上报。", ["确定"]);
        } else {
            $.post("/Table/CheckTableIsSetFillUser", { "tableId": table_id }, function (result) {
                if (result == "0") {
                    Message.show("操作提示", "该表样还未设置上报人员，无法允许上报！", ["确定"]);
                } else {
                    Message.show("操作确认", "确定这个表样可以上报么?", ["确定", "取消"], function (inst) {
                        if (inst == "确定") {
                            window.location = "/Table/SetTableIsAllowReport?status=1&tableId=" + table_id + "&pageIndex=" + pageIndex;
                        }
                    });
                }
            });
        }
    });
    $('button[operate="ban"]').click(function () {
        var table_id = $(this).parent().attr("table-id");
        var pageIndex = Request.queryString("pageIndex");
        Message.show("操作确认", "确定禁止用户上报该表样?", ["确定", "取消"], function (inst) {
            if (inst == "确定") {
                window.location = "/Table/SetTableIsAllowReport?status=0&tableId=" + table_id + "&pageIndex=" + pageIndex;
            }
        });
    });
});