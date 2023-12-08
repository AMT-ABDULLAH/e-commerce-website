using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace E_Commerce.CreateAccount
{
{
    public partial class CreateAccount : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

    }

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;


            bool accountCreated = SimulateAccountCreation(fullName, email, password);

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

        return true;
    }
    }
}
}