<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="phone2.aspx.cs" Inherits="E_Commerce.productDetails.phone2" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 product-container">
        <div class="row">
            <div class="col-md-5">
                <img src="../imgs/Phones/Phone2/p1.jpg" class="img-fluid product-image" alt="Samsung Galaxy Tab" />
            </div>
            <div class="col-md-6">
                <h1 class="text-primary" id="productName" runat="server">Samsung Galaxy S23 Ultra</h1>
                <p class="text-muted"><strong>Brand:</strong> Samsung</p>
                <p class="text-muted"><strong>Model Name:</strong> Galaxy S23 Ultra</p>
                <p class="text-muted" id="screenLabel" runat="server"><strong>Screen Size:</strong> 17.31 Inches</p>
                <p class="text-muted" id="colorLabel" runat="server"><strong>Color:</strong> Green</p>
                <p class="text-muted" id="hardDiskLabel" runat="server"><strong>Hard Disk Size:</strong> 512 GB</p>
                <p class="text-muted" id="GenLabel" runat="server"><strong>Generation:</strong> 8th Generation 2</p>
                <p class="text-muted" id="ramLabel" runat="server"><strong>Installed RAM:</strong> 12 GB</p>
                <p class="text-muted" id="osLabel" runat="server"><strong>Operating System:</strong> Android</p>
                <p class="text-muted display-6" id="priceLabel" runat="server"><strong>Price:</strong> $1299.99</p>

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
