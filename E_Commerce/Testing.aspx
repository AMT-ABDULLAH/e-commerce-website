<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="E_Commerce.Testing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-center">Create Account</h3>
                        <asp:Label runat="server" ID="lblError" CssClass="text-danger" Visible="false"></asp:Label>
                        <div class="form-group">
    <asp:Label runat="server" AssociatedControlID="txtFullName">Full Name</asp:Label>
    <asp:TextBox runat="server" ID="txtFullName" CssClass="form-control" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFullName"
        ErrorMessage="Please enter your full name" Display="Dynamic" CssClass="text-danger" />
</div>
<div class="form-group">
    <asp:Label runat="server" AssociatedControlID="txtEmail">Email Address</asp:Label>
    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
        ErrorMessage="Please enter your email" Display="Dynamic" CssClass="text-danger" />
    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
        ErrorMessage="Please enter a valid email address" Display="Dynamic" CssClass="text-danger"
        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" />
</div>
<div class="form-group">
    <asp:Label runat="server" AssociatedControlID="txtPassword">Password</asp:Label>
    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
        ErrorMessage="Please enter a password" Display="Dynamic" CssClass="text-danger" />
</div>

                        <asp:Button ID="myButton" runat="server" Text="Create Account" CssClass="btn btn-primary" OnClick="MyButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
