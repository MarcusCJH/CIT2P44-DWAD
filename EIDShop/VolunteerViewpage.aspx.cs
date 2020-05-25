using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;

namespace EIDShop
{
    public partial class Viewpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int temp = Convert.ToInt32(Request.QueryString["volunteerNo"]);
            Volunteer volAll = EIDdbVolunteerManagement.RetrieveAllByVol(temp);

            lblVolunterID.Text= Convert.ToString(volAll.VolunteerNo);
            lblnric.Text= volAll.VolunteerNric;
            lblvoluntername.Text= volAll.VolunteerName;
            lbladdress.Text= volAll.VolunteerAddress;
            lblphonenumber.Text= Convert.ToString(volAll.VolunteerContactNumber);
            lblEmail.Text= volAll.VolunteerEmail;
            lbldescription.Text= volAll.Description;
            lblremarks.Text= volAll.Remarks;
            lbldaytime.Text= volAll.VolunteerDay + ", " + volAll.VolunteerTime;
            lblstaff.Text = Convert.ToString(volAll.StaffNo);
            
            
         
}
    }
}