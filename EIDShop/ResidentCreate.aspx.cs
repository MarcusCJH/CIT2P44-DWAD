using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;
using System.Collections;
namespace EIDShop
{
    public partial class ResidentCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList arr = EIDdbUserManagement.GetStaffs();
        }

        protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            Resident r = new Resident();
            r.Resident_name = txbName.Text;
            r.Gender = ddGender.SelectedValue;
            r.NRIC = txbnric.Text;
            r.Address = tbxaddress.Text;
            r.DDOB = tbxYear.Text + "/" + tbxMonth.Text + "/" + tbxDay.Text;
            r.Des_of_disabiliy = tbxDes.Text;
            r.Ethic_group = tbxContact.Text;
            r.Email = tbxemailaddress.Text;
            r.Contact_no = Convert.ToInt32(tbxContact.Text);

            if (EIDdbResidentManagement.InsertResident(r,(int)Session["staff_no"]) == 1)
            {
                Response.Redirect("ResidentView.aspx?resNo=" +EIDdbResidentManagement.getMaxID());
            }
        }

     
    }
}