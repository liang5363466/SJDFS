$(function () {
    var auditStatus = Request.queryString("status");
    if (auditStatus == "") {
        $(".operate a").first().css("color","red");
    } else {
        $(".operate a").each(function () {
            if (auditStatus == $(this).attr("status")) {
                $(this).css("color", "red");
            }
        });
    }

    $('button[operate="commit"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var urlParam = Request.getUrlParam();
        Message.show("数据提交", "您确定要提交这条数据？", ["确定", "取消"], function (inst) {
            if (inst == "确定") {
                window.location = "/Audit/CommitAuditData?" + urlParam + "&auditId=" + auditid;
            }
        });
    });
    $('button[operate="delete"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var urlParam = Request.getUrlParam();
        Message.show("删除确认", "您确定要删除这条数据？", ["确定", "取消"], function (inst) {
            if (inst == "确定") {
                window.location = "/Audit/DeleteUnCommitData?" + urlParam + "&auditId=" + auditid;
            }
        });
    });
    $('button[operate="view_unaudit"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        window.top.InitializeBusyIndicator('正在初始化控件，请稍后...');
        setTimeout(function () {
            window.location = "/Report/ViewReportData?auditId=" + auditid;
        }, 1000);
    });
    $('button[operate="view_audited"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var tableid = Request.queryString("tableId");
        window.top.InitializeBusyIndicator('正在初始化控件，请稍后...');
        setTimeout(function () {
            window.location = "/Report/ViewAuitedData?tableId=" + tableid + "&auditId=" + auditid;
        }, 1000);
    });
    $('button[operate="edit"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var urlParam = Request.getUrlParam();
        window.top.InitializeBusyIndicator('正在初始化控件，请稍后...');
        setTimeout(function () {
            window.location = "/Report/EditReportData?" + urlParam + "&auditId=" + auditid;
        }, 1000);
    });

    $("#btnStart").click(function () {
        var urlParam = Request.getUrlParam();
        window.top.InitializeBusyIndicator('正在初始化控件，请稍后...');
        setTimeout(function () {
            window.location = "/Report/FillTable?" + urlParam;
        }, 1000);
    });

    $("#btnDescript").click(function () {
        var tableId = Request.queryString("tableId");
        Dialog.show("上报说明", "/Report/TableFillDescript?tableId=" + tableId, null, 530, 120, function () {
            
        });
    });
});