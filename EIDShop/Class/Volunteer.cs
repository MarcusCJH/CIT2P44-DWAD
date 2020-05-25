using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EIDShop.Class
{
    public class Volunteer
    {
        private int volunteerNo;        
        private string volunteerName;
        private string volunteerNric;
        private string volunteerAddress;
        private int volunteerContactNumber;
        private string volunteerEmail;
        private string volunteerAvaliabeSlot;
        private string volunteerDay;
        private string volunteerTime;
        private string description;
        private string remarks;
        private int staffNo;

        public Volunteer()
        {
        }

        public Volunteer(int volunteerNo, string volunteerName, string volunteerNric, string volunteerAddress, int volunteerContactNumber, string volunteerEmail, string volunteerAvaliabeSlot, string volunteerDay, string volunteerTime, string description, string remarks, int staffNo)
        {
            this.volunteerNo = volunteerNo;
            this.volunteerName = volunteerName;
            this.volunteerNric = volunteerNric;
            this.volunteerAddress = volunteerAddress;
            this.volunteerContactNumber = volunteerContactNumber;
            this.volunteerEmail = volunteerEmail;
            this.volunteerAvaliabeSlot = volunteerAvaliabeSlot;
            this.volunteerDay = volunteerDay;
            this.volunteerTime = volunteerTime;
            this.description = description;
            this.remarks = remarks;
            this.staffNo = staffNo;
        }

        public int VolunteerNo
        {
            get { return volunteerNo; }
            set { volunteerNo = value; }
        }

        public string VolunteerName
        {
            get { return volunteerName; }
            set { volunteerName = value; }
        }

        public string VolunteerNric
        {
            get { return volunteerNric; }
            set { volunteerNric = value; }
        }

        public string VolunteerAddress
        {
            get { return volunteerAddress; }
            set { volunteerAddress = value; }
        }

        public int VolunteerContactNumber
        {
            get { return volunteerContactNumber; }
            set { volunteerContactNumber = value; }
        }

        public string VolunteerEmail
        {
            get { return volunteerEmail; }
            set { volunteerEmail = value; }
        }

        public string VolunteerAvaliabeSlot
        {
            get { return volunteerAvaliabeSlot; }
            set { volunteerAvaliabeSlot = value; }
        }

        public string VolunteerDay
        {
            get { return volunteerDay; }
            set { volunteerDay = value; }
        }

        public string VolunteerTime
        {
            get { return volunteerTime; }
            set { volunteerTime = value; }
        }

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        public string Remarks
        {
            get { return remarks; }
            set { remarks = value; }
        }

        public int StaffNo
        {
            get { return staffNo; }
            set { staffNo = value; }
        }
    }
}