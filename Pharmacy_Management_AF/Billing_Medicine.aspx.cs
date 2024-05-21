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
    public partial class Billing_Medicine : System.Web.UI.Page
    {
        // Onetime Create connection using SqlConnection class then no need to create for other buttons 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bidarConnectionString"].ToString());

        // Get Display all Medicine details in GridView
        void GetData()
        {
            // passing query to database using SqlDataAdapter
            string q = "Select * from Medicine_Bill";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            // Create dataset
            DataSet ds = new DataSet();
            sda.Fill(ds, "Medicine_Bill");
            // Give connection between Gridview and Datasource
            GridView2.DataSource = ds;
            // Bind Data from gridview
            GridView2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {  GetData();   }
        }

        // here you can get displayed the gridview data when click to button1
        protected void Button1_Click(object sender, EventArgs e)
        {    GridView1.Visible = true;     }

        // select option from GridView1 using RowCommand 
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // it will collect the data from the Gridview and Place in the TExtBoxes
            if (e.CommandName == "Select")
            {
                //identifing the button index number
                int index = Convert.ToInt32(e.CommandArgument);
                // identify the row index number
                GridViewRow row = GridView1.Rows[index];
                // give name to your controls
                Label l1 = (Label)row.FindControl("Label2");
                Label l2 = (Label)row.FindControl("Label3");
                Label l3 = (Label)row.FindControl("Label5");       
                // collect data and display in texboxes
                TextBox2.Text = l1.Text;
                TextBox3.Text = l2.Text;
                TextBox5.Text = l3.Text;
            }  
        }
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {}

        // Adding Medicine to gridView using button2
        int total = 0;
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Open connection
            con.Open();
            // Passing query using SqlCommand Class
            string q = "pro_Add_Medicine_Bill";
            SqlCommand cmd = new SqlCommand(q, con);
            //Infor that we are using Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox2.Text);
            cmd.Parameters.AddWithValue("@b", TextBox3.Text);
            cmd.Parameters.AddWithValue("@c", TextBox4.Text);
            cmd.Parameters.AddWithValue("@d", TextBox5.Text);
            // Execute query using Method
            cmd.ExecuteNonQuery();
            //Close connection
            con.Close();
            GetData();          
        }

        //  Get sum of all values from Gridview2 in footer
        int sum = 0;
        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // read value from GridView 
                Label gt = (Label)e.Row.FindControl("label9");
                sum = sum + int.Parse(gt.Text);
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                // place value in GridView
                Label gt = (Label)e.Row.FindControl("Label7");
                gt.Text = sum.ToString();
            }
        }
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {}

        protected void Button3_Click(object sender, EventArgs e)
        {
            // GET CLEAR ALL CONTROLS AFTER ACTION
            TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }

        // Delete recored from Gridview2 
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                // Identify Button Index Number
                int index = Convert.ToInt32(e.CommandArgument);
                // Identify Row Inder Number
                GridViewRow row = GridView2.Rows[index];
                // Give Name to your Controls
                Label l1 = (Label)row.FindControl("Label1");
                // Open Connection
                con.Open();
                // Pass query using SqlCommand Class
                string q = "pro_Delete_Medicine_Bill";
                SqlCommand cmd = new SqlCommand(q, con);
                // inform that we are using stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                // Add values to stored Procedure
                cmd.Parameters.AddWithValue("@a", l1.Text);
                // Execute Query Using Method
                cmd.ExecuteNonQuery();
                con.Close();
                GetData();
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {}
        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {}
    }
}