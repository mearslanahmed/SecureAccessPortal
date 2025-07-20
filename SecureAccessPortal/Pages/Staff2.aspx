<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff2.aspx.cs" Inherits="SecureAccessPortal.Pages.Staff2" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager Dashboard - Staff 2</title>

    <%-- Page styling for layout and visual appearance --%>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 900px;
            margin: 60px auto;
            background: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h1 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
            text-align: center;
        }

        .message {
            font-size: 18px;
            color: #333;
            margin-top: 20px;
            text-align: center;
        }

        .note {
            margin-top: 30px;
            font-size: 14px;
            text-align: center;
            color: #555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Shared top navigation user control --%>
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">
            <h1>Manager Dashboard</h1>

            <%-- Welcome message for logged-in Manager (set dynamically in code-behind) --%>
            <asp:Label ID="lblWelcome" runat="server" CssClass="message" />

            <%-- Informational note about access restriction --%>
            <p class="note">This page is accessible only by users with the <strong>Manager</strong> role.</p>
        </div>
    </form>
</body>
</html>
