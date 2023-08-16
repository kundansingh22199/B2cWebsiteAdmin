using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsAboutMaster : GetConnectionString
    {

        public DataTable AboutContent()
        {
            try
            {
                string conStr = getconnection();
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("SP_GetAboutMaster", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter Adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                Adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return dt;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                return null;
            }

        }

        public DataTable GetTeamMaster()
        {
            try
            {
                string conStr = getconnection();
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand sqlCommand = new SqlCommand("SP_GetTeamMaster", con);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return dt;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public DataTable GetWhyUs()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("SP_GetWhyUs", con);
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return dt;
                }
                else
                {
                    return dt;
                }
            }
            catch (Exception ex)
            {
                return null;
            }


        }
        public DataTable GetOurMission()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("SP_GetOurMission", con);
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
    }
}