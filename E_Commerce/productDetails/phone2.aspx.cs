﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.productDetails
{
    public partial class phone2 : System.Web.UI.Page
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
                    Brand = "Samsung",
                    ModelName = "Galaxy S23 Ultra",
                    ScreenSize = "17.41 Inches",
                    Color = "Green",
                    HardDiskSize = "512 GB",
                    GenModel = "8th Generation 2",
                    InstalledRAM = "12 GB",
                    OperatingSystem = "Android",
                    Price = 1299.99m
                };
            }
            private void PopulateProductDetails(Product product)
            {
                productName.InnerText = $"{product.Brand} {product.ModelName}";
                screenLabel.InnerText = $"Screen Size: {product.ScreenSize}";
                colorLabel.InnerText = $"Color: {product.Color}";
                hardDiskLabel.InnerText = $"Hard Disk Size: {product.HardDiskSize}";
                GenLabel.InnerText = $"Gen Model: {product.GenModel}";
                ramLabel.InnerText = $"Installed RAM: {product.InstalledRAM}";
                osLabel.InnerText = $"Operating System: {product.OperatingSystem}";
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
                public string GenModel { get; set; }
                public string InstalledRAM { get; set; }
                public string OperatingSystem { get; set; }
                public decimal Price { get; set; }
            }

        }
    }