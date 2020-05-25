using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;


namespace EIDShop.Class
{
    public class EIDdbUserManagement
    {
        // Login
        public static int Login(string input_username, string input_password)
        {    
            int id = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.
                    ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM Account WHERE username=@username and password=@password";
                comm.Parameters.AddWithValue("@username", input_username);
                comm.Parameters.AddWithValue("@password", input_password);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read()) //dr.Read() will return true if there is at least one row
                {
                    id = (int)dr["staff_no"];
                }
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }

            return id;
        }

        // Register
        public static int InsertStaff(Account a, Staff s)
        {
            int rowsinserted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                
                comm.CommandText = "INSERT INTO STAFF(Staff_name,NRIC,Contact_no,Address,DOB,Gender,Email,Ethnic_Group,Description)" +
                    " VALUES (@Staff_name,@NRIC,@Contact_no,@Address,@DOB,@Gender,@Email,@Ethnic_Group,@Description)";
                
                comm.Parameters.AddWithValue("@Staff_name", s.StaffName);
                comm.Parameters.AddWithValue("@NRIC", s.Nric);
                comm.Parameters.AddWithValue("@Contact_no", s.ContactNo);
                comm.Parameters.AddWithValue("@Address", s.Address);
                comm.Parameters.AddWithValue("@DOB", s.Dob);
                comm.Parameters.AddWithValue("@Gender", s.Gender);
                comm.Parameters.AddWithValue("@Email", s.Email);
                comm.Parameters.AddWithValue("@Ethnic_Group", s.EthnicGroup);
                comm.Parameters.AddWithValue("@Description", s.Description);
                
                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            
            catch (SqlException e)
            {
                throw e;
            }
            InsertAccount(a);
            return rowsinserted;
        }


        public static ArrayList GetStaffs()
        {
            ArrayList arr = new ArrayList();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.
                    ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT staff_no FROM staff";

                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read()) //dr.Read() will return true if there is at least one row
                {
                    arr.Add((int)dr["staff_no"]);
                }
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return arr;
        }
        // Insert Account
        private static int InsertAccount(Account a)
        {
            int rowsinserted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "INSERT INTO ACCOUNT(username,password,staff_no)" +
                    " VALUES (@username,@password,(SELECT MAX(Staff_No) from Staff))";
                comm.Parameters.AddWithValue("@username", a.Username);
                comm.Parameters.AddWithValue("@password", a.Password);
                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        // Delete Account
        public static int DeleteAccount(int staffno)
        {
            int rowsdeleted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Delete from Account where Staff_no=@staffno";
                
                comm.Parameters.AddWithValue("@staffno", staffno);
                rowsdeleted = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsdeleted;
        }

        // Retrieve Account Details
        public static Staff GetStaffDetails(int id)
        {
            Staff s = new Staff();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM staff WHERE staff_no=@staffno";
                comm.Parameters.AddWithValue("@staffno", id);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    
                    s.StaffName = (string)dr["Staff_name"];
                    s.Nric = (string)dr["NRIC"];
                    s.ContactNo = (int)dr["Contact_no"];
                    s.Address = (string)dr["Address"];
                    s.Dob = (string)dr["DOB"].ToString() ;
                    s.Gender = ((string)dr["Gender"])[0];
                    s.Email = (string)dr["Email"];
                    s.EthnicGroup = (string)dr["Ethnic_Group"];
                    s.Description = (string)dr["Description"].ToString();

                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }

            return s;

        }

        // Update Details
        public static int UpdateDetails(Account a, Staff s, int id)
        {
            int rowsupdated = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "UPDATE Staff SET Contact_no=@Contact_no,Address=@address,Email=@Email,Description=@Description where Staff_No=@Staff_No";
                comm.Parameters.AddWithValue("@Contact_no", s.ContactNo);
                comm.Parameters.AddWithValue("@Address", s.Address);
                comm.Parameters.AddWithValue("@Email", s.Email);
                comm.Parameters.AddWithValue("@Description", s.Description);
                comm.Parameters.AddWithValue("@Staff_No", id);
                rowsupdated = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            UpdateAccount(a,id);
            
            return rowsupdated;
        }

        // Update Account
        private static int UpdateAccount(Account a, int id)
        {
            int rowsupdated = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "UPDATE Account SET Password=@Password where Staff_no=@Staff_no";
                comm.Parameters.AddWithValue("@Password", a.Password);
                comm.Parameters.AddWithValue("@Staff_no", id);
                rowsupdated = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsupdated;
        }


    }
}


       