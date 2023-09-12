using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using B2cWebsiteAdmin.App_Code;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class AdminDashBoard : System.Web.UI.MasterPage
    {
        ClsServiceMaster clsService = new ClsServiceMaster();
        ClsProductMaster clsProduct = new ClsProductMaster();
        ClsWebsite clsWebsite = new ClsWebsite();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["mobileno"] == null)
            {
                Response.Redirect("../Default.aspx");
            }
            GetServicesList();
            GetProductList();
            GetData();

        }

        public void GetData()
        {
            try
            {


                DataTable dt = clsWebsite.GetWeb();
                if (dt.Rows.Count > 0)
                {
                    ImgDashboard.ImageUrl = dt.Rows[0]["ComapnyLogo"].ToString();
                    //lblowneername.Text = dt.Rows[0]["ownerName"].ToString();
                    //lblcompanyName.Text = dt.Rows[0]["ComapanyName"].ToString();
                    //lblcompanypan.Text = dt.Rows[0]["CompanyPan"].ToString();
                    //lblcompanyAdhar.Text = dt.Rows[0]["CompanyAdharNo"].ToString();
                    //lblemail.Text = dt.Rows[0]["ConatactEmail"].ToString();
                    //lblcontact.Text = dt.Rows[0]["ContactNo"].ToString();
                    //lbladress.Text = dt.Rows[0]["CompanyAddress"].ToString();
                    //lblapk.Text = dt.Rows[0]["ApkLink"].ToString();
                    //lblinstgram.Text = dt.Rows[0]["InstagramLink"].ToString();
                    //lblfacebook.Text = dt.Rows[0]["FacebookLink"].ToString();
                    //lbltwitte.Text = dt.Rows[0]["TwitterLink"].ToString();
                    //lbllinkdin.Text = dt.Rows[0]["LinkdinLink"].ToString();
                    //lblwhatsapp.Text = dt.Rows[0]["WhatsappLink"].ToString();
                    //lblloginlink.Text = dt.Rows[0]["DomainName"].ToString();
                    //lbldomainlink.Text = dt.Rows[0]["LoginLink"].ToString();
                    //lblsupportContact.Text = dt.Rows[0]["SupportContactNo"].ToString();
                    //lblsupportEmail.Text = dt.Rows[0]["SupportEmaild"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }
        protected void GetServicesList()
        {
            DataTable dt = clsService.GetServiceData();

            foreach (DataRow row in dt.Rows)
            {
                string serviceName = row["ServiceName"].ToString();
                string serviceId = row["Id"].ToString();

                HtmlGenericControl li = new HtmlGenericControl("li");
                HtmlAnchor a = new HtmlAnchor();
                //a.HRef = serviceId;
                a.InnerText = serviceName;

                li.Controls.Add(a);
                serviceList.Controls.Add(li);
                switch (serviceId)
                {
                    case "1":
                        a.HRef = "DMT.aspx";
                        break;

                    case "2":
                        a.HRef = "AEPS.aspx";
                        break;
                    case "3":
                        a.HRef = "PrepaidCard.aspx";
                        break;
                    case "4":
                        a.HRef = "Prepaid_Recharge.aspx";
                        break;
                    case "5":
                        a.HRef = "BBPS.aspx";
                        break;
                    case "6":
                        a.HRef = "Fast_Tag.aspx";
                        break;
                    case "7":
                        a.HRef = "Micro_ATM.aspx";
                        break;
                    case "8":
                        a.HRef = "Pancart_Center.aspx";
                        break;
                    case "9":
                        a.HRef = "Cash_Management_Service.aspx";
                        break;
                    case "10":
                        a.HRef = "Aadhar_Pay.aspx";
                        break;
                    case "11":
                        a.HRef = "Travel_Stay.aspx";
                        break;
                    case "12":
                        a.HRef = "Safe_Gold.aspx";
                        break;
                    case "13":
                        a.HRef = "Create_Card _LIC_Payment.aspx";
                        break;
                    default:
                        break;

                }
            }
        }
        protected void GetProductList()
        {
            DataTable dt = clsProduct.GetProductDataByStatus();

            foreach (DataRow row in dt.Rows)
            {
                string ProductName = row["ProductName"].ToString();
                string ProductId = row["Id"].ToString();

                HtmlGenericControl li = new HtmlGenericControl("li");
                HtmlAnchor a = new HtmlAnchor();
                //a.HRef = serviceId;
                a.InnerText = ProductName;

                li.Controls.Add(a);
                lblProduct.Controls.Add(li);
                switch (ProductId)
                {
                    case "1":
                        a.HRef = "Electronic.aspx";
                        break;

                    case "2":
                        a.HRef = "Faishon.aspx";
                        break;
                    case "3":
                        a.HRef = "";
                        break;
                    case "4":
                        a.HRef = "Books.aspx";
                        break;
                    case "5":
                        a.HRef = "Medicine.aspx";
                        break;
                    case "6":
                        a.HRef = "Grocery.aspx";
                        break;
                    default:
                        break;

                }
            }
        }
    }
}