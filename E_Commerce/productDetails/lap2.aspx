<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="lap2.aspx.cs" Inherits="E_Commerce.productDetails.lap2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 product-container">
        <div class="row">
            <div class="col-md-6">
                <img src="../imgs/Laptops/laptop2/lap1.jpg" class="img-fluid product-image" alt="Lenovo IdeaPad 3" />
            </div>
            <div class="col-md-6">
                <h1 class="text-primary" id="productName" runat="server">Lenovo IdeaPad 3</h1>
                <p class="text-muted"><strong>Brand:</strong> Lenovo</p>
                <p class="text-muted"><strong>Model Name:</strong> IdeaPad</p>
                <p class="text-muted" id="screenLabel" runat="server"><strong>Screen Size:</strong> 15.6 Inches</p>
                <p class="text-muted" id="colorLabel" runat="server"><strong>Color:</strong> Gray</p>
                <p class="text-muted" id="hardDiskLabel" runat="server"><strong>Hard Disk Size:</strong> 512 GB</p>
                <p class="text-muted" id="cpuLabel" runat="server"><strong>CPU Model:</strong> Core i5</p>
                <p class="text-muted" id="ramLabel" runat="server"><strong>Installed RAM:</strong> 20 GB</p>
                <p class="text-muted" id="osLabel" runat="server"><strong>Operating System:</strong> Windows 11 Home</p>
                <p class="text-muted" id="featuresLabel" runat="server"><strong>Special Features:</strong> Anti Glare Screen</p>
                <p class="text-muted" id="graphicsCardLabel" runat="server"><strong>Graphics Card:</strong> Integrated</p>
                <p class="text-muted display-6" id="priceLabel" runat="server"><strong>Price:</strong> $1999.99</p>

                <button class="btn btn-primary mt-3 float-right mr-2" runat="server" id="addToCartButton" onserverclick="AddToCartButton_Click">
                    Add to Cart
                </button>
                <button class="btn btn-primary mt-3 float-right mr-2" runat="server" id="BuyNowButton" onserverclick="AddToCartButton_Click">
                    Buy now
                </button>

            </div>
        </div>
    </div>
</asp:Content>
