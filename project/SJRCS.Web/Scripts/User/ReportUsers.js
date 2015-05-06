$(function () {
    $('button[operate="remove"]').click(function () {
        var userid = $(this).parent().attr("userid");
        var paramData = {
            "userId":userid
           ,"tableId":Request.queryString("tableId")
        };
        $.post("/User/RemoveFillUser", paramData, function (result) {
            if (result == "1") {
                $('td[userid="' + userid + '"]').parent().remove();
            }
        });
    });
});