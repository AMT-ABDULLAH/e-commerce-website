using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.productDetails
{
    public partial class pc2 : System.Web.UI.Page
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
                Brand = "Generic",
                Color = "Gray",
                HardDiskSize = "1 TB",
                CPUModel = "Core i5 12400F",
                InstalledRAM = "16 GB",
                OperatingSystem = "Windows 11 Pro",
                GraphicsCard = "RTX 3060 12GB",
                Price = 999.99m
            };
        }
        private void PopulateProductDetails(Product product)
        {
            productName.InnerText = $"{product.Brand}";
            colorLabel.InnerText = $"Color: {product.Color}";
            hardDiskLabel.InnerText = $"Hard Disk Size: {product.HardDiskSize}";
            cpuLabel.InnerText = $"CPU Model: {product.CPUModel}";
            ramLabel.InnerText = $"Installed RAM: {product.InstalledRAM}";
            osLabel.InnerText = $"Operating System: {product.OperatingSystem}";
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
            public string Color { get; set; }
            public string HardDiskSize { get; set; }
            public string CPUModel { get; set; }
            public string InstalledRAM { get; set; }
            public string OperatingSystem { get; set; }
            public string GraphicsCard { get; set; }
            public decimal Price { get; set; }
        }

    }
}