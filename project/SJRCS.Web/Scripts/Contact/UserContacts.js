$(function () {
    $('button[operate="set"]').click(function () {
        var targetBtn = $(this);
        $(targetBtn).button('loading');
        var contactid = $(this).parent().attr("contactid");
        var paramData = {
              "userId": contactid
            , "tableId": Request.queryString("tableId")
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