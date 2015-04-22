//#region 表单验证
/*****************************************
 * 表单验证js组件(需要jquery支持)
 * 目前支持以下几种验证
 * 1.非空验证
 * 	示例：<input type="text" form-val="empty" val-empty-msg="XXXX不能为空!" />
 * 	说明:目前密码框无法显示错误文本，建议type='password'的验证不要赋予val-empty-msg值
 * 
 * 2.手机验证
 * 	示例：<input type="text" form-val="phone"  val-phone-msg="手机号码格式不正确!" />
 * 
 * 3.身份证号码验证
 * 	示例：<input type="text" form-val="idcard" val-phone-msg="身份证号码格式不正确" />
 * 
 * 4.邮箱验证
 * 	示例：<input type="text" form-val="email" val-email-msg="电子邮箱格式不正确" />
 * 
 * 5.textarea长度验证
 *  示例：<textarea form-val="empty,maxlength(1000)" />
 ****************************************/
var warp_text_style = { "text-decoration": "none", "padding": "0 0 0 0px", "display": "block", "overflow": "hidden", "white-space": "nowrap", "text-overflow": "ellipsis" };

function ResizeTextWarp() {
    if ($('[form-val="textwarp"]').length > 0) {
        $('[form-val="textwarp"]').each(function () {
            var containerWidth = $(this).parent().width();
            $(this).css(warp_text_style).css("width", "0px");
            $(this).css("width", containerWidth - 10);
        });
    }
};

function form_val_empty_blur() {
    var blIsEmpty = $.trim($(this).val()).length == 0;
    var blIsError = $(this).attr("empty-val-error") === "true";
    if (blIsEmpty && !blIsError) {
        $(this).attr("empty-val-error", "true");
        $("#" + $(this).attr("msg-ctrl-id")).text($(this).attr("val-empty-msg"));
    }
};

function form_val_empty_focus() {
    var blIsError = $(this).attr("empty-val-error") === "true";
    if (blIsError) {
        $(this).attr("empty-val-error", "false");
        $("#" + $(this).attr("msg-ctrl-id")).text("");
    }
};

function form_val_phone_blur() {
    var blIsError = $(this).attr("phone-val-error") === "true";
    var blIsPhone = $(this).val().match(/^0?1(3|5|8)\d{9}$/);
    if (!blIsError && !blIsPhone) {
        $(this).attr("phone-val-error", "true");
        $("#" + $(this).attr("msg-ctrl-id")).text($(this).attr("val-phone-msg"));
    }
};

function form_val_phone_focus() {
    var blIsError = $(this).attr("phone-val-error") === "true";
    if (blIsError) {
        $(this).attr("phone-val-error", "false");
        $("#" + $(this).attr("msg-ctrl-id")).text("");
    }
};

function form_val_idcard_blur() {
    var blIsError = $(this).attr("idcard-val-error") === "true";
    var blIsIdCard = $(this).val().match(/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/);
    if (!blIsError && !blIsIdCard) {
        $(this).attr("idcard-val-error", "true");
        $("#" + $(this).attr("msg-ctrl-id")).text($(this).attr("val-idcard-msg"));
    }
};

function form_val_idcard_focus() {
    var blIsError = $(this).attr("idcard-val-error") === "true";
    if (blIsError) {
        $(this).attr("idcard-val-error", "false");
        $("#" + $(this).attr("msg-ctrl-id")).text("");
    }
};

function form_val_email_blur() {
    var blIsError = $(this).attr("email-val-error") === "true";
    var blIsEmail = $(this).val().match(/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/);
    if (!blIsError && !blIsEmail) {
        $(this).attr("email-val-error", "true");
        $("#" + $(this).attr("msg-ctrl-id")).text($(this).attr("val-email-msg"));
    }
};

function form_val_email_focus() {
    var blIsError = $(this).attr("email-val-error") === "true";
    if (blIsError) {
        $(this).attr("email-val-error", "false");
        $("#" + $(this).attr("msg-ctrl-id")).text("");
    }
};

