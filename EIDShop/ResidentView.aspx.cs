using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;
namespace EIDShop
{
    public partial class ResidentView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int res_no = Convert.ToInt32(Request.QueryString["resNo"]);
            Resident r=EIDdbResidentManagement.GetResidentcByResidentId(res_no);
            lbName.Text=r.Resident_name;
            lblRedId.Text = Convert.ToString(res_no);
            lbGender.Text=r.Gender;
            lbladdress.Text=r.Address;
            lbNRIC.Text=r.NRIC;
            lbDOB.Text = r.DOB.Year + "/" + r.DOB.Month + "/" + r.DOB.Day;
            lbEhinic.Text=r.Ethic_group;
            lblcontact.Text=Convert.ToString(r.Contact_no);
            lblemail.Text=r.Email;
            lbDes.Text=r.Des_of_disabiliy;
            lblstaffId.Text = Convert.ToString(r.Staff_no);
        }
    }
}