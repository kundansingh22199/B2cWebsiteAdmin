using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsBBPS:GetConnectionString
    {
        public DataTable GetDataBBPS()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("SP_GetBBPS", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public int DataInsertBBPS(string image1, string Heading1, string content1,string paragraph1, string paragraph2, string paragraph3, string paragraph4, string create_updateby)
        {
            try
            {

                int result = 0;
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblBBPS", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Image1", image1);
                cmd.Parameters.AddWithValue("@Heading1", Heading1);
                cmd.Parameters.AddWithValue("@Content1",content1);
                cmd.Parameters.AddWithValue("@Paragraph1", paragraph1);
                cmd.Parameters.AddWithValue("@Paragraph2", paragraph2);
                cmd.Parameters.AddWithValue("@Paragraph3", paragraph3);
                cmd.Parameters.AddWithValue("@Paragraph4", paragraph4);
                cmd.Parameters.AddWithValue("@CreateBy", create_updateby);
                cmd.Parameters.AddWithValue("@UpdateBy", create_updateby);
                con.Open();
                result = cmd.ExecuteNonQuery();
                con.Close();
                return result;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
    }
}