using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsDMT:GetConnectionString
    {
        public DataTable GetDataDmt()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("SP_GetDMT", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }
            catch(Exception ex)
            {
                return null;
            }

        }
         public int DataInsertDMt(string  image1, string Heading1, string content1, string content2, string content3, string content4, string create_updateby)
        {
            try
            {
                
                int result = 0;
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("SP_TblDMT", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Image1", image1);
                cmd.Parameters.AddWithValue("@Heading1", Heading1);
                cmd.Parameters.AddWithValue("@Content1", content1);
                cmd.Parameters.AddWithValue("@Content2", content2);
                cmd.Parameters.AddWithValue("@Content3", content3);
                cmd.Parameters.AddWithValue("@Content4", content4);
                cmd.Parameters.AddWithValue("@CreateBy", create_updateby);
                cmd.Parameters.AddWithValue("@UpdateBy", create_updateby);
                con.Open();
                result = cmd.ExecuteNonQuery();
                con.Close();
                return result;
            }
            catch (Exception ex )
            {
                return 0;
            }
        }
    }
}