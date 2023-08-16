using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2cWebsiteAdmin.App_Code;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class ProductControl : System.Web.UI.Page
    {
        ClsProductMaster clsProduct = new ClsProductMaster();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Productdetails();
            }
        }

        public void Productdetails()
        {

            DataTable dt = clsProduct.GetProductData();

            if (dt != null && dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }
       
           

        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string userid = Session["userid"].ToString();
            Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("lblID");
            int id = Convert.ToInt32(lbl.Text);
            clsProduct.DeleteProduct(id, userid);
            GridView1.EditIndex = -1;
            Productdetails();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Productdetails();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string userid = Session["userid"].ToString();
            Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("lblID");
            TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtProduct");
            int id = Convert.ToInt32(lbl.Text);
            string ProductName = txtname.Text;
            clsProduct.ProductNameUpdate(id, ProductName, userid);
            GridView1.EditIndex = -1;
            Productdetails();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Productdetails();
        }

        protected void check_status_CheckedChanged(object sender, EventArgs e)
        {
            string userid = Session["userid"].ToString();
            CheckBox checkbox = sender as CheckBox;
            GridViewRow gdrow = checkbox.NamingContainer as GridViewRow;
            int id = Convert.ToInt32(((Label)gdrow.FindControl("lblID")).Text);
            if (checkbox.Checked)
            {
                int st = 1;
                int result = clsProduct.ActivateDeactivateProduct(id, st, userid);
                if (result > 0)
                {
                    Response.Write("<script>alert(Service Activated)</script>");
                }
                gdrow.BackColor = Color.Pink;
                //gdrow.RowIndex[] = Color.LightPink;

            }
            else
            {
                int st = 0;
                int result = clsProduct.ActivateDeactivateProduct(id, st, userid);
                if (result > 0)
                {
                    Response.Write("<script>alert(Service DeActivated)</script>");
                }
                gdrow.BackColor = Color.Wheat;
                //GridView1.Rows[i].BackColor = Color.Wheat;
            }
        }

      

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            int status = 0;
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblstatus = (Label)e.Row.FindControl("lblStatus");
                status = Convert.ToInt32(lblstatus.Text);
                if (status == 0)

                {
                    CheckBox check = (CheckBox)e.Row.FindControl("check_status");
                    check.Checked = false;

                }
                else
                {
                    CheckBox check = (CheckBox)e.Row.FindControl("check_status");
                    check.Checked = true;
                }

            }

        }
    }
}