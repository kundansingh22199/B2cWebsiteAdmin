using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Policy_Priva : System.Web.UI.Page
    {
        ClsPrivacyPolicy clsPrivacy = new ClsPrivacyPolicy();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataPrivacyPolicy();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }

        }
        public void GetDataPrivacyPolicy()
        {
            try
            {
                DataTable dt = clsPrivacy.GetPrivacyPolicy();
                if (dt != null && dt.Rows.Count > 0)
                {

                    lisection1heading.InnerText = dt.Rows[0]["Section1Heading"].ToString();
                    lisection1para.InnerText = dt.Rows[0]["Section1para"].ToString();
                    lisection2heading.InnerText = dt.Rows[0]["Section2heading"].ToString();
                    lisection2para1.InnerText = dt.Rows[0]["Section2para1"].ToString();
                    lisection2para2.InnerText = dt.Rows[0]["Section2para2"].ToString();
                    lisection2para3.InnerText = dt.Rows[0]["Section2para3"].ToString();
                    lisection2para4.InnerText = dt.Rows[0]["Section2para4"].ToString();
                    lisection2para5.InnerText = dt.Rows[0]["Section2para5"].ToString();
                    lisection2para6.InnerText = dt.Rows[0]["Section2para6"].ToString();
                    lisection2para7.InnerText = dt.Rows[0]["Section2para7"].ToString();
                    lisection2para8.InnerText = dt.Rows[0]["Section2para8"].ToString();
                    lisection3heading.InnerText = dt.Rows[0]["Section3heading"].ToString();
                    lisection3para.InnerText = dt.Rows[0]["Section3para"].ToString();
                    lisection4heading.InnerText = dt.Rows[0]["Section4heading"].ToString();
                    lisection4para.InnerText = dt.Rows[0]["Section4para"].ToString();
                    lisection5heading.InnerText = dt.Rows[0]["Section5heading"].ToString();
                    lisection5para.InnerText = dt.Rows[0]["Section5para"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {
                string Section1Heading = "", Section1para = "", Section2heading = "", Section2para1 = "", Section2para2 = "", Section2para3 = "", Section2para4 = "", Section2para5 = "", Section2para6 = "", Section2para7 = "", Section2para8 = "", Section3heading = "", Section3para = "", Section4heading = "", Section4para = "", Section5heading = "", Section5para = "";
                if (txtsection1heading.Text != null && txtsection1heading.Text != "")
                {
                    Section1Heading = txtsection1heading.Text;
                }
                else
                {
                    Section1Heading = lisection1heading.InnerText;
                }
                if (txtsection1para.Text != null && txtsection1para.Text != "")
                {
                    Section1para = txtsection1para.Text;
                }
                else
                {
                    Section1para = lisection1para.InnerText;
                }
                if (txtsection2heading.Text != null && txtsection2heading.Text != "")
                {
                    Section2heading = txtsection2heading.Text;
                }
                else
                {
                    Section2heading = lisection2heading.InnerText;
                }
                if (txtsection2para1.Text != null && txtsection2para1.Text != "")
                {
                    Section2para1 = txtsection2para1.Text;
                }
                else
                {
                    Section2para1 = lisection2para1.InnerText;
                }
                if (txtsection2para2 != null && txtsection2para2.Text != "")
                {
                    Section2para2 = txtsection2para1.Text;
                }
                else
                {
                    Section2para2 = lisection2para2.InnerText;
                }
                if (txtsection2para3.Text != null && txtsection2para3.Text != "")
                {
                    Section2para3 = txtsection2para3.Text;
                }
                else
                {
                    Section2para3 = lisection2para3.InnerText;
                }
                if (txtsection2para4.Text != null && txtsection2para4.Text != "")
                {
                    Section2para4 = txtsection2para4.Text;
                }
                else
                {
                    Section2para4 = lisection2para4.InnerText;
                }
                if (txtsection2para5.Text != null && txtsection2para5.Text != "")
                {
                    Section2para5 = txtsection2para5.Text;
                }
                else
                {
                    Section2para5 = lisection2para5.InnerText;
                }
                if (txtsection2para6.Text != null && txtsection2para6.Text != "")
                {
                    Section2para6 = txtsection2para6.Text;
                }
                else
                {
                    Section2para6 = lisection2para6.InnerText;
                }
                if (txtsection2para7.Text != null && txtsection2para7.Text != "")
                {
                    Section2para7 = txtsection2para7.Text;
                }
                else
                {
                    Section2para7 = lisection2para7.InnerText;
                }
                if (txtsection2para8.Text != null && txtsection2para8.Text != "")
                {
                    Section2para8 = txtsection2para8.Text;
                }
                else
                {
                    Section2para8 = lisection2para8.InnerText;
                }
                if (txtsection3heading.Text != null && txtsection3heading.Text != "")
                {
                    Section3heading = txtsection3heading.Text;
                }
                else
                {
                    Section3heading = lisection3heading.InnerText;
                }
                if (txtsection3para.Text != null && txtsection3para.Text != "")
                {
                    Section3para = txtsection3para.Text;
                }
                else
                {
                    Section3para = lisection3para.InnerText;
                }
                if (txtsection4heading.Text != null && txtsection4heading.Text != "")
                {
                    Section4heading = txtsection4heading.Text;
                }
                else
                {
                    Section4heading = lisection4heading.InnerText;
                }
                if (txtsection4para.Text != null && txtsection4para.Text != "")
                {
                    Section4para = txtsection4para.Text;
                }
                else
                {
                    Section4para = lisection4para.InnerText;
                }
                if (txtsection5heading.Text != null && txtsection5heading.Text != "")
                {
                    Section5heading = txtsection5heading.Text;
                }
                else
                {
                    Section5heading = lisection5heading.InnerText;
                }
                if (txtsection5para.Text != null && txtsection5para.Text != "")
                {
                    Section5para = txtsection5para.Text;
                }
                else
                {

                    Section5para = lisection5para.InnerText;
                }
                string userid = Session["userid"].ToString();
                int result = clsPrivacy.PrivacyPolicysection(Section1Heading, Section1para, Section2heading, Section2para1, Section2para2, Section2para3, Section2para4, Section2para5, Section2para6, Section2para7, Section2para8, Section3heading, Section3para, Section4heading, Section4para, Section5heading, Section5para, userid, userid);
                if (result > 0)
                {
                    txtsection1heading.Text = txtsection1para.Text = txtsection2heading.Text = txtsection2para1.Text = txtsection2para1.Text = txtsection2para3.Text = txtsection2para4.Text = "";
                    txtsection2para5.Text = txtsection2para6.Text = txtsection2para7.Text = txtsection2para8.Text = txtsection3heading.Text = txtsection3para.Text = txtsection4heading.Text = txtsection4para.Text = txtsection5heading.Text = txtsection5para.Text = "";
                    GetDataPrivacyPolicy();
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
                    // Response.Write("<script>alert('Data has been successfully updated');</script>");
                }
                else
                {
                    txtsection1heading.Text = txtsection1para.Text = txtsection2heading.Text = txtsection2para1.Text = txtsection2para1.Text = txtsection2para3.Text = txtsection2para4.Text = "";
                    txtsection2para5.Text = txtsection2para6.Text = txtsection2para7.Text = txtsection2para8.Text = txtsection3heading.Text = txtsection3para.Text = txtsection4heading.Text = txtsection4para.Text = txtsection5heading.Text = txtsection5para.Text = "";

                    GetDataPrivacyPolicy();
                    messagebox.Visible = false;
                    messageboxerror.Visible = true;

                    // Response.Write("<script>alert('error something wrong ');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            txtsection1heading.Text = txtsection1para.Text = txtsection2heading.Text = txtsection2para1.Text = txtsection2para1.Text = txtsection2para3.Text = txtsection2para4.Text = "";
            txtsection2para5.Text = txtsection2para6.Text = txtsection2para7.Text = txtsection2para8.Text = txtsection3heading.Text = txtsection3para.Text = txtsection4heading.Text = txtsection4para.Text = txtsection5heading.Text = txtsection5para.Text = "";

        }
    }
}
