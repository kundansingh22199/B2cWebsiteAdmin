using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class OurMission : System.Web.UI.Page
    {
      
        GetConnectionString getConnectionString = new GetConnectionString();
        ClsAboutMaster clsAboutMaster = new ClsAboutMaster();
        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
                {
                    GetMission();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            } 
         
        }

        public void GetMission()
        {
            try
            {
                DataTable dt = clsAboutMaster.GetOurMission();
                if (dt.Rows.Count > 0)
                {
                    lblcontent1.Text = dt.Rows[0]["ContentFirst"].ToString();
                    lblcontent2.Text = dt.Rows[0]["ContentSecond"].ToString();
                    WhyusImage.ImageUrl = dt.Rows[0]["IamgeOurMission"].ToString();
                    ViewState["IamgeOurMission"] = dt.Rows[0]["IamgeOurMission"].ToString();
                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string userid = Session["userid"].ToString();
            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;

                int fileSize1 = 0;
                string ContentFirst = "", ContentSecound = "", Imageupload = "";
                if (image1.HasFile)
                {
                    fileSize1 = image1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        Imageupload = Path.GetFileName(image1.PostedFile.FileName);
                        image1.SaveAs(Server.MapPath("~/AdminModule/Images/" + Imageupload));
                        Imageupload = "~/AdminModule/Images/" + Imageupload;
                        status = ClsAllMethodPersonal.checkexetion(image1);
                    }
                    else
                    {
                        Imageupload = ViewState["IamgeOurMission"].ToString();
                    }
                }

                else
                {
                    Imageupload = ViewState["IamgeOurMission"].ToString();
                }
                if((txtcontent2.Text!=null) && (txtcontent2.Text != ""))
                {
                    ContentFirst = txtcontent2.Text;
                }
                else
                {
                    ContentFirst = lblcontent1.Text;
                }
                if ((txtContent1.Text != null) && (txtContent1.Text != ""))
                {
                    ContentSecound = txtContent1.Text;
                }
                else
                {
                    ContentSecound = lblcontent2.Text;
                }
                if (status == true)
                {
                    string strcon = getConnectionString.getconnection();
                    SqlConnection con = new SqlConnection(strcon);
                    SqlCommand cmd = new SqlCommand("Sp_TblOurMission", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ContentFirst", ContentFirst);
                    cmd.Parameters.AddWithValue("@ContentSecond", ContentSecound);
                    cmd.Parameters.AddWithValue("@IamgeOurMission", Imageupload);
                    cmd.Parameters.AddWithValue("@CreateBy", userid);
                    cmd.Parameters.AddWithValue("@UpdateBy", userid);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //lblmassage.Text = "Update Success ";
                    //lblmassage.ForeColor = Color.Green;
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
                    GetMission();
                    txtcontent2.Text = txtContent1.Text = "";

                }
                else
                {
                    messagebox.Visible = false;
                    messageboxerror.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }

        }
    }
}