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
    public partial class Volunteerpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ArrayList volunteerList = EIDdbVolunteerManagement.retrieveVolunteer();
                dlvolunteer.DataSource = volunteerList;
                dlvolunteer.DataBind();
            }
        }

        protected void dlResident_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Del")
            {
                int ID = (int)dlvolunteer.DataKeys[e.Item.ItemIndex];
                EIDdbVolunteerManagement.DeleteByID(ID);
            }
            ArrayList volunteerList = EIDdbVolunteerManagement.retrieveVolunteer();
            dlvolunteer.DataSource = volunteerList;
            dlvolunteer.DataBind();
        }

    }
}