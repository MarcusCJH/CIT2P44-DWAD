using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;
using System.Web.Security;
namespace EIDShop
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string i_username = tbxUserName.Text;
            string i_password = tbxPassword.Text;

            if(EIDdbUserManagement.Login(i_username,i_password) !=0)
            {
                Session["staff_no"] = EIDdbUserManagement.Login(i_username, i_password);
                Session["username"] = i_username;
                FormsAuthentication.RedirectFromLoginPage(i_username, false);
            }
            else
            {
                Alert("Your username or your password is incorrect!");
            }
            
            
            
        }
        public void Alert(string msg)
        {
            msg = "alert('" + msg + "');";
            this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "sys_script", msg, true);
        }
    }
}
