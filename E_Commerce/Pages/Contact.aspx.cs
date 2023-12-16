using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.Pages
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string message = txtMessage.Text.Trim();

                if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(message))
                {
                    thankYouMessage.InnerHtml = "<p class='alert alert-danger'>Please fill out all the required fields.</p>";
                    return; 
                }


                thankYouMessage.InnerHtml = $"<p class='alert alert-success'>Thank you, {name}, for contacting us! We will get back to you at {email}.</p>";
            }
        }
        void Application_Start(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.WebForms;
        }

    }
}