using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Security.Cryptography;
using System.Text;

namespace E_Commerce.CreateAccount
{
    public partial class CreateAccount : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page Load logic if any
    }

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

                string hashedPassword = hashPassword(password); // Hash the password

                bool accountCreated = SimulateAccountCreation(fullName, email, hashedPassword);

            if (accountCreated)
            {
                Response.Redirect("SuccessPage.aspx");
        }
            else
            {
                lblError.Text = "Account creation failed. Please try again.";
                lblError.Visible = true;
            }
        }
    }

    private bool SimulateAccountCreation(string fullName, string email, string password)
    {
            // Logic to save data into the database would be here
            // Use your database connection and INSERT statement here
            // Return true if account creation was successful, false otherwise
        return true;
    }

        private string hashPassword(string password)
        {
            // Using SHA256 for hashing (better than SHA1)
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] passwordBytes = Encoding.UTF8.GetBytes(password);
                byte[] hashedBytes = sha256.ComputeHash(passwordBytes);
                return Convert.ToBase64String(hashedBytes);
        }
    }
}
}



