<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="SecureAccessPortal.Pages.StaffLogin" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Login</title>

    <%-- Styling for login layout and elements --%>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 450px;
            margin: 60px auto;
            background: #fff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            margin-top: 15px;
            display: block;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        .btn {
            margin-top: 25px;
            width: 100%;
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

            .btn:hover {
                background-color: #0056b3;
            }

        .message {
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
        }

        .error {
            color: red;
        }

        .success {
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Shared navigation bar for all pages --%>
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">
            <h2>Staff Login</h2>

            <%-- Instructions for login --%>
            <p style="text-align: center; font-size: 14px; color: #555;">
                Please enter your staff credentials to access respective tools.
            </p>

            <%-- Username field --%>
            <label for="txtUsername">Username</label>
            <asp:TextBox ID="txtUsername" runat="server" />

            <%-- Password field --%>
            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />

            <%-- Login button triggers authentication logic --%>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

            <%-- Message shown for success or failure --%>
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
