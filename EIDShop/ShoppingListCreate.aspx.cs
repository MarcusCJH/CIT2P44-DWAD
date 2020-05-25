using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EIDShop.Class;
namespace EIDShop
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            string name = txbname.Text;
            string address = tbnad.Text;
            string dateOfRequest = tbnyearr.Text + "/" + tbnmonr.Text + "/" + tbndar.Text;
            string dateRequired = tbnyear.Text + "/" + tbnmon.Text + "/" + tbnda.Text;
            string item = txbItem.Text;
            string quantity = txbQuan.Text;
            string remarks = tbnRemarks.Text;

            Purchase pu = new Purchase();
            Item it=new Item();
            pu.Name = name;
            pu.Address = address;
            pu.DateOfDelivery = null;
            pu.Dater = dateRequired;
            pu.DateRequest = dateOfRequest;
            it.ItemName=item;
            pu.Quantity = Convert.ToInt32(quantity);
            pu.Remark = remarks;
            pu.Quantity = 0;
            pu.Price = 0;
            pu.Status = "Preparing";
            EIDdbShoppingManagement.InsertShoppingList(pu, it);
        }
    }

}

