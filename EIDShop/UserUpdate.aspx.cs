using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;

namespace EIDShop
{
    public partial class UserUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            Account editAccount = new Account();
            Staff editStaff = new Staff();
            int staffNo = (int)Session["staff_no"];
            editAccount.Password = tbxPassword.Text;
            editStaff.Address = tbxPassword.Text;
            editStaff.ContactNo = Convert.ToInt32(tbxContactNo.Text);
            editStaff.Email = tbxEmail.Text;
            editStaff.Description = tbxDes.Text;

            if (EIDdbUserManagement.UpdateDetails(editAccount, editStaff, staffNo) == 1)
            {
                Alert("Successfully Updated, Please wait a moment for while we redirect you back to user management");
                Response.Redirect("UserManagement.aspx");
            }
            else
            {
                Alert("Unsucessful Update");
            }

        }
        public void Alert(string msg)
        {
            msg = "alert('" + msg + "');";
            this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "sys_script", msg, true);
        }
    }
}