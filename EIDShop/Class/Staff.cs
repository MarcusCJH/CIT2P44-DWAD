using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Configuration;

namespace EIDShop.Class
{
    public class Staff
    {

        public Staff()
        {
        }

        public Staff(string staffName, string nric, int contactNo, string address, string dob, char gender, string email, string ethnicGroup, string description)
        {
            this.staffName = staffName;
            this.nric = nric;
            this.contactNo = contactNo;
            this.address = address;
            this.dob = dob;
            this.gender = gender;
            this.email = email;
            this.ethnicGroup = ethnicGroup;
            this.description = description;
        }

        

        private int staffNo;

        public int StaffNo
        {
            get { return staffNo; }
            set { staffNo = value; }
        }


        private string staffName;

        public string StaffName
        {
            get { return staffName; }
            set { staffName = value; }
        }
        private string nric;

        public string Nric
        {
            get { return nric; }
            set { nric = value; }
        }
        private int contactNo;

        public int ContactNo
        {
            get { return contactNo; }
            set { contactNo = value; }
        }
        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private string dob;

        public string Dob
        {
            get { return dob; }
            set { dob = value; }
        }
        private char gender;

        public char Gender
        {
            get { return gender; }
            set { gender = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string ethnicGroup;

        public string EthnicGroup
        {
            get { return ethnicGroup; }
            set { ethnicGroup = value; }
        }
        private string description;
        private string fullName;
        private string NRIC;
        private string gender_2;

        public string Description
        {
            get { return description; }
            set { description = value; }
        }
    }
}