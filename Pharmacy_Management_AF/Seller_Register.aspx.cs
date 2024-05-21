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
    public partial class Seller_Register : System.Web.UI.Page
    {
        // Created connection using SqlConnection class
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bidarConnectionString"].ToString());

        // this will clear the data from all controls
        void ClearData()
        {
            TextBox1.Text = TextBox2.Text=TextBox3.Text = TextBox4.Text = "";
            DropDownList1.SelectedIndex = 1;
        }

        // Will get Seller details in Gridview
        void GetSeller()
        {
            //passing the query to the database using SqlDataAdaoter
            string q = "pro_GetSeller_Medicine";
            SqlDataAdapter sda = new SqlDataAdapter(q,con);
            DataSet ds = new DataSet();
            sda.Fill(ds,"Seller");
            // Add GridView to datasource
            GridView1.DataSource = ds;
            // Bind GridView Data
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)// Except Second Request
            {
                GetSeller();
                DropDownList1.Items.Insert(1, "Select Your Gender");
            }
        }

        // Insert seller information in GridView
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Open the connection
            con.Open();
            // Passing the query to database using SqlCommand Class
            string q = "pro_Seller_Register";
            SqlCommand cmd = new SqlCommand(q, con);
            // Tell that we are using StoredProcedure
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Values to Stored Procedure
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            // Execute Query using ExecuteNonQuery Method
            cmd.ExecuteNonQuery();
            //Close Connection
            con.Close();
            GetSeller();  // adding Seller Data
            ClearData();   // Clear all field after registerd
        }

        //Deleting Seller Information form GridView
        protected void Button3_Click(object sender, EventArgs e)
        {
            //Open connection
            con.Open();
            string q = "pro_Delete_Seller_Medicine";
            SqlCommand cmd = new SqlCommand(q, con);
            // Inform we are Using Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Values to stored Procedure
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                // Get Popup Delete message in Label
                Label2.Text = "Records Deleted";
;           }
            else
            {
                //Get Error message in label
                Label2.Text = "Record Not Deleted";
                // this line will give color to the error message
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            //Close Connection
            con.Close();
            GetSeller();
            ClearData();
        }

        // Select seller details for update using RowCommand
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // when we select a perticular field it will collect data from label and place in TextBoxes
            if (e.CommandName == "Select")
            {
                // Identifing button index number
                int index = Convert.ToInt32(e.CommandArgument);
                // identifing rowindex number
                GridViewRow row = GridView1.Rows[index];
                // give names to controls
                Label l1 = (Label)row.FindControl("Label2");
                Label l2 = (Label)row.FindControl("Label3");
                Label l3 = (Label)row.FindControl("Label4");
                Label l4 = (Label)row.FindControl("Label5");
                Label l5 = (Label)row.FindControl("Label6");
                //collecting data from labels and place in TextBoxes
                TextBox1.Text = l1.Text;
                DropDownList1.SelectedItem.Text = l2.Text;
                TextBox2.Text = l3.Text;
                TextBox3.Text = l4.Text;
                TextBox4.Text = l5.Text;
            }
        }

        // Updating the sellect information
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Open connection
            con.Open();
            // Passing the query to the database
            string q = "pro_Seller_Update";
            SqlCommand cmd = new SqlCommand(q, con);
            // Using storedprocedure
            cmd.CommandType = CommandType.StoredProcedure;
            //Add values to Stored Procedure
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            // Executing the method
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Label2.Text = "Recored Updated";
            }
            else
            {
                Label2.Text = "Record Not Updated";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            // Close the connection
            con.Close();
            GetSeller();   // get updated data
            ClearData();     // clear all fields after update
        }
    }
}