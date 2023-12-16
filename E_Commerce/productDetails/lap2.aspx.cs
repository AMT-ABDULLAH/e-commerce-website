using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.productDetails
{
    public partial class lap2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Product product = GetProductInfo();
                PopulateProductDetails(product);
            }
        }
        private Product GetProductInfo()
        {

            return new Product
            {
                Brand = "Lenovo",
                ModelName = "IdeaPad",
                ScreenSize = "15.6 Inches",
                Color = "Gray",
                HardDiskSize = "512 GB",
                CPUModel = "Core i5",
                InstalledRAM = "20 GB",
                OperatingSystem = "Windows 11 Home",
                SpecialFeatures = "Anti Glare Screen",
                GraphicsCard = "Integrated",
                Price = 1999.99m
            };
        }
        private void PopulateProductDetails(Product product)
        {
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