function form_val_maxlength_keyup() {
    var maxlength_value = $(this).attr("form-val").match(/maxlength\((.*?)\)/)[1];
    if (this.value.length > maxlength_value) {
        this.value = this.value.substr(0, maxlength_value);
        $("#" + $(this).attr("msg-ctrl-id")).text($(this).attr("val-maxlength-msg"));
    } else {
        $("#" + $(this).attr("msg-ctrl-id")).text("");
    }
};

function SetControlInputValidator() {
    $('input[form-val*="empty"],textarea[form-val*="empty"]').blur(form_val_empty_blur).focus(form_val_empty_focus);
    $('input[form-val*="phone"]').blur(form_val_phone_blur).focus(form_val_phone_focus);
    $('input[form-val*="idcard"]').blur(form_val_idcard_blur).focus(form_val_idcard_focus);
    $('input[form-val*="email"]').blur(form_val_email_blur).focus(form_val_email_focus);
    $('input[form-val*="maxlength("],textarea[form-val*="maxlength("]').keyup(form_val_maxlength_keyup);
};
//手动验证方法
function excute_form_validator() {
    $('input[form-val*="empty"],textarea[form-val*="empty"]').trigger("blur");
    $('input[form-val*="phone"]').trigger("blur");
    $('input[form-val*="idcard"]').trigger("blur");
    $('input[form-val*="email"]').trigger("blur");
    var blEmpty = ($('input[empty-val-error="true"],textarea[empty-val-error="true"]').length === 0);
    var blPhone = ($('input[phone-val-error="true"]').length === 0);
    var blIdcard = ($('input[idcard-val-error="true"]').length === 0);
    var blEmail = ($('input[email-val-error="true"]').length === 0);
    return blEmpty && blPhone && blIdcard && blEmail;
};
//#endregion

//#region 常用方法

window.Request = {
    queryString: function (paramName) {
        var reg = new RegExp("(^|&)" + paramName + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return "";
    },
    getUrlParam: function () {
        var symbol = window.location.href.indexOf("?") + 1;
        if (symbol == 0) {
            return "";
        }
        var urlLength = window.location.href.length;
        return window.location.href.substring(symbol, urlLength).replace("#", "");
    }
};

window.Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1, // month
        "d+": this.getDate(), // day
        "h+": this.getHours(), // hour
        "m+": this.getMinutes(), // minute
        "s+": this.getSeconds(), // second
        "q+": Math.floor((this.getMonth() + 3) / 3), // quarter
        "S": this.getMilliseconds()
    }
    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
};
window.String.prototype.format = function () {
    if (arguments.length == 0) return null;
    var str = this;
    for (var i = 0; i < arguments.length; i++) {
        var re = new RegExp('\\{' + i + '\\}', 'gm');
        str = str.replace(re, arguments[i]);
    }
    return str;
};
window.String.format = function () {
    if (arguments.length == 0) return null;
    var str = arguments[0];
    for (var i = 1; i < arguments.length; i++) {
        var re = new RegExp('\\{' + (i - 1) + '\\}', 'gm');
        str = str.replace(re, arguments[i]);
    }
    return str;
};

function HideWebOfficeControlMenuItem(officeControl) {
    officeControl.HideMenuItem(0x01);
    officeControl.HideMenuItem(0x4000);
    officeControl.HideMenuItem(0x02);
    officeControl.HideMenuItem(0x04);
    officeControl.HideMenuItem(0x10);
    officeControl.HideMenuItem(0x20);
}
window.Site = {
    Host: '{0}//{1}/'.format(location.protocol, window.location.host)
};
//加载自定义的Bootstrap控件样式
function LoadCustomBootstrapStyle() {
    $('*[class$="low"]').css({ 'height': '20px', 'line-height': '20px', 'padding': '0' });
};
//#endregion

$(function () {
    ResizeTextWarp();
    SetControlInputValidator();
    LoadCustomBootstrapStyle();
    $(window).resize(ResizeTextWarp);
});
