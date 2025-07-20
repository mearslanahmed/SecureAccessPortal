<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff1.aspx.cs" Inherits="SecureAccessPortal.Pages.Staff1" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<%-- 
    Staff1.aspx
    This page is the admin dashboard, only accessible to staff with "Admin" role.
    Access control is handled in the code-behind using Session["StaffRole"].
    It displays a welcome message and is styled with a modern responsive layout.
--%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard - Staff 1</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1000px;
            margin: 40px auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            padding: 30px 40px;
        }

        h1 {
            font-size: 28px;
            color: #0c5460;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #444;
            margin-bottom: 20px;
        }

        .message {
            font-size: 18px;
            color: #155724;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">
            <h1>Admin Dashboard</h1>
            <p>This page is accessible only by staff members with the <strong>Admin</strong> role. Admins can manage users, view system summaries, and access sensitive features restricted from general staff.</p>

            <asp:Label ID="lblWelcome" runat="server" CssClass="message" />
        </div>
    </form>
</body>
</html>
