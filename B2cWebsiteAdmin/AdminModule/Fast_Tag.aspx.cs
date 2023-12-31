﻿using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Fast_Tag : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();

        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsFastTag ClsFastTag = new ClsFastTag();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataFastT();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataFastT()
        {
            DataTable dt = ClsFastTag.GetDataFastTag();
            if (dt.Rows.Count > 0)
            {
                ViewState["image1"] = dt.Rows[0]["image1"].ToString();
                ViewState["image2"] = dt.Rows[0]["image2"].ToString();
                ViewState["image3"] = dt.Rows[0]["image3"].ToString();
                ImageFirst.ImageUrl = dt.Rows[0]["image1"].ToString();
                ImageSecond.ImageUrl = dt.Rows[0]["image2"].ToString();
                ImageThird.ImageUrl = dt.Rows[0]["image3"].ToString();
                lblheading1.Text = dt.Rows[0]["heading1"].ToString();
                lblheading2.Text = dt.Rows[0]["heading2"].ToString();
                lblheading3.Text = dt.Rows[0]["heading3"].ToString();
                lblcontents1.Text = dt.Rows[0]["content1"].ToString();
                lblcontents2.Text = dt.Rows[0]["content2"].ToString();
                lblcontents3.Text = dt.Rows[0]["content3"].ToString();
                lblbuttonlink.Text = dt.Rows[0]["buttonLink"].ToString();
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                int minsize = 10 * 1024; int maxsize = 2 * 1024 * 1024, count=0;
                bool status = true;
                string filename1 = "", filename2 = "", filename3 = "";
                int fileSize3 = 0, fileSize1 = 0, fileSize2 = 0;
                string heading1 = "", heading2 = "", heading3 = "", content1 = "", content2 = "", content3 = "", buttonlink = "";

                //******************************* Heading *************************************************************************

                if ((txtheading1.Text != null) && (txtheading1.Text != ""))
                {
                    heading1 = txtheading1.Text;
                }
                else
                {
                    heading1 = lblheading1.Text;
                }
                if ((txtheading2.Text != null) && (txtheading2.Text != ""))
                {
                    heading2 = txtheading2.Text;
                }
                else
                {
                    heading2 = lblheading2.Text;
                }
                if ((txtheading3.Text != null) && (txtheading3.Text != ""))
                {
                    heading3 = txtheading3.Text;
                }
                else
                {
                    heading3 = lblheading3.Text;
                }

                //--------------------------------- Content -------------------------------------------------------------------------

                if ((txtContent1.Text != null) && (txtContent1.Text != ""))
                {
                    content1 = txtContent1.Text;
                }
                else
                {
                    content1 = lblcontents1.Text;
                }
                if ((txtcontent2.Text != null) && (txtcontent2.Text != ""))
                {
                    content2 = txtcontent2.Text;
                }
                else
                {
                    content2 = lblcontents2.Text;
                }
                if ((txtcontent3.Text != null) && (txtcontent3.Text != ""))
                {
                    content3 = txtcontent3.Text;
                }
                else
                {
                    content3 = lblcontents3.Text;
                }

             


                // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ button Link ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                if ((txtbuttonLink.Text != null) && (txtbuttonLink.Text != ""))
                {
                    buttonlink = txtbuttonLink.Text;
                }
                else
                {
                    buttonlink = lblbuttonlink.Text;
                }
                // ________________________________________________ Images ___________________________________________________
                if (image1.HasFile)
                {
                    fileSize1 = image1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename1 = Path.GetFileName(image1.PostedFile.FileName);
                        image1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename1));
                        filename1 = "~/AdminModule/Images/" + filename1;
                        status = ClsAllMethodPersonal.checkexetion(image1);
                    }
                    else
                    {
                        count++;
                    }
                }
                else
                {
                    filename1 = ViewState["image1"].ToString();
                }
                if (image2.HasFile)
                {
                    fileSize2 = image2.PostedFile.ContentLength;
                    if (fileSize2 > minsize & fileSize2 < maxsize)
                    {
                        filename2 = Path.GetFileName(image2.PostedFile.FileName);
                        image2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                        filename2 = "~/AdminModule/Images/" + filename2;
                        status = ClsAllMethodPersonal.checkexetion(image2);
                    }
                    else
                    {
                        count++;
                    }
                }
                else
                {
                    filename2 = ViewState["image2"].ToString();

                }
                if (image3.HasFile)
                {

                    fileSize3 = image3.PostedFile.ContentLength;
                    if (fileSize3 > minsize & fileSize3 < maxsize)
                    {
                        filename3 = Path.GetFileName(image3.PostedFile.FileName);
                        image3.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename3));
                        filename3 = "~/AdminModule/Images/" + filename3;
                        status = ClsAllMethodPersonal.checkexetion(image3);
                    }
                    else
                    {
                        count++;
                    }
                }
                else
                {
                    filename3 = ViewState["image3"].ToString();

                }
                if (status == true && count==0)
                {
                    int result = ClsFastTag.DataInsertFastTag(filename1, filename2, filename3, heading1, heading2, heading3, content1, content2, content3, buttonlink, "");
                    if (result > 0)
                    {
                        GetDataFastT();
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        ImageSizeAlert.Visible = false;
                        //Response.Write("<script>alert('Data has been successfully updated');</script>");
                        txtheading1.Text = txtheading2.Text = txtheading3.Text = txtbuttonLink.Text = txtcontent3.Text = txtcontent2.Text = txtContent1.Text = "";
                    }
                    else
                    {
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        ImageSizeAlert.Visible = false;
                        //Response.Write("<script>alert('error something wrong ');</script>");
                        txtheading1.Text = txtheading2.Text = txtheading3.Text = txtbuttonLink.Text = txtcontent3.Text = txtcontent2.Text = txtContent1.Text = "";

                    }
                }
                else
                {
                    ImageSizeAlert.Visible = true;
                    messagebox.Visible = false;
                    messageboxerror.Visible = false;
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}