using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
namespace Rcs.Web.Common
{
    public class BasePage : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            #region 屏蔽鼠标右键、Ctrl+N、Shift+F10、F11、F5刷新、退格键
            var tmpScript = @"
            document.oncontextmenu = function () { event.returnValue = false; } //屏蔽鼠标右键   
            window.onhelp = function() { return false }   //屏蔽F1帮助
            document.onkeydown = function() {
                if ((window.event.altKey) &&
                        ((window.event.keyCode == 37) ||       //屏蔽 Alt+ 方向键 ←   
                          (window.event.keyCode == 39))) {     //屏蔽 Alt+ 方向键 →             
                    event.returnValue = false;
                }
                if ((event.keyCode == 116) ||                   //屏蔽 F5 刷新键   
                    (event.ctrlKey && event.keyCode == 82)) {   //Ctrl + R   
                    event.keyCode = 0;
                    event.returnValue = false;
                }
                if (event.keyCode == 122) { event.keyCode = 0; event.returnValue = false; }     //屏蔽F11   
                if (event.ctrlKey && event.keyCode == 78) event.returnValue = false;       //屏蔽 Ctrl+n   
                if (event.shiftKey && event.keyCode == 121) event.returnValue = false;     //屏蔽 shift+F10 
            }
            ";
            #endregion
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Security", tmpScript, true);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Expires = 0;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Cache", "window.history.forward(1);", true);
        }

        protected string NewGuid()
        {
            return Guid.NewGuid().ToString("N");
        }
    }
}