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
    public partial class ResidentUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["resNo"] = Convert.ToInt32(Request.QueryString["resNo"]);
                Resident r = EIDdbResidentManagement.GetResidentcByResidentId((int)Session["resNo"]);

                ArrayList arr = EIDdbUserManagement.GetStaffs();
                txbName.Text = r.Resident_name;
                ddGender.SelectedValue = r.Gender;
                txbnric.Text = r.NRIC;
                tbxaddress.Text = r.Address;
                tbxYear.Text = Convert.ToString(r.DOB.Year);
                tbxMouth.Text = Convert.ToString(r.DOB.Month);
                tbxDay.Text = Convert.ToString(r.DOB.Day);
                ddThn.SelectedValue = r.Ethic_group;
                tbxContact.Text = Convert.ToString(r.Contact_no);
                tbxemailaddress.Text = r.Email;
                tbxDes.Text = r.Des_of_disabiliy; 
            }

        }

        protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            int resident_no = Convert.ToInt32(Request.QueryString["resNo"]);
            Resident r = new Resident();
            r.Resident_name = txbName.Text;
            r.Gender = ddGender.SelectedValue;
            r.NRIC = txbnric.Text;
            r.Address = tbxaddress.Text;
            r.DDOB = tbxYear.Text + "/" + tbxMouth.Text + "/" + tbxDay.Text;
            r.Des_of_disabiliy=tbxDes.Text;
            r.Ethic_group = tbxContact.Text;
            r.Email=tbxemailaddress.Text;
            r.Contact_no=Convert.ToInt32(tbxContact.Text);

            if (EIDdbResidentManagement.UpdateResident(r, resident_no) == 1)
            {
                Response.Redirect("ResidentView.aspx?resNo=" + resident_no);
            }
        }
    }
}