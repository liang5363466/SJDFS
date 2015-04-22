$(function () {
    try {
        var webOffice = document.all.excelContainer;
        if (webOffice.Version == undefined) {
            window.top.jQuery.unblockUI();
        }
        HideWebOfficeControlMenuItem(webOffice);
        webOffice.HideMenuArea("hideall", "", "", "");
        webOffice.SetSecurity(0x02);
        webOffice.SetCustomToolBtn(2, "提交审核");
        webOffice.SetCustomToolBtn(3, "临时保存");
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
            DoCommit();
            break;
        case 32779:
            DoSave();
            break;
        case 32780:
            GoToPrepPage();
        default:
    }
}
function DoCommit() {
    var auditid = Request.queryString("auditId");
    var urlParam = Request.getUrlParam();
    if (confirm("填写无误确定提交？")) {
        var nameWriteUrl = "/Report/InitWriteReportName?" + urlParam;
        var returnValue = window.showModalDialog(nameWriteUrl, "", "dialogwidth:550px;dialogheight:200px;center:yes;Help:No;Resizable:No;Status:Yes;Scroll:Yes;Status:no;resizable:no");
        if (returnValue == 1) {
            window.location = "/Audit/CommitAuditData?" + urlParam;
        }
    }
};
function DoSave() {
    var webOffice = document.all.excelContainer;
    var auditid = Request.queryString("auditId");
    var urlParam = Request.getUrlParam();
    var nameWriteUrl = "/Report/InitWriteReportName?" + urlParam;
    var returnValue = window.showModalDialog(nameWriteUrl, "", "dialogwidth:550px;dialogheight:200px;center:yes;Help:No;Resizable:No;Status:Yes;Scroll:Yes;Status:no;resizable:no");
    if (returnValue == 1) {
        var saveUrl = Site.Host + "/Report/TempSave?" + urlParam;
        webOffice.HttpInit();
        webOffice.HttpAddPostCurrFile("tempfile", "");
        var returnValue = webOffice.HttpPost(saveUrl);
        if (returnValue == "success") {
            alert("保存成功");
        }
    }
};
function GoToPrepPage() {
    window.history.back(-1);
};