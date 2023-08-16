using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsTermCondition:GetConnectionString
    {
        public DataTable GetTermCondtion()
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlDataAdapter adp = new SqlDataAdapter("SP_GetTermCondition", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;

            }
            catch( Exception ex)
            {
                return null;
            }
        }
        public int TermContionInsert(string Section1Heading, string Section1content1, string Section1content2, string Section1content3, string Section1content4, string Section1content5, string Section1content6, string Section1content7, string Section1content8, string CreateBy, string UpdateBy)
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("Sp_TblTermCondition", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Section1Heading", Section1Heading);
                cmd.Parameters.AddWithValue("@Section1content1", Section1content1);
                cmd.Parameters.AddWithValue("@Section1content2", Section1content2);
                cmd.Parameters.AddWithValue("@Section1content3", Section1content3);
                cmd.Parameters.AddWithValue("@Section1content4", Section1content4);
                cmd.Parameters.AddWithValue("@Section1content5", Section1content5);
                cmd.Parameters.AddWithValue("@Section1content6", Section1content6);
                cmd.Parameters.AddWithValue("@Section1content7", Section1content7);
                cmd.Parameters.AddWithValue("@Section1content8", Section1content8);
                cmd.Parameters.AddWithValue("@CreateBy", CreateBy);
                cmd.Parameters.AddWithValue("@UpdateBy", UpdateBy);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Close();
                return result;
            }
            catch(Exception ex)
            {
                return 0;
            }
        }
    }
}