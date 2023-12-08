<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="E_Commerce.Checkout.Checkout" %>

<!DOCTYPE html>
<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_GOOGLE_MAPS_API_KEY&libraries=places"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            initializeAutocomplete();
        });

        function initializeAutocomplete() {
            var input = document.getElementById('txtAddress');
            var autocomplete = new google.maps.places.Autocomplete(input);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Checkout</h2>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    <div class="form-group">
                        <label for="fullName">Full Name:</label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" Text="Place Order" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />

                </div>
            </div>
        </div>
    </form>
</body>
</html>
