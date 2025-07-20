<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="SecureAccessPortal.Pages.Member" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Registration</title>
    <style>
        /* Basic layout and styling for the member registration form */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 450px;
            margin: 80px auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
        }

        h2 {
            color: #007bff;
            margin-bottom: 15px;
            text-align: center;
        }

        p {
            text-align: center;
            margin-bottom: 25px;
            color: #666;
            font-size: 14px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            margin-top: 25px;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
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
            font-weight: bold;
        }

        .captcha-box {
            margin-top: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .captcha-img {
            border: 1px solid #ccc;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Top Navigation User Control -->
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">
            <h2>Register as a Member</h2>
            <p>Fill the form below to register and gain access to protected areas of the application.</p>
            <p style="text-align: center; margin-bottom: 20px;">
                Register below to create an account. Your credentials will be securely stored in an XML file.
            </p>

            <!-- Username input -->
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

            <!-- Password input -->
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

            <!-- Static CAPTCHA Verification -->
            <label for="txtCaptcha">Enter Code:</label>
            <div class="captcha-box">
                <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/Assets/captcha_sample.jpeg" CssClass="captcha-img" AlternateText="CAPTCHA" />
                <asp:TextBox ID="txtCaptcha" runat="server" placeholder="Type the code"></asp:TextBox>
            </div>

            <!-- Submit Button -->
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />

            <!-- Feedback message (e.g., registration success or failure) -->
            <asp:Label ID="lblMessage" runat="server" CssClass="message" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
