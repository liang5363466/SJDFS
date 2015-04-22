$(function () {
    var auditStatus = Request.queryString("status");
    if (auditStatus == "") {
        $(".operate a").first().css("color", "red");
    } else {
        $(".operate a").each(function () {
            if (auditStatus == $(this).attr("status")) {
                $(this).css("color", "red");
            }
        });
    }
    $('button[operate="onlineaudit"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var urlParam = Request.getUrlParam();
        window.top.InitializeBusyIndicator('正在初始化控件,请稍后...');
        setTimeout(function () {
            window.location = "/Audit/AuditDataDetail?" + urlParam + "&auditId=" + auditid;
        }, 1000);
    });
    $('button[operate="pass"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var urlParam = Request.getUrlParam();
        Message.show("审核确认", "审核无误，确定入库？", ["确定", "取消"], function (inst) {
            if (inst == "确定") {
                window.top.InitializeBusyIndicator('数据正在入库，请稍后...');
                setTimeout(function () {
                    window.location = "/Audit/PassAuditData?" + urlParam + "&auditId=" + auditid;
                }, 1000);
            }
        });
    });
    $('button[operate="unpass"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var urlParam = Request.getUrlParam();
        Message.show("审核确认", "审核有误，确定退回？", ["确定", "取消"], function (inst) {
            if (inst == "确定") {
                var opinionUrl = "/Audit/InitWriteOpinion?auditId=" + auditid;
                var returnValue = window.showModalDialog(opinionUrl, "", "dialogwidth:550px;   dialogheight:220px;   center:yes;   Help:No;   Resizable:No;   Status:Yes;   Scroll:Yes;   Status:no;   resizable:no ");
                if (returnValue == 1) {
                    window.location = "/Audit/UnPassAuditData?" + urlParam + "&auditId=" + auditid;
                }
            }
        });
    });

    $('button[operate="download"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var urlParam = Request.getUrlParam();
        window.location = "/Audit/DownloadAuditData?auditId="  + auditid;
    });
    $('button[operate="view_audited"]').click(function () {
        var auditid = $(this).parent().attr("auditid");
        var tableid = Request.queryString("tableId");
        window.top.InitializeBusyIndicator('正在初始化控件，请稍后...');
        setTimeout(function () {
            window.location = "/Report/ViewAuitedData?tableId=" + tableid + "&auditId=" + auditid;
        }, 1000);
    });
});