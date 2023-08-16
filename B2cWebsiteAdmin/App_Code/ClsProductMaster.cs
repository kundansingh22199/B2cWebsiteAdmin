using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsProductMaster:GetConnectionString
    {

        public DataTable GetProductData()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter adp = new SqlDataAdapter("Select * from TblProductMaster where IsDeleted=0", con);
                //adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }

        }

        public DataTable GetProductDataByStatus()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter adp = new SqlDataAdapter("SP_GetProductData", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public int ActivateDeactivateProduct(int id, int status, string UpdatedBy)
        {
            string strcon = getconnection();
            SqlConnection con = new SqlConnection(strcon);
            int result = 0;
            SqlCommand cmd1 = new SqlCommand("SP_ActiveDeactiveProduct", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Id", id);
            cmd1.Parameters.AddWithValue("@Status", status);
            cmd1.Parameters.AddWithValue("@UpdatedBy", UpdatedBy);
            con.Open();
            return result = cmd1.ExecuteNonQuery();
            con.Close();
        }

        public int ProductNameUpdate(int id, string ProductName, string UpdatedBy)
        {
            string strcon = getconnection();
            SqlConnection con = new SqlConnection(strcon);
            int result = 0;
            SqlCommand cmd1 = new SqlCommand("SP_ProductUpdate", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Id", id);
            cmd1.Parameters.AddWithValue("@ProductName", ProductName);
            cmd1.Parameters.AddWithValue("@UpdatedBy", UpdatedBy);
            con.Open();
            return result = cmd1.ExecuteNonQuery();
            con.Close();
        }
        public int DeleteProduct(int id, string DeletedBy)
        {
            string strcon = getconnection();
            SqlConnection con = new SqlConnection(strcon);
            int result = 0;
            SqlCommand cmd1 = new SqlCommand("SP_ProductDelete", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Id", id);
            cmd1.Parameters.AddWithValue("@DeletedBy", DeletedBy);
            cmd1.Parameters.AddWithValue("@Status", 0);
            cmd1.Parameters.AddWithValue("@IsDeleted", 1);
            con.Open();
            return result = cmd1.ExecuteNonQuery();
            con.Close();
        }
    }
}