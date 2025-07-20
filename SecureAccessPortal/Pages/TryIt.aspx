<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryIt.aspx.cs" Inherits="SecureAccessPortal.Pages.TryIt" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TryIt - Test Application Components</title>
    <style>
        /* Page styling for consistent modern UI */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1100px;
            margin: 40px auto;
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h2 {
            color: #007bff;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 40px;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        .tryit-section {
            background-color: #f9f9f9;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 30px;
        }

            .tryit-section label {
                font-weight: bold;
            }

        input[type="text"], .btn {
            width: 100%;
            padding: 10px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 8px;
            margin-bottom: 10px;
        }

        .btn {
            width: auto;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            .btn:hover {
                background-color: #0056b3;
            }

        .result {
            margin-top: 10px;
            color: #28a745;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Include the styled top navigation bar -->
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">

            <!-- Summary table showing available components -->
            <h2>Application & Component Summary Table</h2>
            <table>
                <tr>
                    <th>Provider Name</th>
                    <th>Component Type</th>
                    <th>Operation Name</th>
                    <th>Parameters</th>
                    <th>Return Type</th>
                    <th>Description</th>
                </tr>
                <tr>
                    <td>Arslan Ahmed</td>
                    <td>DLL (Class Library)</td>
                    <td>ComputeSha256Hash</td>
                    <td>string input</td>
                    <td>string (Base64 hash)</td>
                    <td>Hashes input using SHA-256 and returns Base64 string</td>
                </tr>
                <tr>
                    <td>Arslan Ahmed</td>
                    <td>WCF Web Service</td>
                    <td>ReverseText</td>
                    <td>string input</td>
                    <td>string</td>
                    <td>Reverses the given string and returns it</td>
                </tr>
            </table>

            <!-- TryIt section for local hashing function -->
            <h2>TryIt: Test Hasher Function (DLL)</h2>
            <div class="tryit-section">
                <asp:Label AssociatedControlID="txtInput" runat="server" Text="Enter text to hash:" />
                <asp:TextBox ID="txtInput" runat="server" placeholder="Type something to hash..." />
                <asp:Button ID="btnHash" runat="server" CssClass="btn" Text="Compute Hash" OnClick="btnHash_Click" />
                <asp:Label ID="lblResult" runat="server" CssClass="result" />
            </div>

            <!-- TryIt section for WCF web service -->
            <h2>TryIt: Test WCF Service (ReverseText)</h2>
            <div class="tryit-section">
                <asp:Label AssociatedControlID="txtServiceInput" runat="server" Text="Enter text to reverse:" />
                <asp:TextBox ID="txtServiceInput" runat="server" placeholder="Type something to reverse..." />
                <asp:Button ID="btnReverse" runat="server" CssClass="btn" Text="Reverse Text" OnClick="btnReverse_Click" />
                <asp:Label ID="lblServiceResult" runat="server" CssClass="result" />
            </div>
        </div>
    </form>
</body>
</html>
