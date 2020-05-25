using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using EIDShop.Class;
namespace EIDShop
{
    public partial class WebForm2 : System.Web.UI.Page
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

        protected void dlResident_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Del")//Button里的CommandName
            {
                int ID = (int)dlResident.DataKeys[e.Item.ItemIndex];//获取删除信息的ID
                EIDdbResidentManagement.DeleteByID(ID);
            }
            ArrayList residentList = EIDdbResidentManagement.RetrieveResidentNoName();
            dlResident.DataSource = residentList;
            dlResident.DataBind();
        }

    }
}