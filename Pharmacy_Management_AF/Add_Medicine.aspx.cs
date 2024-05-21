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
    public partial class Add_Medicine : System.Web.UI.Page
    {
        // Create OneTime connection using SqlConnecion Class no need to create for othe buttons if u create once
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bidarConnectionString"].ToString());

        // Get  display inserted medicine in gridview2
        void Get_Medicine()
        {
            // passing query to database using SqlDataAdapter
            string q = "pro_Get_Medicine_M";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            // Create dataset 
            DataSet ds = new DataSet();
            sda.Fill(ds, "Medicine_M");
            // Give connection between datasource and GridView
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        
        // Reset all fields after action happens
        void Reset()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
            DropDownList1.SelectedIndex = 1;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)   // second request
            {
                Get_Medicine();
                DropDownList1.Items.Insert(1,"--Select Category--");
            }
        }

        // Insert Medicine 
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Open connection
            con.Open();
            // pass query to database using SqlCommand class
            string q = "pro_Insert_Medicine";
            SqlCommand cmd = new SqlCommand(q, con);
            // inform that we arre using StoredProcedure
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Values to stored procedure
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", TextBox3.Text);
            cmd.Parameters.AddWithValue("@d", TextBox4.Text);
            cmd.Parameters.AddWithValue("@e", TextBox5.Text);
            cmd.Parameters.AddWithValue("@f", DropDownList1.SelectedItem.Text);
            // execute query using method
            cmd.ExecuteNonQuery();
            // close connection
            con.Close();
            Get_Medicine();
            Reset();
        }

        //collect data from labels and palce in texboxes for action
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // CommandName shold be same in here and  in Source code
            if (e.CommandName == "Select")
            {
                // identifing button index  umber
                int index = Convert.ToInt32(e.CommandArgument);
                // identifing th row index number
                GridViewRow row = GridView2.Rows[index];
                // give names to your controls
                Label l1 = (Label)row.FindControl("Label1");
                Label l2 = (Label)row.FindControl("Label2");
                Label l3 = (Label)row.FindControl("Label3");
                Label l4 = (Label)row.FindControl("Label4");
                Label l5 = (Label)row.FindControl("Label5");
                Label l6 = (Label)row.FindControl("Label6");
                //get data from labels and place data in texboxes
                TextBox1.Text = l1.Text;
                TextBox2.Text = l2.Text;
                TextBox3.Text = l3.Text;
                TextBox4.Text = l4.Text;
                TextBox5.Text = l5.Text;
                DropDownList1.SelectedItem.Text = l6.Text;
            }
        }

        //delete Medicine Details
        protected void Button3_Click(object sender, EventArgs e)
        {
            // open connection
            con.Open();
            // passing query using SqlCommand Class
            string q = "pro_Delete_Medicine_M";
            SqlCommand cmd = new SqlCommand(q, con);
            // tell that we are using StoredProcedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            // execute query using method
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                // get deleted message in label
                Label7.Text = ("Recored Deleted");
            }
            else
            {
                // get error message in label
                Label7.Text = "Record Not Deleted";
                Label7.ForeColor = System.Drawing.Color.Red;
            }
            // close the connaection
            con.Close();
            Get_Medicine();
            Reset();
        }


        // Get Update te Medicine 
        protected void Button2_Click(object sender, EventArgs e)
        {
            // Open connection
            con.Open();
            // pass query to database using SqlCommand class
            string q = "pro_Update_Medicine";
            SqlCommand cmd = new SqlCommand(q, con);
            // inform that we are using StoredProcedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", TextBox3.Text);
            cmd.Parameters.AddWithValue("@d", TextBox4.Text);
            cmd.Parameters.AddWithValue("@e", TextBox5.Text);
            cmd.Parameters.AddWithValue("@f", DropDownList1.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            // close connection
            con.Close();
            Get_Medicine();
            Reset();
        }
    }
}