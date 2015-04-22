$(function () {
    $('button[operate="remove"]').click(function () {
        var contactid = $(this).parent().attr("contactid");
        $.post("/Contact/RemoveContact/" + contactid, { 'id': contactid }, function (result) {
            if (result == "1") {
                $('td[contactid="' + contactid + '"]').parent().remove();
            } 
        });
    });
});