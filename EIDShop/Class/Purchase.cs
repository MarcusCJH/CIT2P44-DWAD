using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EIDShop.Class
{
    public class Purchase
    {
        private int purchaseId;

        public int PurchaseId
        {
            get { return purchaseId; }
            set { purchaseId = value; }
        }

        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        private int quantity;

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }

        private int price;

        public int Price
        {
            get { return price; }
            set { price = value; }
        }

        private string status;

        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        private string dater;

        public string Dater
        {
            get { return dater; }
            set { dater = value; }
        }
        private string purDate;

        public string PurDate
        {
            get { return purDate; }
            set { purDate = value; }
        }
        private string dateOfDelivery;

        public string DateOfDelivery
        {
            get { return dateOfDelivery; }
            set { dateOfDelivery = value; }
        }
        private string remark;

        public string Remark
        {
            get { return remark; }
            set { remark = value; }
        }
        private int staffNo;

        public int StaffNo
        {
            get { return staffNo; }
            set { staffNo = value; }
        }
        private int volNo;

        public int VolNo
        {
            get { return volNo; }
            set { volNo = value; }
        }
        private int residentNo;

        public int ResidentNo
        {
            get { return residentNo; }
            set { residentNo = value; }
        }
        private string dateRequest;

        public string DateRequest
        {
            get { return dateRequest; }
            set { dateRequest = value; }
        }

        public Purchase()
        {
        }


    }
}