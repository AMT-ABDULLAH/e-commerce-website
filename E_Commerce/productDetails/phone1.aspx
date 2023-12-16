<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="phone1.aspx.cs" Inherits="E_Commerce.productDetails.phone1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 product-container">
        <div class="row">
            <div class="col-md-5">
                <img src="../imgs/Phones/Phone1/p1.jpg" class="img-fluid product-image" alt="Samsung Galaxy Tab" />
            </div>
            <div class="col-md-6">
                <h1 class="text-primary" id="productName" runat="server">Apple iPhone 14 Pro Max</h1>
                <p class="text-muted"><strong>Brand:</strong> Apple</p>
                <p class="text-muted"><strong>Model Name:</strong> iPhone 14 Pro Max</p>
                <p class="text-muted" id="screenLabel" runat="server"><strong>Screen Size:</strong> 6.7 Inches</p>
                <p class="text-muted" id="colorLabel" runat="server"><strong>Color:</strong> Deep Purple</p>
                <p class="text-muted" id="hardDiskLabel" runat="server"><strong>Hard Disk Size:</strong> 1 TB</p>
                <p class="text-muted" id="GenLabel" runat="server"><strong>Generation:</strong> 16th Generation</p>
                <p class="text-muted" id="ramLabel" runat="server"><strong>Installed RAM:</strong> 6 GB</p>
                <p class="text-muted" id="osLabel" runat="server"><strong>Operating System:</strong> IOS 16</p>
                <p class="text-muted display-6" id="priceLabel" runat="server"><strong>Price:</strong> $1899.99</p>

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