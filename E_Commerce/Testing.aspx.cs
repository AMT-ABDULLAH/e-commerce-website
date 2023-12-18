using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Data;
using System.Text;

namespace E_Commerce
{
    public partial class Testing : System.Web.UI.Page
    {
        protected TextBox txtFullName;
        protected TextBox txtEmail;
        protected TextBox txtPassword;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Page Load logic if any
        }

        private string hashPassword(string txtpassword)
        {
            // Using SHA256 for hashing (better than SHA1)
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] passwordBytes = Encoding.UTF8.GetBytes(txtpassword);
                byte[] hashedBytes = sha256.ComputeHash(passwordBytes);
                return Convert.ToBase64String(hashedBytes);
            }
        }


        protected void MyButton_Click(object sender, EventArgs e)
        {
            string name = HttpUtility.HtmlEncode(txtFullName.Text);
            string email = HttpUtility.HtmlEncode(txtEmail.Text);
            string password = txtPassword.Text;

            string hashedPassword = hashPassword(password);

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\mrabd\\Source\\Repos\\AMT-ABDULLAH\\ECOM_PT\\E_Commerce\\App_Data\\Register.mdf;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Register (Name, Email, Password) VALUES (@Name, @Email, @Password)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", hashedPassword);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("Registered successfully");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("An error occurred: " + ex.Message);
                        // Handle the exception as needed
                    }
                }
            }
        }
    }
}