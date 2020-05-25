using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;

namespace EIDShop
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int staffNo = (int)Session["staff_no"];
                Staff s = EIDdbUserManagement.GetStaffDetails(staffNo);
                lblUsername.Text = (string)Session["username"];
                lblName.Text = s.StaffName;
                lblNRIC.Text = s.Nric;
                lblContactNo.Text = s.ContactNo.ToString();
                lblAddress.Text = s.Address;
                lblGender.Text = s.Gender.ToString() ;
                lblEmail.Text = s.Email;
                lblEthnicGroup.Text = s.EthnicGroup;
                lblDescription.Text = s.Description;
            }
            
            /*lblUsername.Text = Request.QueryString["username"];
            lblName.Text = Request.QueryString["fullName"];
            lblNRIC.Text = Request.QueryString["nric"];
            lblContactNo.Text = Request.QueryString["contactno"];
            lblAddress.Text = Request.QueryString["address"];
            lblGender.Text = Request.QueryString["gender"];
            lblEmail.Text = Request.QueryString["email"];
            lblEthnicGroup.Text = Request.QueryString["ethnigroup"];
            lblDescription.Text = Request.QueryString["description"];*/

                
        }

                           
        
        public void Alert(string msg)
        {
            msg = "alert('" + msg + "');";
            this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "sys_script", msg, true);
        }

        protected void btnUpdateProfile_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserUpdate.aspx");
        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {           
            int staffNo = (int)Session["staff_no"];
            if (EIDdbUserManagement.DeleteAccount(staffNo) == 1)
            {
                Alert("Account Deleted!");
                Response.Redirect("index.aspx");
            }
            
            
        }


        
    }
}