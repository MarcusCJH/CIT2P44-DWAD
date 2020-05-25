using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EIDShop
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txbfn.Text = "haha";
        }

        protected void txbfn_TextChanged(object sender, EventArgs e)
        {
            txbfn.Text = "";
        }
    }
}