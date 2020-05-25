using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace EIDShop.Class
{
    public class EIDdbVolunteerManagement
    {
        public static ArrayList retrieveVolunteer()
        {
            ArrayList result = new ArrayList();

            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "select * from Volunteer";


                SqlDataReader dr = comm.ExecuteReader();

                while (dr.Read())
                {
                    Volunteer a = new Volunteer();
                    a.VolunteerNo = (int)dr["Vol_no"];
                    a.VolunteerName = (string)dr["Vol_Name"];
                    result.Add(a);

                }
                dr.Close();
                conn.Close();
            }

            catch (SqlException e)
            {
                throw e;
            }

            return result;
        }

        public static Volunteer RetrieveAllByVol(int id)
        {
            Volunteer result = new Volunteer();
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select * from Volunteer where vol_no=@vol_no";
                comm.Parameters.AddWithValue("@vol_no", id);
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    result.VolunteerNo = id;
                    result.VolunteerName = (string)dr["vol_name"];
                    result.VolunteerNric = (string)dr["NRIC"];
                    result.VolunteerAddress = (string)dr["Address"];
                    result.VolunteerContactNumber = (int)dr["Contact_no"];
                    result.VolunteerEmail = (string)dr["Email"];
                    result.VolunteerDay = (string)dr["Available_day"];
                    result.Description = (string)dr["Description"];
                    result.Remarks = (string)dr["Remark"];
                    result.StaffNo = (int)(dr["staff_no"]);
                    result.VolunteerTime = (string)dr["Avaliable_Time"];
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return result;
        }

        public static int RetrieveMaxID()
        {
            int id = 0;
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select max(Vol_no) Vol_no from Volunteer";
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    id = (int)(dr["Vol_no"]);
                    break;
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return id;
        }



        public static int updateVolunteerInformation(Volunteer result)
        {
            int rowsupdated = 0;
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "update Volunteer set Vol_Name=@Vol_Name, NRIC=@NRIC, Address=@Address, Contact_no=@Contact_no, Email=@Email, Available_day=@Available_day, Description=@Description, Remark=@Remark, Staff_no=@Staff_no, Avaliable_Time=@Avaliable_Time where vol_no=@vol_no";
                comm.Parameters.AddWithValue("@vol_no", result.VolunteerNo);
                comm.Parameters.AddWithValue("@Vol_Name", result.VolunteerName);
                comm.Parameters.AddWithValue("@NRIC", result.VolunteerNric);
                comm.Parameters.AddWithValue("@Address", result.VolunteerAddress);
                comm.Parameters.AddWithValue("@Contact_no", result.VolunteerContactNumber);
                comm.Parameters.AddWithValue("@Email", result.VolunteerEmail);
                comm.Parameters.AddWithValue("@Remark", result.Remarks);
                comm.Parameters.AddWithValue("@Staff_no", result.StaffNo);
                comm.Parameters.AddWithValue("@Description", result.Description);
                comm.Parameters.AddWithValue("@Available_day", result.VolunteerDay);
                comm.Parameters.AddWithValue("@Avaliable_Time", result.VolunteerTime);

                rowsupdated = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return rowsupdated;
        }
        public static int InsertVol(Volunteer u, int staffno)
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
                comm.CommandText = "INSERT INTO Volunteer(Vol_Name,NRIC,Address,Contact_no,Email,Available_day,Description,Remark,Staff_no,Avaliable_Time)" +
                    " VALUES (@Vol_Name,@NRIC,@Address,@Contact_no,@Email,@Available_day,@Description,@Remark,@Staff_no,@Avaliable_Time)";
                comm.Parameters.AddWithValue("@Vol_Name", u.VolunteerName);
                comm.Parameters.AddWithValue("@NRIC", u.VolunteerNric);
                comm.Parameters.AddWithValue("@Address", u.VolunteerAddress);
                comm.Parameters.AddWithValue("@Contact_no", u.VolunteerContactNumber);
                comm.Parameters.AddWithValue("@Email", u.VolunteerEmail);
                comm.Parameters.AddWithValue("@Available_day", u.VolunteerDay);
                comm.Parameters.AddWithValue("@Description", u.Description);
                comm.Parameters.AddWithValue("@Remark", u.Remarks);
                comm.Parameters.AddWithValue("@Staff_no", staffno);
                comm.Parameters.AddWithValue("@Avaliable_Time", u.VolunteerAvaliabeSlot);

                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }
        public static int DeleteByID(int id)
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
                comm.CommandText = "Delete from Volunteer where Vol_no=@Vol_no";

                comm.Parameters.AddWithValue("@Vol_no", id);
                rowsdeleted = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsdeleted;
        }
    }
}