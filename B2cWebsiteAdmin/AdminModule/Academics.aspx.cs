﻿using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Academics : System.Web.UI.Page
    {
        ClsHomeSection3 clsHomeSection3 = new ClsHomeSection3();
        ClsAllMethodPersonal clsAllMethodPersonal = new ClsAllMethodPersonal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataHomeSection3();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataHomeSection3()
        {
            try
            {
                DataTable dt = clsHomeSection3.GetHomeSection3();
                if (dt != null && dt.Rows.Count > 0)
                {
                    ViewState["Div1image"] = dt.Rows[0]["Div1image"].ToString();
                    ViewState["Div2image"] = dt.Rows[0]["Div2image"].ToString();
                    ViewState["Div3image"] = dt.Rows[0]["Div3image"].ToString();
                    ViewState["Div4image"] = dt.Rows[0]["Div4image"].ToString();
                    ViewState["Div5image"] = dt.Rows[0]["Div5image"].ToString();
                    ViewState["Div6image"] = dt.Rows[0]["Div6image"].ToString();
                    div1image.ImageUrl = dt.Rows[0]["Div1image"].ToString();
                    div2image.ImageUrl = dt.Rows[0]["Div2image"].ToString();
                    div3image.ImageUrl = dt.Rows[0]["Div3image"].ToString();
                    div4image.ImageUrl = dt.Rows[0]["Div4image"].ToString();
                    div5image.ImageUrl = dt.Rows[0]["Div5image"].ToString();
                    div6image.ImageUrl = dt.Rows[0]["Div6image"].ToString();
                    lblheading.Text = dt.Rows[0]["Section3Heading"].ToString();
                    lblcontent.Text = dt.Rows[0]["Section3content"].ToString();
                    lblDivFiHeading.Text = dt.Rows[0]["Div1Heading"].ToString();
                    lblDivFicontent.Text = dt.Rows[0]["Div1content"].ToString();
                    lblDivSeHeading.Text = dt.Rows[0]["Div2heading"].ToString();
                    lblDivSecontent.Text = dt.Rows[0]["Div2content"].ToString();
                    lblDivThHeading.Text = dt.Rows[0]["Div3heading"].ToString();
                    lblDivThcontent.Text = dt.Rows[0]["Div3content"].ToString();
                    lblDivFoHeading.Text = dt.Rows[0]["Div4heading"].ToString();
                    lblDivFocontent.Text = dt.Rows[0]["Div4content"].ToString();

                    lblDivFifHeading.Text = dt.Rows[0]["Div5heading"].ToString();
                    lblDivFifcontent.Text = dt.Rows[0]["Div5content"].ToString();
                    lblDivSiHeading.Text = dt.Rows[0]["Div6heading"].ToString();
                    lblDivSicontent.Text = dt.Rows[0]["Div6content"].ToString();
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
                int minsize = 10* 1024; int maxsize = 2 * 1024 * 1024, count=0;
                bool status = true;
                string filename1 = "", filename2 = "", filename3 = "", filename4 = "", filename5 = "", filename6 = "";
                int fileSize1 = 0, fileSize2 = 0, fileSize3 = 0, fileSize4=0, fileSize5 = 0, fileSize6 = 0;
                string heading1 = "", Div1heading2 = "", content1 = "", Div2heading2 = "", Div3heading2 = "" , Div4heading2= "", Div5heading2 = "", Div6heading2 = "", Div1content="", Div2content = "", Div3content = "", Div4content = "", Div5content = "", Div6content = "";
                if (FileUpload1.HasFile)
                {
                    fileSize1 = FileUpload1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename1));
                        filename1 = "~/AdminModule/Images/" + filename1;
                        status = clsAllMethodPersonal.checkexetion(FileUpload1);
                    }
                    else
                    {
                        count++;
                        filename1 = ViewState["Div1image"].ToString();
                    }
                }
                else
                {
                    filename1 = ViewState["Div1image"].ToString();
                }
                if (FileUpload2.HasFile)
                {
                    fileSize2 = FileUpload2.PostedFile.ContentLength;
                    if (fileSize2 > minsize & fileSize2 < maxsize)
                    {
                        filename2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                        filename2 = "~/AdminModule/Images/" + filename2;
                        status = clsAllMethodPersonal.checkexetion(FileUpload2);
                    }
                    else
                    {
                        count++;
                        filename2 = ViewState["Div2image"].ToString();
                    }
                }
                else
                {
                    filename2 = ViewState["Div2image"].ToString();
                }
                if (FileUpload3.HasFile)
                {
                    fileSize3 = FileUpload3.PostedFile.ContentLength;
                    if (fileSize3 > minsize & fileSize3 < maxsize)
                    {
                        filename3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
                        FileUpload3.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename3));
                        filename3 = "~/AdminModule/Images/" + filename3;
                        status = clsAllMethodPersonal.checkexetion(FileUpload3);
                    }
                    else
                    {
                        count++;
                        filename3 = ViewState["Div3image"].ToString();
                    }
                }
                else
                {
                    filename3 = ViewState["Div3image"].ToString();
                }
                if (FileUpload4.HasFile)
                {
                    fileSize4 = FileUpload3.PostedFile.ContentLength;
                    if (fileSize4 > minsize & fileSize4 < maxsize)
                    {
                        filename4 = Path.GetFileName(FileUpload4.PostedFile.FileName);
                        FileUpload4.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename4));
                        filename4= "~/AdminModule/Images/" + filename4;
                        status = clsAllMethodPersonal.checkexetion(FileUpload4);
                    }
                    else
                    {
                        count++;
                        filename4 = ViewState["Div4image"].ToString();
                    }
                }
                else
                {
                    filename4 = ViewState["Div4image"].ToString();
                }


                if (FileUpload5.HasFile)
                {
                    fileSize5 = FileUpload5.PostedFile.ContentLength;
                    if (fileSize5 > minsize & fileSize5 < maxsize)
                    {
                        filename5 = Path.GetFileName(FileUpload5.PostedFile.FileName);
                        FileUpload5.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename5));
                        filename5 = "~/AdminModule/Images/" + filename5;
                        status = clsAllMethodPersonal.checkexetion(FileUpload5);
                    }
                    else
                    {
                        count++;
                        filename5 = ViewState["Div5image"].ToString();
                    }
                }
                else
                {
                    filename5 = ViewState["Div5image"].ToString();
                }


                if (FileUpload6.HasFile)
                {
                    fileSize6 = FileUpload6.PostedFile.ContentLength;
                    if (fileSize6 > minsize & fileSize6 < maxsize)
                    {
                        filename6 = Path.GetFileName(FileUpload6.PostedFile.FileName);
                        FileUpload6.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename6));
                        filename6 = "~/AdminModule/Images/" + filename6;
                        status = clsAllMethodPersonal.checkexetion(FileUpload6);
                    }
                    else
                    {
                        count++;
                        filename6 = ViewState["Div6image"].ToString();
                    }
                }
                else
                {
                    filename6 = ViewState["Div6image"].ToString();
                }
                if ((txtheading.Text !=null) && (txtheading.Text !=""))
                {
                    heading1 = txtheading.Text;
                }
                else
                {
                    heading1 = lblheading.Text;
                }
                if ((txtcontent.Text != null) && (txtcontent.Text != ""))
                {
                    content1 = txtcontent.Text;
                }
                else
                {
                    content1 = lblcontent.Text;
                }
                if ((txtfirstcontent.Text !=null) && (txtfirstcontent.Text != ""))
                {
                    Div1content = txtfirstcontent.Text;
                }
                else
                {
                    Div1content = lblcontent.Text;
                }
                if ((txtsecontContent.Text !=null) && (txtsecontContent.Text != ""))
                {
                    Div2content = txtsecontContent.Text;
                }
                else
                {
                    Div2content = lblcontent.Text;
                }
                if ((txtthirdcontent.Text != null) && (txtthirdcontent.Text != ""))
                {
                    Div3content = txtthirdcontent.Text;
                }
                else
                {
                    Div3content = lblcontent.Text;
                }
                if ((txtfouthcontent.Text != null) && (txtfouthcontent.Text != ""))
                {
                    Div4content = txtfouthcontent.Text;
                }
                else
                {
                    Div4content = lblcontent.Text;
                }

                if ((txtfifthcontent.Text != null) && (txtfifthcontent.Text != ""))
                {
                    Div5content = txtfifthcontent.Text;
                }
                else
                {
                    Div5content = lblcontent.Text;
                }

                if ((txtsixthcontent.Text != null) && (txtsixthcontent.Text != ""))
                {
                    Div6content = txtsixthcontent.Text;
                }
                else
                {
                    Div6content = lblcontent.Text;
                }
                if ((txtfirstheading.Text !=null) && (txtfirstheading.Text != ""))
                {
                    Div1heading2 = txtfirstheading.Text;
                }
                else
                {
                    Div1heading2 = lblDivFiHeading.Text;
                }
                if ((txtSecondHeading.Text != null) && (txtSecondHeading.Text != ""))
                {
                    Div2heading2 = txtSecondHeading.Text;
                }
                else
                {
                    Div2heading2 = lblDivSeHeading.Text;
                }
                if ((txtthirdheading.Text != null) && (txtthirdheading.Text !=""))
                {
                    Div3heading2 = txtthirdheading.Text;
                }
                else
                {
                    Div3heading2 = lblDivThHeading.Text;
                }
                if ((txtfourthheading.Text != null) && (txtfourthheading.Text != ""))
                {
                    Div4heading2 = txtfourthheading.Text;
                }
                else
                {
                    Div4heading2 = lblDivFoHeading.Text;
                }


                if ((txtfifthheading.Text != null) && (txtfifthheading.Text != ""))
                {
                    Div5heading2 = txtfifthheading.Text;
                }
                else
                {
                    Div5heading2 = lblDivFiHeading.Text;
                }
                if ((txtsixthheading.Text != null) && (txtsixthheading.Text != ""))
                {
                    Div6heading2 = txtsixthheading.Text;
                }
                else
                {
                    Div6heading2 = lblDivSiHeading.Text;
                }
                if (status == true && count==0)
                {
                    //int result = clsHomeSection3.HomeSection3Insert(filename1,filename2,filename3,filename4,heading1,content1,Div1heading2,Div2heading2,Div3heading2,Div4heading2,Div1content,Div2content,Div3content,Div4content,userid,userid);
                    int result = clsHomeSection3.HomeSection3Insert(filename1, filename2, filename3, filename4, filename5, filename6, heading1, content1, Div1heading2, Div2heading2, Div3heading2, Div4heading2, Div5heading2, Div6heading2, Div1content, Div2content, Div3content, Div4content, Div5content, Div6content, userid, userid);
                    if (result == 1)
                    {
                        GetDataHomeSection3();
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        ImageSizeAlert.Visible = false;
                        //Response.Write("<script>alert('Data has been successfully updated');</script>");
                        txtheading.Text = txtcontent.Text =txtfirstcontent.Text=txtfirstheading.Text=txtsecontContent.Text=txtSecondHeading.Text="";
                        txtthirdcontent.Text = txtthirdheading.Text = txtfourthheading.Text = txtfouthcontent.Text = txtfifthheading.Text = txtfifthcontent.Text = txtsixthheading.Text = txtsixthcontent.Text = "";

                    }
                    else
                    {
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        ImageSizeAlert.Visible = false;
                        //Response.Write("<script>alert('error something wrong ');</script>");
                        txtheading.Text = txtcontent.Text = txtfirstcontent.Text = txtfirstheading.Text = txtsecontContent.Text = txtSecondHeading.Text = "";
                        txtthirdcontent.Text = txtthirdheading.Text = txtfourthheading.Text = txtfouthcontent.Text = txtfifthheading.Text = txtfifthcontent.Text = txtsixthheading.Text = txtsixthcontent.Text = "";
                    }
                }
                else
                {
                    messagebox.Visible = false;
                    messageboxerror.Visible = false;
                    ImageSizeAlert.Visible = true;
                    txtheading.Text = txtcontent.Text = txtfirstcontent.Text = txtfirstheading.Text = txtsecontContent.Text = txtSecondHeading.Text = "";
                    txtthirdcontent.Text = txtthirdheading.Text = txtfourthheading.Text = txtfouthcontent.Text = txtfifthheading.Text = txtfifthcontent.Text = txtsixthheading.Text = txtsixthcontent.Text = "";
                }


            }
            catch (Exception ex)
            {
            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            txtheading.Text = txtcontent.Text = txtfirstcontent.Text = txtfirstheading.Text = txtsecontContent.Text = txtSecondHeading.Text = "";
            txtthirdcontent.Text = txtthirdheading.Text = txtfourthheading.Text = txtfouthcontent.Text = txtfifthheading.Text = txtfifthcontent.Text = txtsixthheading.Text = txtsixthcontent.Text = "";
        }
    }
}