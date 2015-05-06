$(function () {
    $('button[operate="add"]').click(function () {
        var targetBtn = $(this);
        $(this).button('loading');
        var userid = $(this).parent().attr("userid");
        var paramData = {
            "userId": userid
        };
        $.post("/Contact/SetContactUser", paramData, function (result) {
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