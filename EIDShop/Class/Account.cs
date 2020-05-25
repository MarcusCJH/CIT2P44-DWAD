using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

namespace EIDShop.Class
{
    public class Account
    {
        public Account()
        {
        }

        
        public Account(string username, string password)
        {
            this.username = username;
            this.password = password;
        }
        private string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private int staffno;

        public int Staffno
        {
            get { return staffno; }
            set { staffno = value; }
        }

       
    }
}