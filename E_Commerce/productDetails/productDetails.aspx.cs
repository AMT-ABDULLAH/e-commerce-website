using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.productDetails
{
    public partial class productDetails : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                // Any initializations or data loading can go here
        }
            }

        protected void imgProduct_Click(object sender, ImageClickEventArgs e)
        {
            // Handle the click event for the product image here
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            // Handle adding the product to the cart here
        }
        }
    }
