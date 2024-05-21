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
    public partial class Admin_Register : System.Web.UI.Page
    {
        //Clearing the all controls data after insert
        void ClearData()
        {
            TextBox1.Text = TextBox3.Text = TextBox4.Text = "";
            DropDownList1.SelectedIndex = 0;
        }
        protected void Page_Load(object sender, EventArgs e)
        {}

        // Inserting Admin Details admin can Register here
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Create connection using SqlConnection class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bidarConnectionString"].ToString());
            // open connection
            con.Open();
            // Passing query to database using SqlCommecd Class
            string q = "pro_Admin_Register";
            SqlCommand cmd = new SqlCommand(q,con);
            // inform that we are using Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;
            // Add values to your StoredProcedure
            cmd.Parameters.AddWithValue("@a",TextBox1.Text);
            cmd.Parameters.AddWithValue("@b",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c",TextBox3.Text);
            cmd.Parameters.AddWithValue("@d",TextBox4.Text);
            // execute query using Method
            int p = cmd.ExecuteNonQuery();
            if (p != 0)
            {
                // Get Registration success message in label
                Label3.Text = "Registration Successfull";
            }
            else
            {
                // Get Error Message in label
                Label3.Text = "Ragistration Failed";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
            //Close connection
            con.Close();
            ClearData();
        }
    }
}