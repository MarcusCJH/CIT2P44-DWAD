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
    public partial class ShoppingManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ArrayList residentList = EIDdbResidentManagement.RetrieveResidentNoName();
                dlResident.DataSource = residentList;
                dlResident.DataBind();
            }
        }
    }
}