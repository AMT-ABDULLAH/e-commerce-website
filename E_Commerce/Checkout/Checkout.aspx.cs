using System;
using System.Web.UI;

namespace E_Commerce.Checkout
{
public partial class Checkout : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    string fullName = txtFullName.Text;
                    string address = txtAddress.Text;



                    bool orderPlaced = PlaceOrder(fullName, address /*, other parameters */);

                    if (orderPlaced)
                    {

                        Response.Redirect("ThankYou.aspx");
                    }
                    else
                    {
                        throw new Exception("Failed to place order. Please try again.");
                    }
                }
                else
                {
                    throw new Exception("Please fill in all required fields.");
                }
            }
            catch (Exception ex)
            {
                DisplayErrorMessage(ex.Message);

            }
        }


            return true;
        }

        private void DisplayErrorMessage(string message)
        {
            lblError.Text = message;
            lblError.Visible = true;
    }
    }