﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookMyShow.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link rel="stylesheet" type="text/css" href="Style/login.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <style>
    .success {
        font-size: 12px;
        color: green;
    }
    .error {
        font-size: 12px;
        color: red;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin-login">
            <div class="main">
                <h2>User Login</h2>
                <div class="form-group">
                    <asp:Label ID="emailLB" runat="server" class="label" Text="Email:"></asp:Label>
                    <asp:TextBox ID="emailTxt" class="input" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTxt" CssClass="error" Display="Dynamic" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="passwordLB" runat="server" class="label" Text="Password:"></asp:Label>
                    <asp:TextBox ID="passwordTxt" class="input" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="passwordTxt" CssClass="error" Display="Dynamic" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </div>
                <asp:Label ID="successLB" runat="server" Text="" CssClass="success"></asp:Label>
                <asp:Label ID="errorLB" runat="server" Text="" CssClass="error"></asp:Label>
                <asp:Button ID="loginBtn" runat="server" Text="Login" class="button" OnClick="loginBtn_Click" />
            </div>
        </div>
    </form>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"
      ></script>
</body>
</html>
