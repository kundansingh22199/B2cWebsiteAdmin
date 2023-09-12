using B2cWebsiteAdmin.App_Code;
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
    public partial class Prepaid_Recharge : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();

        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsRecharge paidRecharge = new ClsRecharge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataPrecharge();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataPrecharge()
        {
            DataTable dt = paidRecharge.GetRechargeData();
            if (dt.Rows.Count > 0)
            {
                ViewState["image1"] = dt.Rows[0]["image1"].ToString();
                //ViewState["image2"] = dt.Rows[0]["image2"].ToString();
                ImageFirst.ImageUrl = dt.Rows[0]["image1"].ToString();
                //ImageSecond.ImageUrl = dt.Rows[0]["image2"].ToString();
                lblheading1.Text = dt.Rows[0]["heading1"].ToString();
                //lblheading2.Text = dt.Rows[0]["heading2"].ToString();
                lblcontents1.Text = dt.Rows[0]["content1"].ToString();
                lblcontents2.Text = dt.Rows[0]["content2"].ToString();
                lblcontents3.Text = dt.Rows[0]["content3"].ToString();
                //lblbuttonlink.Text = dt.Rows[0]["buttonLink"].ToString();
            }

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                int minsize = 10 * 1024; int maxsize = 2 * 1024 * 1024, count=0;
                bool status = true;
                //string filename1 = "", filename2 = "";
                string filename1 = "";
                //int fileSize1 = 0, fileSize2 = 0;
                int fileSize1 = 0;
                string heading1 = "", content1 = "", content2 = "", content3 = "" ;

                //******************************* Heading *************************************************************************

                if ((txtheading1.Text != null) && (txtheading1.Text != ""))
                {
                    heading1 = txtheading1.Text;
                }
                else
                {
                    heading1 = lblheading1.Text;
                }
                //if ((txtheading2.Text != null) && (txtheading2.Text != ""))
                //{
                //    heading2 = txtheading2.Text;
                //}
                //else
                //{
                //    heading2 = lblheading2.Text;
                //}
                //--------------------------------- Content -------------------------------------------------------------------------

                if ((txtcontent1.Text != null) && (txtcontent1.Text != ""))
                {
                    content1 = txtcontent1.Text;
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
                //if ((txtbuttonlink.Text != null) && (txtbuttonlink.Text != ""))
                //{
                //    buttonlink = txtbuttonlink.Text;
                //}
                //else
                //{
                //    buttonlink = lblbuttonlink.Text;
                //}
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
                //if (image2.HasFile)
                //{
                //    fileSize2 = image2.PostedFile.ContentLength;
                //    if (fileSize2 > minsize & fileSize2 < maxsize)
                //    {
                //        filename2 = Path.GetFileName(image2.PostedFile.FileName);
                //        image2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                //        filename2 = "~/AdminModule/Images/" + filename2;
                //        status = ClsAllMethodPersonal.checkexetion(image2);
                //    }
                //    else
                //    {
                //      count++;
                //    }
                //}
                //else
                //{
                //    filename2 = ViewState["image2"].ToString();

                //}

                if (status == true && count==0)
                {
                    //int result = paidRecharge.DataInsertSafeGold(filename1, filename2, heading1, heading2, content1, buttonlink, "");
                    int result = paidRecharge.DataInsertRecharge(filename1, heading1, content1, content2, content3, "");
                    if (result > 0)
                    {
                        //lblmessage.Text = "Update Success";
                        //lblmessage.ForeColor = Color.Green;
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        ImageSizeAlert.Visible = false;
                        GetDataPrecharge();
                        //txtheading1.Text = txtheading2.Text = txtbuttonlink.Text = txtcontent.Text = txtheading2.Text = txtheading1.Text = "";
                        txtheading1.Text = txtcontent1.Text = txtcontent2.Text = txtcontent3.Text = "";
                    }
                    else
                    {

                        //lblmessage.Text = "Update Not Success";
                        //lblmessage.ForeColor = Color.Red;
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        //txtheading1.Text = txtheading2.Text = txtbuttonlink.Text = txtcontent.Text = txtheading2.Text = txtheading1.Text = "";
                        txtheading1.Text = txtcontent1.Text = txtcontent2.Text = txtcontent3.Text = "";
                    }
                }
                else
                {
                    messagebox.Visible = false;
                    messageboxerror.Visible = false;
                    ImageSizeAlert.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}