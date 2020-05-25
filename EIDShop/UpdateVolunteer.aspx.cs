    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;
namespace EIDShop
{
    public partial class UpdateVolunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblVolID.Text = Request.QueryString["volunteerNo"];
            }
        }

        protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            int count = 0;
            string temp = "";
            foreach (ListItem m in cblday.Items)
            {
                if (m.Selected)
                {
                    count++;
                    if (count == 1)
                        temp += m.Text;
                    else
                        temp += ", " + m.Text;
                }
            }
            Volunteer vol = new Volunteer();

            vol.VolunteerNo = Convert.ToInt32(lblVolID.Text);
            vol.VolunteerName = tbxfirstname.Text + " " + tbxlastname.Text;
            vol.VolunteerNric = tbxnric.Text;
            vol.VolunteerAddress = tbxaddress.Text;
            vol.VolunteerContactNumber = Convert.ToInt32(tbxphone.Text);
            vol.VolunteerEmail = tbxemailaddress.Text;
            vol.VolunteerAvaliabeSlot = tbxremarks.Text;
            vol.VolunteerDay = temp;
            vol.VolunteerTime = ddltime.Text;
            if (tbxdescription.Text == "")
                vol.Description = "NIL";
            else
                vol.Description = tbxdescription.Text;
            vol.Remarks = tbxremarks.Text;
            vol.StaffNo = 1;
            //Session["staffid"]
            if (EIDdbVolunteerManagement.updateVolunteerInformation(vol) == 1)
            {
                Response.Redirect("VolunteerViewpage.aspx?volunteerNo=" + lblVolID.Text);
            }
        }
    }
}