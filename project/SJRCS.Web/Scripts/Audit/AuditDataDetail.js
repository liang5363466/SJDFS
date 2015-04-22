$(function () {
    try {
        var webOffice = document.all.excelContainer;
        if (webOffice.Version == undefined) {
            window.top.jQuery.unblockUI();
        }
        HideWebOfficeControlMenuItem(webOffice);
        webOffice.HideMenuArea("hideall", "", "", "");
        webOffice.SetSecurity(0x02);
        webOffice.SetCustomToolBtn(2, "通过");
        webOffice.SetCustomToolBtn(3, "不通过");
        webOffice.SetCustomToolBtn(4, "返回");
        webOffice.HideMenuAction(5, 0);//激活设置
        var topWidth = $("#ifrMain", $(window.top.document)).width();
        var topHeight = $("#ifrMain", $(window.top.document)).height();
        $("#excelContainer").width(topWidth).height(topHeight);
        var gotoUrl = Site.Host + "/Report/GetReportFile?auditId=" + Request.queryString("auditId");
        webOffice.LoadOriginalFile(gotoUrl, "xls");
        window.top.jQuery.unblockUI();
    } catch (e) {
        window.top.jQuery.unblockUI();
    }
});

function webOfficeControl_NotifyToolBarClick(cmd) {
    switch (cmd) {
        case 32778:
            DoPassAuditData();
            break;
        case 32779:
            DoUnPassAuditData();
            break;
        case 32780:
            GoToPrepPage();
        default:
    }
}
function DoPassAuditData() {
    var urlParam = Request.getUrlParam();
    var auditid = Request.queryString("auditId");
    if (confirm("审核无误，确定入库？")) {
        window.location = "/Audit/PassAuditData?" + urlParam + "&auditId=" + auditid;
    }
};
function DoUnPassAuditData() {
    if (confirm("审核有误，确定退回？")) {
        var urlParam = Request.getUrlParam();
        var auditid = Request.queryString("auditId");
        var opinionUrl = "/Audit/InitWriteOpinion?auditId=" + auditid;
        var returnValue = window.showModalDialog(opinionUrl, "", "dialogwidth:550px;   dialogheight:220px;   center:yes;   Help:No;   Resizable:No;   Status:Yes;   Scroll:Yes;   Status:no;   resizable:no ");
        if (returnValue == 1) {
            window.location = "/Audit/UnPassAuditData?" + urlParam + "&auditId=" + auditid;
        }
    }
};
function GoToPrepPage() {
    window.history.go(-1);
};