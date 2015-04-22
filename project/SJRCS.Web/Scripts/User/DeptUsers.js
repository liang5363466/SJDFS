$(function () {
    $('button[operate="set"]').click(function () {
        var targetBtn = $(this);
        $(this).button('loading');
        var userid = $(this).parent().attr("userid");
        var paramData = {
             "userId": userid
            ,"tableId": Request.queryString("tableId")
        };
        $.post("/User/SetFillUser", paramData, function (result) {
            if (result == "1") {
                $(targetBtn).button('reset');
                setTimeout(function () {
                    $(targetBtn).attr({
                        "class": "btn btn-mini disabled"
                      , "disabled": "disabled"
                    });
                }, 10)
            } else {
                $(targetBtn).button('reset');
            }
        });
    });
});