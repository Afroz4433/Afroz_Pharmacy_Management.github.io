using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Pharmacy_Management_AF
{
    public partial class Place_Order : System.Web.UI.Page
    {
        // create connection using SqlConnection class
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bidarConnectionString"].ToString());

        // Get Display Medicine data in Gredview1
        void GetData()
        {
            // Pass qquery to database using DataAdpater 
            string q = "pro_Get_Medicine";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Medicine_M");
            // Give Connection between Datasource and GridView
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {  GetData(); }
        }


        //  Select multiple Checkboxs 
        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox selectall = (CheckBox)sender;
            GridViewRow row = (GridViewRow)selectall.NamingContainer;
        }

        // Select checkboxs single using Foreach 
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            // Find Controls to the checkboxs
            CheckBox selectone = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox1");
            foreach(GridViewRow row in GridView1.Rows)
            {
                CheckBox select = (CheckBox)row.FindControl("CheckBox2");
                if (selectone.Checked == true)
                {
                    select.Checked = true;
                }
                else
                {
                    select.Checked = false;
                }
            }
        }

        // Place order button display in label
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label7.Text = "Order Placed Successfully";
        }
    }
}