using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsRecharge : GetConnectionString
    {
        public DataTable GetRechargeData()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("SP_GetRecharge", con);
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
        public int DataInsertRecharge(string Image1, string Heading1, string Content1, string Content2, string Content3, string create_updateby)
        {
            try
            {

                int result = 0;
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblRecharge", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Image1", Image1);
                cmd.Parameters.AddWithValue("@Heading1", Heading1);
                cmd.Parameters.AddWithValue("@Content1", Content1);
                cmd.Parameters.AddWithValue("@Content2", Content2);
                cmd.Parameters.AddWithValue("@Content3", Content3);
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