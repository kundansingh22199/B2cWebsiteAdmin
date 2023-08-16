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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["mobileno"] == null)
            {
                Response.Redirect("../Default.aspx");
            }
                CheckServiceAvility();
            GetServicesList();
            GetProductList();


        }
        public void CheckServiceAvility()
        {
            DataTable dt = clsService.GetServiceData();
            if (dt.Rows.Count > 0)
            {
                for(int i = 0; i < dt.Rows.Count; i++)
                {
                    int serviceid = Convert.ToInt32(dt.Rows[i]["Id"]);
                    //if (serviceid == 1)
                    //{
                    //    lblDmt.Visible = true;
                    //}
                    //if (serviceid == 2)
                    //{
                    //    lblAeps.Visible = true;
                    //}
                    //if (serviceid == 3)
                    //{
                    //    lblPrepaidCard.Visible = true;
                    //}
                    //if (serviceid == 4)
                    //{
                    //    lblRecharge.Visible = true;
                    //}
                    //if (serviceid == 5)
                    //{
                    //    lblBbps.Visible = true;
                    //}
                    //if (serviceid == 6)
                    //{
                    //    lblFasTag.Visible = true;
                    //}
                    //if (serviceid == 7)
                    //{
                    //    lblMicroAtm.Visible = true;
                    //}
                    //if (serviceid == 8)
                    //{
                    //    lblPanCard.Visible = true;
                    //}
                    //if (serviceid == 9)
                    //{
                    //    lblCash.Visible = true;
                    //}
                    //if (serviceid == 10)
                    //{
                    //    lblAddhar.Visible = true;
                    //}
                    //if (serviceid == 11)
                    //{
                    //    lblTravle.Visible = true;
                    //}
                    //if (serviceid == 12)
                    //{
                    //    lblSafeGold.Visible = true;
                    //}
                    //if (serviceid == 13)
                    //{
                    //    lblCreditCard.Visible = true;
                    //}
                    //else
                    //{
                    //    //lblDmt.Visible = false;
                    //    //lblAeps.Visible = false;
                    //    //lblPrepaidCard.Visible = false;
                    //    //lblRecharge.Visible = false;
                    //    //lblBbps.Visible = false;
                    //    //lblFasTag.Visible = false;
                    //    //lblMicroAtm.Visible = false;
                    //    //lblPanCard.Visible = false;
                    //    //lblCash.Visible = false;
                    //    //lblAddhar.Visible = false;
                    //    //lblTravle.Visible = false;
                    //    //lblSafeGold.Visible = false;
                    //    //lblCreditCard.Visible = false;
                    //}
                }
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
                        a.HRef = "";
                        break;

                    case "2":
                        a.HRef = "";
                        break;
                    case "3":
                        a.HRef = "";
                        break;
                    case "4":
                        a.HRef = "";
                        break;
                    case "5":
                        a.HRef = "";
                        break;
                    case "6":
                        a.HRef = "";
                        break;
                    default:
                        break;

                }
            }
        }
    }
}