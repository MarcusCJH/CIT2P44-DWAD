using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EIDShop.Class
{
    public class Resident
    {
        private int resident_no;

        public int Resident_no
        {
            get { return resident_no; }
            set { resident_no = value; }
        }
        private string resident_name;

        public string Resident_name
        {
            get { return resident_name; }
            set { resident_name = value; }
        }
        private string nRIC;

        public string NRIC
        {
            get { return nRIC; }
            set { nRIC = value; }
        }
        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private DateTime dOB;

        public DateTime DOB
        {
            get { return dOB; }
            set { dOB = value; }
        }

        private string ddOB;

        public string DDOB
        {
            get { return ddOB; }
            set { ddOB = value; }
        }

        private string ethic_group;

        public string Ethic_group
        {
            get { return ethic_group; }
            set { ethic_group = value; }
        }
        private string des_of_disabiliy;

        public string Des_of_disabiliy
        {
            get { return des_of_disabiliy; }
            set { des_of_disabiliy = value; }
        }
        private int staff_no;

        public int Staff_no
        {
            get { return staff_no; }
            set { staff_no = value; }
        }
        private string gender;

        public string Gender
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
        private int contact_no;

        public int Contact_no
        {
            get { return contact_no; }
            set { contact_no = value; }
        }

        public Resident()
        {
        }
    }
}