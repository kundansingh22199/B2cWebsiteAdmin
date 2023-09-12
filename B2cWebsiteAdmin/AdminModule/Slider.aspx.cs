using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
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
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        ClsBannerMaster clsBannerMaster = new ClsBannerMaster();
       
        //ClsActionLogs actionLogs = new ClsActionLogs();
        string filename = "", filename2 = "", filename3 = "";
        int fileSize3 = 0, fileSize1 = 0, fileSize2 = 0;
        string lblheading11 = "", lblcontent1s11 = "", s1txtlink11 = "", s1txtlink21 = "", lblheadingS21 = "", lblcontentS21 = "", lblLink1s21 = "", lblLink2s21 = "", lblheading31 = "", lblcontent31 = "", lbllink1s31 = "", lbllink2s31 = "";
        int minsize = 10 * 1024; int maxsize = 3 * 1024 * 1024, count1=0, count2=0, count3=0;
        bool status = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind1();
                SliderSectionOne.Visible = true;
                SliderSectionTwo.Visible = false;
                SliderSectionThree.Visible = false;
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }

        public void DataBind1()
        {

            DataTable dt = clsBannerMaster.GetSliderBanner();
            if (dt != null && dt.Rows.Count > 0)
            {


                ViewState["slider1"] = dt.Rows[0]["sliderImage1"].ToString();
                ViewState["slider2"] = dt.Rows[0]["sliderImage2"].ToString();
                ViewState["slider3"] = dt.Rows[0]["sliderImage2"].ToString();
                Imagefirst.ImageUrl = dt.Rows[0]["sliderImage1"].ToString();  // dt.Rows[0]["sliderimage1"].ToString();
                ImageSecond.ImageUrl = dt.Rows[0]["sliderImage2"].ToString(); // dt.Rows[0]["sliderimage2"].ToString();
                imagethird.ImageUrl = dt.Rows[0]["sliderImage3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblheading1"] = lblheading1.Text = dt.Rows[0]["sliderHeading1"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblcontent1s1"] = lblcontent1s1.Text = dt.Rows[0]["sliderContent1"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["s1txtlink1"] = s1txtlink1.Text = dt.Rows[0]["sliderButton1link1"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["s1txtlink2"] = s1txtlink2.Text = dt.Rows[0]["sliderButton2link1"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblheadingS2"] = lblheadingS2.Text = dt.Rows[0]["sliderHeading2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblcontentS2"] = lblcontentS2.Text = dt.Rows[0]["sliderContent2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblLink1s2"] = lblLink1s2.Text = dt.Rows[0]["sliderButton1link2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblLink2s2"] = lblLink2s2.Text = dt.Rows[0]["sliderButton2link2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblheading3"] = lblheading3.Text = dt.Rows[0]["sliderHeading3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblcontent3"] = lblcontent3.Text = dt.Rows[0]["sliderContent3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lbllink1s3"] = lbllink1s3.Text = dt.Rows[0]["sliderButton1link3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lbllink2s3"] = lbllink2s3.Text = dt.Rows[0]["sliderButton2link3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                Slider1CheckBox.Checked = Convert.ToBoolean(dt.Rows[0]["Slider1Status"]);
                Slider2CheckBox.Checked = Convert.ToBoolean(dt.Rows[0]["Slider2Status"]);
                Slider3CheckBox.Checked = Convert.ToBoolean(dt.Rows[0]["Slider3Status"]);
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

            try
            {


                // Text Field  Second ****************************************************************************************************
                if ((slidercontent2s2.Text != null) && (slidercontent2s2.Text != ""))
                {
                    lblcontentS21 = slidercontent2s2.Text;
                }
                else
                {
                    lblcontentS21 = ViewState["lblcontent1s1"].ToString();
                }
                if ((sliderheading2s2.Text != null) && (sliderheading2s2.Text != ""))
                {
                    lblheadingS21 = sliderheading2s2.Text;
                }
                else
                {
                    lblheadingS21 = ViewState["lblheadingS2"].ToString();
                }
                if ((sliderlink1s2.Text != null) && (sliderlink1s2.Text != ""))
                {
                    lblLink1s21 = sliderlink1s2.Text;
                }
                else
                {
                    lblLink1s21 = ViewState["lblLink1s2"].ToString();
                }
                if ((sliderlink2s2.Text != null) && (sliderlink2s2.Text != ""))
                {
                    lblLink2s21 = sliderlink2s2.Text;
                }
                else
                {
                    lblLink2s21 = ViewState["lblLink2s2"].ToString();
                }
               



                if (FileUpload2.HasFile)
                {
                    fileSize2 = FileUpload2.PostedFile.ContentLength;
                    if (fileSize2 > minsize & fileSize2 < maxsize)
                    {

                        filename2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                        filename2 = "~/AdminModule/Images/" + filename2;
                        status = checkexetion(FileUpload2);
                    }
                    else
                    {
                        filename2 = ViewState["slider2"].ToString();
                        count2++;
                    }
                }
                else
                {
                    filename2 = ViewState["slider2"].ToString();

                }


                if (status == true && count2==0)
                {

                    SqlCommand cmd = new SqlCommand("SP_Slider2Update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sliderImage2", filename2);
                    cmd.Parameters.AddWithValue("@sliderHeading2", lblheadingS21);
                    cmd.Parameters.AddWithValue("@sliderContent2", lblcontentS21);
                    cmd.Parameters.AddWithValue("@sliderButton1link2", lblLink1s21);
                    cmd.Parameters.AddWithValue("@sliderButton2link2", lblLink2s21);

                    cmd.Parameters.AddWithValue("@sliderButton1Title2", "");
                    cmd.Parameters.AddWithValue("@sliderButton2Title2", "");

                    
                    cmd.Parameters.AddWithValue("@Createby", "");
                    cmd.Parameters.AddWithValue("@updateby", "");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    //txtmessage.Text = "Update Success";
                    //txtmessage.ForeColor = Color.Green;
                 
                    if (result > 0)
                    {
                        ////ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "ShowPopup2();", true);
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        ImageSizeAlert.Visible = false;
                    }
                    else
                    {
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        ImageSizeAlert.Visible = false;
                    }
                    slidercontent2s2.Text = "";
                    sliderheading2s2.Text = "";
                    sliderlink1s2.Text = "";
                    sliderlink2s2.Text = "";

                }

                else
                {
                    messageboxerror.Visible = false;
                    messagebox.Visible = false;
                    ImageSizeAlert.Visible = true;
                }

            }
            catch (Exception ex)
            {
                //actionLogs.ActionLogs("Slider Exception", ex.Message, "SLIDER");
            }


        }
        bool checkexetion(FileUpload fileUpload1)
        {
            try
            {
                bool Status;

                string FileExt = Path.GetExtension(fileUpload1.FileName);



                if (FileExt.ToUpper() == "PNG" || FileExt.ToUpper() == "JPG" || FileExt.ToUpper() == "JPEG" || FileExt.ToUpper() == ".JPEG" || FileExt.ToUpper() == ".JPG" || FileExt.ToUpper() == ".PNG")
                {
                    Status = true;
                }
                else
                {
                    Status = false;
                }

                return Status;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        protected void lnkbtn1_Click(object sender, EventArgs e)
        {
            SliderSectionOne.Visible = true;
            SliderSectionTwo.Visible = false;
            SliderSectionThree.Visible = false;
            messagebox.Visible = false;
            messageboxerror.Visible = false;
            //tabpan1.Attributes["Style"] = $"background-color:#0A77F4";
            //tabpan1.Attributes["Style"] = $"color:white";
            Color colour = ColorTranslator.FromHtml("#004EF9");
            lnkbtn1.BackColor = colour;
            lnkbtn1.ForeColor = Color.White;

            lnkBtnSlider2.BackColor = Color.Empty;
            lnkBtnSlider2.ForeColor = Color.Empty;
            lnkbtnslider3.BackColor = Color.Empty;
            lnkbtnslider3.ForeColor = Color.Empty;
        }

        protected void lnkBtnSlider2_Click(object sender, EventArgs e)
        {
            SliderSectionOne.Visible = false;
            SliderSectionTwo.Visible = true;
            SliderSectionThree.Visible = false;
            messagebox.Visible = false;
            messageboxerror.Visible = false;
            //tabpan2.Attributes["Style"] = $"background-color:#0A77F4";
            //tabpan2.Attributes["Style"] = $"color:white";
            Color colour = ColorTranslator.FromHtml("#004EF9");
            lnkBtnSlider2.BackColor = colour;
            lnkBtnSlider2.ForeColor = Color.White;

            lnkbtn1.BackColor = Color.Empty;
            lnkbtn1.ForeColor = Color.Empty;
            lnkbtnslider3.BackColor = Color.Empty;
            lnkbtnslider3.ForeColor = Color.Empty;
        }

        protected void lnkbtnslider3_Click(object sender, EventArgs e)
        {
            SliderSectionOne.Visible = false;
            SliderSectionTwo.Visible = false;
            SliderSectionThree.Visible = true;
            messagebox.Visible = false;
            messageboxerror.Visible = false;
            //tabpan3.Attributes["Style"] = $"background-color:#0A77F4";
            //tabpan3.Attributes["Style"] = $"color:white";
            Color colour = ColorTranslator.FromHtml("#004EF9");
            lnkbtnslider3.BackColor = colour;
            lnkbtnslider3.ForeColor = Color.White;

            lnkbtn1.BackColor = Color.Empty;
            lnkbtn1.ForeColor = Color.Empty;
            lnkBtnSlider2.BackColor = Color.Empty;
            lnkBtnSlider2.ForeColor = Color.Empty;
        }



        protected void S1btn_submit_Click1(object sender, EventArgs e)
        {
            try
            {

                //Text Field First-------------------------------------------------------------------------------------------------------
                if ((s1txtcontent.Text != null) && (s1txtcontent.Text != ""))
                {
                    lblcontent1s11 = s1txtcontent.Text;
                }
                else
                {
                    lblcontent1s11 = ViewState["lblcontent1s1"].ToString();
                }
                if ((s1txtheading.Text != null) && (s1txtheading.Text != ""))
                {
                    lblheading11 = s1txtheading.Text;
                }
                else
                {
                    lblheading11 = ViewState["lblheading1"].ToString();
                }
                if ((s1txtlink.Text != null) && (s1txtlink.Text != ""))
                {
                    s1txtlink11 = s1txtlink.Text;
                }
                else
                {
                    s1txtlink11 = ViewState["s1txtlink1"].ToString();
                }
                if ((txtlink1s1.Text != null) && (txtlink1s1.Text != ""))
                {
                    s1txtlink21 = txtlink1s1.Text;
                }
                else
                {
                    s1txtlink21 = ViewState["s1txtlink2"].ToString();
                }
                if (FileUpload1.HasFile)
                {
                    fileSize1 = FileUpload1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename));
                        filename = "~/AdminModule/Images/" + filename;
                        status = checkexetion(FileUpload1);
                    }
                    else
                    {
                        count1++;
                        filename = ViewState["slider1"].ToString();
                    }
                }
                else
                {
                    filename = ViewState["slider1"].ToString();


                }
                if (status == true && count1==0)
                {

                    SqlCommand cmd = new SqlCommand("SP_Slider1tUpdate", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sliderImage1", filename);
                    cmd.Parameters.AddWithValue("@sliderContent1", lblcontent1s11);
                    cmd.Parameters.AddWithValue("@sliderHeading1", lblheading11);
                    cmd.Parameters.AddWithValue("@sliderButton1link1", s1txtlink11);
                    cmd.Parameters.AddWithValue("@sliderButton2link1", s1txtlink21);
                    cmd.Parameters.AddWithValue("@sliderButton1Title1", "");
                    cmd.Parameters.AddWithValue("@sliderButton2Title1", "");
                    cmd.Parameters.AddWithValue("@createby", "");
                    cmd.Parameters.AddWithValue("@updateby", "");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    
                  int result=  cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    //txtmessage.Text = "Update Success";
                    //txtmessage.ForeColor = Color.Green;
                    s1txtcontent.Text= s1txtheading.Text= s1txtlink.Text =txtlink1s1.Text = "";
                    if (result > 0)
                    {
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        ImageSizeAlert.Visible = false;
                    }
                    else
                    {
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        ImageSizeAlert.Visible = false;
                    }

                }
                else
                {
                    ImageSizeAlert.Visible = true;
                    messageboxerror.Visible = false;
                    messagebox.Visible = false;
                }
            }
            catch (Exception ex)
            {

            }
        }
        protected void s3btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                // Text Field Third ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                if ((s3txtcontent.Text != null) && (s3txtcontent.Text != ""))
                {
                    lblcontent31 = s3txtcontent.Text;
                }
                else
                {
                    lblcontent31 = ViewState["lblcontent3"].ToString();
                }
                if ((s3txtheading.Text != null) && (s3txtheading.Text != ""))
                {
                    lblheading31 = s3txtheading.Text;
                }
                else
                {
                    lblheading31 = ViewState["lblheading3"].ToString();
                }
                if ((s3txtlonk1.Text != null) && (s3txtlonk1.Text != ""))
                {
                    lbllink1s31 = s3txtlonk1.Text;
                }
                else
                {
                    lbllink1s31 = ViewState["lbllink1s3"].ToString();
                }
                if ((txtlink2s3.Text != null) && (txtlink2s3.Text != ""))
                {
                    lbllink2s31 = txtlink2s3.Text;
                }
                else
                {
                    lbllink2s31 = ViewState["lbllink2s3"].ToString();
                }
                if (FileUpload3.HasFile)
                {

                    fileSize3 = FileUpload3.PostedFile.ContentLength;
                    if (fileSize3 > minsize & fileSize3 < maxsize)
                    {
                        filename3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
                        FileUpload3.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename3));
                        filename3 = "~/AdminModule/Images/" + filename3;
                        status = checkexetion(FileUpload3);
                    }
                    else
                    {
                        count3++;
                        filename3 = ViewState["slider3"].ToString();
                    }
                }
                else
                {
                    filename3 = ViewState["slider3"].ToString();
                }
                if (status == true && count3==0)
                {
                    SqlCommand cmd = new SqlCommand("SP_Slider3Update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sliderImage3", filename3);
                    cmd.Parameters.AddWithValue("@sliderContent3", lblcontent31);
                    cmd.Parameters.AddWithValue("@sliderHeading3", lblheading31);
                    cmd.Parameters.AddWithValue("@sliderButton1link3", lbllink1s31);
                    cmd.Parameters.AddWithValue("@sliderButton2link3", lbllink2s31);

                    cmd.Parameters.AddWithValue("@sliderButton1Title3", "");
                    cmd.Parameters.AddWithValue("@sliderButton2Title3", "");
                    cmd.Parameters.AddWithValue("@createby", "");
                    cmd.Parameters.AddWithValue("@updateby", "");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    
                    int result =cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    //txtmessage.Text = "Update Success";
                    //txtmessage.ForeColor = Color.Green;
                    s3txtcontent.Text = s3txtheading.Text = s3txtlonk1.Text = "";
                    if (result > 0)
                    {
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        ImageSizeAlert.Visible = false;
                    }
                    else
                    {
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        ImageSizeAlert.Visible = false;
                    }
                }
                else
                {
                    ImageSizeAlert.Visible = true;
                    messageboxerror.Visible = false;
                    messagebox.Visible = false;
                }
            }
            catch (Exception ex)
            {
                s3txtcontent.Text = s3txtheading.Text = s3txtlonk1.Text = "";
            }
        }
        protected void Slider1CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            int slider1 = Convert.ToInt32(Slider1CheckBox.Checked);
            SqlCommand cmd = new SqlCommand("Update TblSliderMaster Set Slider1Status="+slider1, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataBind1();
        }
        protected void Slider2CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            int slider2 = Convert.ToInt32(Slider2CheckBox.Checked);
            SqlCommand cmd = new SqlCommand("Update TblSliderMaster Set Slider2Status=" + slider2, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataBind1();
        }
        protected void Slider3CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            int slider3 = Convert.ToInt32(Slider3CheckBox.Checked);
            SqlCommand cmd = new SqlCommand("Update TblSliderMaster Set Slider3Status=" + slider3, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataBind1();
        }
    }
}