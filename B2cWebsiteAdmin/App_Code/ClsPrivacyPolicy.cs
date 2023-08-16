using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsPrivacyPolicy:GetConnectionString
    {
      public DataTable GetPrivacyPolicy()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter adp = new SqlDataAdapter("SP_GetPrivacyPolicy", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }
            catch(Exception ex)
            {
                return null;
            }

        }
        public int PrivacyPolicysection(string Section1Heading, string Section1para , string Section2heading , string Section2para1 , string Section2para2 , string Section2para3 , string Section2para4 , string Section2para5 , string Section2para6 , string Section2para7 , string Section2para8 , string  Section3heading , string Section3para , string  Section4heading , string  Section4para, string Section5heading, string Section5para , string CreateBy, string UpdateBy )
        {
            try
            {
                {
                    string strcon = getconnection();
                    SqlConnection con = new SqlConnection(strcon);
                    SqlCommand cmd = new SqlCommand("SP_TblPrivacyPolicy", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Section1Heading", Section1Heading);
                    cmd.Parameters.AddWithValue("@Section1para", Section1para);
                    cmd.Parameters.AddWithValue("@Section2heading", Section2heading);
                    cmd.Parameters.AddWithValue("@Section2para1", Section2para1);
                    cmd.Parameters.AddWithValue("@Section2para2", Section2para2);
                    cmd.Parameters.AddWithValue("@Section2para3", Section2para3);
                    cmd.Parameters.AddWithValue("@Section2para4", Section2para4);
                    cmd.Parameters.AddWithValue("@Section2para5", Section2para5);
                    cmd.Parameters.AddWithValue("@Section2para6", Section2para6);
                    cmd.Parameters.AddWithValue("@Section2para7", Section2para7);
                    cmd.Parameters.AddWithValue("@Section2para8", Section2para8);
                    cmd.Parameters.AddWithValue("@Section3heading", Section3heading);
                    cmd.Parameters.AddWithValue("@Section3para", Section3para);
                    cmd.Parameters.AddWithValue("@Section4heading", Section4heading);
                    cmd.Parameters.AddWithValue("@Section4para", Section4para);
                    cmd.Parameters.AddWithValue("@Section5heading", Section5heading);
                    cmd.Parameters.AddWithValue("@Section5para", Section5para);
                    cmd.Parameters.AddWithValue("@CreateBy", CreateBy);
                    cmd.Parameters.AddWithValue("@UpdateBy", UpdateBy);
                    con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    return result;
                }
            }
            catch(Exception ex)
            {
                return 0;
            }

        }
    }
}