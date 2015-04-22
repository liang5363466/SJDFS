//说明：调整页面布局
var fnResize = function () {
    var tmpBodyHeight = $("body").height();
    var tmpBodyWidth = $("body").width();
    if ($.browser.msie && $.browser.version == 6) {
        $(".main_content")
            .width(tmpBodyWidth - 170 - 6)
            .height(tmpBodyHeight - 70 - 24 - 6);
        $(".main_left").height(tmpBodyHeight - 70 - 24 - 6);
    }
    $(".frame_content").width(tmpBodyWidth - 171).height(tmpBodyHeight - 70 - 24);
}

$(document).ready(function () {
    fnResize();
    $("#btnExit").click(function () {
        Message.show("操作确认", "您确定要退出么?", ["确定", "取消"], function (inst) {
            if (inst == "确定") {
                window.location.href = "/User/LoginOut";
            }
        });
    });
    $(window).resize(fnResize);
});
window.Dialog = {
    returnValue: undefined,
    show: function (title, url, buttons, width, height, callback) {
        $("#dialog_head").text(title);
        var contentFrame = $('<iframe>')
        .attr({ 'scrolling-x': "no", 'frameborder': "0", 'src': url })
        .css({ 'width': width + 'px', 'height': height + 'px' });
        $("#modalContainer").append(contentFrame);
        $('#show_dialog').off("hidden").on('hidden', function () {
            if (callback !== undefined) callback();
            $("#modalContainer").children().remove();
            Dialog.returnValue = undefined;
        });
        $("#buttonContainer").children().remove();
        if (buttons == null) {
            $("#buttonContainer").hide();
        } else {
            $("#buttonContainer").show();
            for (var i in buttons) {
                var button = $('<button>').attr('class', 'btn btn-primary').text(buttons[i]);
                $('#buttonContainer').append(button);
            }
        }
        $('#show_dialog').modal();
    },
    close: function () {
        $("#btnCloseDialog").trigger("click");
    },
    button: function (btnText) {
        return $('#buttonContainer button:contains("' + btnText + '")');
    },
    setButtons: function (buttons) {
        $("#buttonContainer").children().remove();
        for (var i in buttons) {
            var button = $('<button>').attr('class', 'btn btn-primary').text(buttons[i]);
            $('#buttonContainer').append(button);
        }
    }
};
window.Message = {
    returnValue: undefined,
    show: function (title, content, buttons, callback) {
        $("#message_head").text(title);
        $("#message_content").text(content);
        $("#message_bottom").empty();
        for (var i in buttons) {
            var bottomBtn =
                $('<button class="btn btn-primary"/>')
                .text(buttons[i])
                .click(function () {
                    $("#btnCloseMessage").trigger("click");
                    if (callback !== undefined) {
                        callback($(this).text());
                    }
                }).appendTo($("#message_bottom"));
        }
        $('#show_message').modal({
            keyboard: false
        });
    },
    close: function () {
        $("#btnCloseMessage").trigger("click");
    }
};

function InitializeBusyIndicator(content) {
    window.top.jQuery.blockUI({
        message: content
        , css: {
            "padding-top": "60px",
            color: 'black',
            border: '5px solid #9AD5FE',
            backgroundColor: '#E8F1F6',
            width: "400",
            height: "80"
        }
        , overlayCSS: { opacity: 0.5 }
    });
};