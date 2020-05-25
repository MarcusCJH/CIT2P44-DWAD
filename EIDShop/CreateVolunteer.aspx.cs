using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;

namespace EIDShop
{
    public partial class Createupdateform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            if (EIDdbVolunteerManagement.InsertVol(vol, 1) == 1)
            {
                int id = EIDdbVolunteerManagement.RetrieveMaxID();
                Response.Redirect("VolunteerViewPage.aspx?volunteerNo=" + id);
            }
            //Session["staffid"]
            
        }

    }
}