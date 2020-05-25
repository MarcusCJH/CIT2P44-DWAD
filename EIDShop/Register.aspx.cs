using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;

namespace EIDShop
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            string username = tbxUsername.Text;
            string password = tbxPassword.Text;
            string firstName = txbfn.Text;
            string lastName = txbln.Text;
            string fullName = txbln.Text + " " + txbfn.Text;
            string NRIC = txbnric.Text;
            int contactNo = Convert.ToInt32(tbxContactNo.Text);
            string address = tbxAddress.Text;
            string dob = tbxYear.Text + " - " + tbxMouth.Text + " - " + tbxDay.Text;
            string temp = ddGender.SelectedValue.ToString();
            char gender = temp.ToCharArray(0, 1)[0];
            string ethnicGroup = ddThn.SelectedValue;
            string description = tbxDes.Text;
            string email = tbxEmail.Text;

            string querystring = "username=" + username;
            querystring += "&" + "fullName=" + fullName;
            querystring += "&" + "nric=" + NRIC;
            querystring += "&" + "contactno=" + contactNo;
            querystring += "&" + "address=" + address;
            querystring += "&" + "gender=" + gender;
            querystring += "&" + "email=" + email;
            querystring += "&" + "ethnigroup=" + ethnicGroup;
            querystring += "&" + "description=" + description;
            
            Account a = new Account(username, password);
            Staff s = new Staff(fullName, NRIC, contactNo, address, dob, gender, email,ethnicGroup, description);

            if (EIDdbUserManagement.InsertStaff(a,s) == 1)
            {
                //Server.Transfer("UserManagement.aspx?" + querystring);
                Alert("Successfully Created!");
                Response.Redirect("index.aspx");
            }
            else
            {
                Alert("Unable To Create");
            }

        }
        public void Alert(string msg)
        {
            msg = "alert('" + msg + "');";
            this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "sys_script", msg, true);
        }
    }
}