using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace EIDShop.Class
{
    public class EIDdbResidentManagement
    {
        public static ArrayList RetrieveResidentNoName()
        {
            ArrayList result = new ArrayList();

            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "select * from Resident";


                SqlDataReader dr = comm.ExecuteReader();

                while (dr.Read())
                {
                    Resident a = new Resident();
                    a.Resident_no = (int)dr["Resident_no"];
                    a.Resident_name = (string)dr["Resident_name"];
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
        public static int UpdateResident(Resident r,int id)
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
                comm.CommandText = "UPDATE Resident SET Resident_name=@Resident_name,NRIC=@NRIC,Address=@Address,DOB=@DOB,Ethic_group=@Ethic_group,Des_of_disabiliy=@Des_of_disabiliy,Gender=@Gender,Email=@Email,Contact_no=@Contact_no where Resident_no=@Resident_no";

                comm.Parameters.AddWithValue("@Resident_no", id);
                comm.Parameters.AddWithValue("@Resident_name", r.Resident_name);
                comm.Parameters.AddWithValue("@NRIC", r.NRIC);
                comm.Parameters.AddWithValue("@Address", r.Address);
                comm.Parameters.AddWithValue("@DOB", r.DDOB);
                comm.Parameters.AddWithValue("@Ethic_group", r.Ethic_group);
                comm.Parameters.AddWithValue("@Des_of_disabiliy", r.Des_of_disabiliy);
                comm.Parameters.AddWithValue("@Gender", r.Gender);
                comm.Parameters.AddWithValue("@Email", r.Email);
                comm.Parameters.AddWithValue("@Contact_no", r.Contact_no);
                rowsupdated = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsupdated;
        }
        public static int getMaxID()
        {
            int maxId = 0;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT max(Resident_no)res FROM Resident";
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    maxId = (int)dr["res"];
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }

            return maxId;
        }
        public static int InsertResident(Resident r,int staff_id)
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
                comm.CommandText = "insert into Resident(Resident_name,NRIC,Address,DOB,Ethic_group,Des_of_disabiliy,Staff_no,Gender,Email,Contact_no)values(@Resident_name,@NRIC,@Address,@DOB,@Ethic_group,@Des_of_disabiliy,@Staff_no,@Gender,@Email,@Contact_no)";

                comm.Parameters.AddWithValue("@Resident_name", r.Resident_name);
                comm.Parameters.AddWithValue("@NRIC", r.NRIC);
                comm.Parameters.AddWithValue("@Address", r.Address);
                comm.Parameters.AddWithValue("@DOB", r.DDOB);
                comm.Parameters.AddWithValue("@Ethic_group", r.Ethic_group);
                comm.Parameters.AddWithValue("@Des_of_disabiliy", r.Des_of_disabiliy);
                comm.Parameters.AddWithValue("@Staff_no", staff_id);
                comm.Parameters.AddWithValue("@Gender", r.Gender);
                comm.Parameters.AddWithValue("@Email", r.Email);
                comm.Parameters.AddWithValue("@Contact_no", r.Contact_no);
                rowsupdated = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsupdated;
        }
        public static Resident GetResidentcByResidentId(int id)
        {
            Resident r = new Resident();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM Resident WHERE Resident_no=@Resident_no";
                comm.Parameters.AddWithValue("@Resident_no", id);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    r.Resident_name = (string)dr["Resident_name"];
                    r.NRIC = (string)dr["NRIC"];
                    r.Address = (string)dr["Address"];
                    r.Ethic_group= (string)dr["Ethic_group"];
                    r.Des_of_disabiliy= (string)dr["Des_of_disabiliy"];
                    r.DOB= ((DateTime)dr["DOB"]);
                    r.Gender= (string)dr["Gender"];
                    r.Email= (string)dr["Email"];
                    r.Contact_no= (int)dr["Contact_no"];
                    r.Staff_no = (int)dr["Staff_no"];
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }

            return r;
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
                comm.CommandText = "Delete from Resident where Resident_no=@Resident_no";

                comm.Parameters.AddWithValue("@Resident_no", id);
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