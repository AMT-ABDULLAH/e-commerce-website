<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="E_Commerce.Pages.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>Contact Us</h2>
                <hr />

                <div class="form-group">
                    <label for="txtName">Your Name:</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtEmail">Your Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtMessage">Your Message:</label>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                <div runat="server" id="thankYouMessage" class="mt-3"></div>
            </div>
        </div>
    </div>
</asp:Content>
