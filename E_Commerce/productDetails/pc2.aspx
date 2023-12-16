<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pc2.aspx.cs" Inherits="E_Commerce.productDetails.pc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 product-container">
        <div class="row">
            <div class="col-md-4 d-flex ">
                <img src="../imgs/PCs/pc2/pc11.jpg" class="img-fluid product-image" alt="zord pc" />
            </div>
            <div class="col-md-8 float-right">
                <h1 class="text-primary" id="productName" runat="server">PC Build i5</h1>
                <p class="text-muted"><strong>Brand:</strong> TechTroniX</p>
                <p class="text-muted" id="colorLabel" runat="server"><strong>Color:</strong> Black</p>
                <p class="text-muted" id="hardDiskLabel" runat="server"><strong>Hard Disk Size:</strong> 1 TB</p>
                <p class="text-muted" id="cpuLabel" runat="server"><strong>CPU Model:</strong> Core i5 12400F</p>
                <p class="text-muted" id="ramLabel" runat="server"><strong>Installed RAM:</strong> 16 GB</p>
                <p class="text-muted" id="osLabel" runat="server"><strong>Operating System:</strong> Windows 11 Pro</p>
                <p class="text-muted" id="graphicsCardLabel" runat="server"><strong>Graphics Card:</strong> RTX 3060 12GB</p>
                <p class="text-muted display-6" id="priceLabel" runat="server"><strong>Price:</strong> $999.99</p>

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
