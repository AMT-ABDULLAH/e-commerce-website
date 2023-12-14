<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="E_Commerce.productDetails.productDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
    <link href="styles.css" rel="stylesheet" />
    <script src="scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Product Details</h1>
            <!-- Any additional header content -->
        </header>

        <main>
            <div class="product-details">
                <div class="product-image">
                    <asp:Image ID="imgProduct" runat="server" ImageUrl="~/Images/Iphone14.PNG" Width="141px" OnClick="imgProduct_Click"/>
                </div>
                <div class="product-info">
                    <h2>Product: iPhone 14 Pro Max</h2>
                    <p>Description: Brand Echoamo Model Name A14 Pro Max. Wireless Carrier: T-Mobile, Unlocked. Cellular Technology: 5G. Connectivity Technology: Bluetooth, Wi-Fi, USB. SIM card slot count: Dual SIM. Resolution: 1440 x 3200. Connector Type: USB Type C. Form Factor: Smartphone. Battery Capacity: 6800 Milliamp Hours.</p>
                    <p>About this item:</p>
                    <p>
                        This unlocked A14 Pro Max phone runs on Android 13 with 6GB+256GB expandable storage. Its Snapdragon 8 Gen 2 Octa-Core Processor ensures smooth multitasking. The long-lasting 6800mAh battery supports 30W Fast Charging, offering extended usage without power concerns.
                    </p>
                    <p>
                        The phone features a 6.8'' FHD+ 120Hz display, providing an immersive viewing experience. Its 64MP + 24MP Camera with Face ID and Fingerprint recognition captures stunning photos. Compatible with T-Mobile, AT&T, Metro PCS, and 5G networks.
                    </p>
                    <p>
                        Price: $179.99
                    </p>
                    <!-- Additional product information or buttons -->
                </div>
        </div>
        </main>

        <footer>
            <!-- Footer content -->
        </footer>
    </form>
</body>
</html>
