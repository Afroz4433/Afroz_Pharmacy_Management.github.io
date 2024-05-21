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
    public partial class Seller : System.Web.UI.Page
    {
        // Create Connection Using SqlConnection Class
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bidarConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Exception handling Try-catch
            try
            {
                //Opend Connection
                con.Open();
                // Pass query to database using SqlCommand Class
                string q = "pro_SellerLogin_Medicine1";
                SqlCommand cmd = new SqlCommand(q, con);
                // Inform that we are using Stored Procedure
                cmd.CommandType = CommandType.StoredProcedure;
                // Add Values to the Stored Procedure
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                // Execute query using ExecuteScalar Method
                object p = cmd.ExecuteScalar();
                if ((int)p != 0)

                {
                    // this line will Redirect to the next page
                    Response.Redirect("Billing_Medicine.aspx");
                }
                else
                {
                    // this line will shows an error in label
                    Label2.Text = "Login Falied Enterd Details are wrong";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
                // Close the connection
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Execption Login Error");
                Response.Write(ex.Message);
            }

        }
    }
}