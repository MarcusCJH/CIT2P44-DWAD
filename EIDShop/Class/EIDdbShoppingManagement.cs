using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using EIDShop.Class;
using System.Configuration;
namespace EIDShop.Class
{
    public class EIDdbShoppingManagement
    {
        public static ArrayList retrieveResident()
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
                    //a.ResidentName = (string)dr["Resident_name"];
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


        public static Resident RetrieveAllByResident(int id)
        {
            Resident result = new Resident();

            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select * from Resident where Resident_no=@Resident_no";
                comm.Parameters.AddWithValue("@Resident_no", id);

                SqlDataReader dr = comm.ExecuteReader();

                while (dr.Read())
                {
                    //result.ResidentName = (string)dr["Resident_name"];
                    result.Address = (string)dr["Address"];

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


        public static Purchase RetrievePurchaseInfo(int id)
        {
            Purchase result = new Purchase();

            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select * from Purchase where Resident_no=@Resident_no";
                comm.Parameters.AddWithValue("@Resident_no", id);

                SqlDataReader dr = comm.ExecuteReader();

                while (dr.Read())
                {
                    result.DateRequest = (string)dr["Date_Request"];
                    result.DateOfDelivery = (string)dr["DateOfDelivery"];
                    result.Dater = (string)dr["Date_required"];
                    result.PurDate = (string)dr["Pur_date"];
                    result.Status = (string)dr["Status"];
                    result.VolNo = (int)dr["Vol_no"];
                    result.Remark = (string)dr["Remark"];

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

        public static Item RetrieveItemInfo(int id)
        {
            Item result = new Item();

            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select * from item where Item_no@Item_no";
                comm.Parameters.AddWithValue("@Item_No", id);

                SqlDataReader dr = comm.ExecuteReader();

                while (dr.Read())
                {
                    //result.Quantity = (int)dr["Quantity"];
                    result.ItemName = (string)dr["Item_name"];
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
        public static int InsertShoppingList(Purchase pu, Item it)
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
                comm.CommandText = "INSERT INTO Volunteer(Name,Address,Quantity,Price,Status,Date_required,Date_request,DateOfPurchase,DateOfDelivery,Remark,Staff_no,Vol_no,Resident_no)" +
                    " VALUES (@Name,@Address,@Quantity,@Price,@Status,@Date_required,@Date_request,@DateOfPurchase,@DateOfDelivery,@Remark,@Staff_no,@Vol_no,@Resident_no)";
                comm.Parameters.AddWithValue("@Name", pu.Name);
                comm.Parameters.AddWithValue("@Address", pu.Address);
                comm.Parameters.AddWithValue("@Quantity", pu.Quantity);
                comm.Parameters.AddWithValue("@Price", pu.Price);
                comm.Parameters.AddWithValue("@Status", pu.Status);
                comm.Parameters.AddWithValue("@Date_required", pu.DateOfDelivery);
                comm.Parameters.AddWithValue("@Date_request", pu.DateRequest);
                comm.Parameters.AddWithValue("@DateOfPurchase", pu.PurDate);
                comm.Parameters.AddWithValue("@DateOfDelivery", pu.DateOfDelivery);
                comm.Parameters.AddWithValue("@Remark", pu.Remark);
                comm.Parameters.AddWithValue("@Staff_no", pu.StaffNo);
                comm.Parameters.AddWithValue("@Vol_no", pu.VolNo);
                comm.Parameters.AddWithValue("@Resident_no", pu.ResidentNo);
                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            it.PurchaseId = getMaxPurchaseID();
            InsertItem(it);
            return rowsinserted;
        }
        private static int InsertItem(Item it)
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
                comm.CommandText = "INSERT INTO Item(Item_name,Purchase_id)" +
                    " VALUES (@Item_name,@Purchase_id)";
                comm.Parameters.AddWithValue("@Item_name", it.ItemName);
                comm.Parameters.AddWithValue("@Purchase_id", it.PurchaseId);
                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        private static int getMaxPurchaseID()
        {
            int max=0;
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["EIDdbConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "Select max(Purchase_id)pur_id from Purchase";

                SqlDataReader dr = comm.ExecuteReader();

                while (dr.Read())
                {
                    max = (int)dr["pur_id"];
                }
                dr.Close();
                conn.Close();
            }

            catch (SqlException e)
            {
                throw e;
            }

            return max;
        }

    }
    
}