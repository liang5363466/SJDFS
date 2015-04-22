window.Dialog = window.top.Dialog;
window.Message = window.top.Message;
$('form').keydown(function (event) {
    var isEnter = event.keyCode == 13;
    var isArea = event.target.type == 'textarea';
    if (isEnter && isArea) {
        return true;
    }
    return !isEnter;
});