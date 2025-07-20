<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="PublicApi.aspx.cs" Inherits="SecureAccessPortal.Pages.PublicApi" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Public API - Random Joke</title>
    <style>
        /* Page styling for clean and modern UI */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            font-size: 26px;
            color: #0c5460;
            margin-bottom: 25px;
        }

        .btn {
            padding: 10px 18px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            .btn:hover {
                background-color: #0056b3;
            }

        .joke {
            margin-top: 25px;
            font-size: 18px;
            color: #333;
        }

        .note {
            margin-top: 30px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Top navigation included via user control --%>
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">
            <h2>😂 Get a Random Joke from Public API</h2>

            <%-- Button to fetch a random joke using external API --%>
            <asp:Button ID="btnGetJoke" runat="server" Text="Get Joke" CssClass="btn" OnClick="btnGetJoke_Click" />

            <%-- Label to display joke result dynamically --%>
            <div class="joke">
                <asp:Label ID="lblJoke" runat="server" Text=""></asp:Label>
            </div>

            <%-- Information about the public API used --%>
            <div class="note">
                This uses the <a href="https://official-joke-api.appspot.com/random_joke" target="_blank">Official Joke API</a> to fetch a random joke in real-time.
            </div>
        </div>
    </form>
</body>
</html>
