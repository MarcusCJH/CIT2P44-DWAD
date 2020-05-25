using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EIDShop.Class
{
    public class Item
    {
        public Item()
        {
        }

        
        private int itemNo;

        public int ItemNo
        {
            get { return itemNo; }
            set { itemNo = value; }
        }
        private string itemName;

        public string ItemName
        {
            get { return itemName; }
            set { itemName = value; }
        }

        private int purchaseId;

        public int PurchaseId
        {
            get { return purchaseId; }
            set { purchaseId = value; }
        }
    }
}