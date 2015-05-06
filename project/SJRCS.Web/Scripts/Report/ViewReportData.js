$(function () {
    try {
        var webOffice = document.all.excelContainer;
        if (webOffice.Version == undefined) {
            window.top.jQuery.unblockUI();
        }
        HideWebOfficeControlMenuItem(webOffice);
        webOffice.HideMenuArea("hideall", "", "", "");
        webOffice.SetSecurity(0x02);
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
        case 32780:
            GoToPrepPage();
        default:
    }
}
function GoToPrepPage() {
    window.history.go(-1);
};