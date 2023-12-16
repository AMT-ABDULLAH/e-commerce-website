using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.productDetails
{
    public partial class lap1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Simulate fetching product information from a database or other source
                Product product = GetProductInfo();

                // Populate the UI elements with product information
                PopulateProductDetails(product);
            }
        }
        private Product GetProductInfo()
        {
            // Simulate fetching product information from a database or other source
            // In a real application, you would fetch this information from a database or API
            return new Product
            {
                Brand = "Lenovo",
                ModelName = "IdeaPad",
                ScreenSize = "14 Inches",
                Color = "Gray",
                HardDiskSize = "128 GB",
                CPUModel = "Core i3",
                InstalledRAM = "8 GB",
                OperatingSystem = "Windows 11 Home",
                SpecialFeatures = "Light Weight, Thin",
                GraphicsCard = "Integrated",
                Price = 1499.99m


            };
        }
        private void PopulateProductDetails(Product product)
        {
            // Populate the UI elements with product information
            productName.InnerText = $"{product.Brand} {product.ModelName}";
            screenLabel.InnerText = $"Screen Size: {product.ScreenSize}";
            colorLabel.InnerText = $"Color: {product.Color}";
            hardDiskLabel.InnerText = $"Hard Disk Size: {product.HardDiskSize}";
            cpuLabel.InnerText = $"CPU Model: {product.CPUModel}";
            ramLabel.InnerText = $"Installed RAM: {product.InstalledRAM}";
            osLabel.InnerText = $"Operating System: {product.OperatingSystem}";
            featuresLabel.InnerText = $"Special Features: {product.SpecialFeatures}";
            graphicsCardLabel.InnerText = $"Graphics Card: {product.GraphicsCard}";
            priceLabel.InnerText = $"Price: ${product.Price.ToString("0.00")}";




        }
        protected void AddToCartButton_Click(object sender, EventArgs e)
        {
            // Here you can implement the logic to add the product to the cart.
            // For simplicity, let's just display a message for now.
            Response.Write("Product added to cart!");
            Response.Redirect("~/");
        }
        public class Product
        {
            public string Brand { get; set; }
            public string ModelName { get; set; }
            public string ScreenSize { get; set; }
            public string Color { get; set; }
            public string HardDiskSize { get; set; }
            public string CPUModel { get; set; }
            public string InstalledRAM { get; set; }
            public string OperatingSystem { get; set; }
            public string SpecialFeatures { get; set; }
            public string GraphicsCard { get; set; }
            public decimal Price { get; set; }
        }

    }
}