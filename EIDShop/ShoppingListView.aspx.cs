using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EIDShop
{
    public partial class ShoppingListView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = Request.QueryString["name"];
            lblCNum.Text = Request.QueryString["cn"];
            lblAdr.Text = Request.QueryString["ad"];
            lblDR.Text = Request.QueryString["dr"];
            lblFItem.Text = Request.QueryString["fi"];
            lblOFItem.Text = Request.QueryString["ofi"];
            lblDNItem.Text = Request.QueryString["dni"];
            lblODNItem.Text = Request.QueryString["odni"];
            lblOItem.Text = Request.QueryString["oi"];
            lblQuan.Text = Request.QueryString["iq"];
        }
    }
}