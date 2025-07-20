<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceDirectory.aspx.cs" Inherits="SecureAccessPortal.Pages.ServiceDirectory" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Directory</title>
    <style>
        /* Basic page and component styling */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1100px;
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
            color: #555;
            font-size: 15px;
        }

        .table-wrapper {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }

        th, td {
            padding: 12px 16px;
            border: 1px solid #dee2e6;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        td a {
            color: #007bff;
            text-decoration: none;
        }

            td a:hover {
                text-decoration: underline;
            }

        .tryit-link {
            margin-top: 30px;
            display: inline-block;
            background-color: #28a745;
            color: white;
            padding: 12px 20px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
        }

            .tryit-link:hover {
                background-color: #218838;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Top navigation bar --%>
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">
            <h1>Service Directory</h1>
            <p>This page summarizes all services and components provided in this application for easy reference and access.</p>

            <%-- Table summarizing all components: service, DLL, API --%>
            <div class="table-wrapper">
                <table>
                    <tr>
                        <th>Component Type</th>
                        <th>Name</th>
                        <th>Operation</th>
                        <th>Parameters</th>
                        <th>Return Type</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <%-- WCF service hosted locally --%>
                        <td>WCF Service</td>
                        <td><a href="../Services/MyService.svc" target="_blank">MyService.svc</a></td>
                        <td>ReverseText</td>
                        <td>string input</td>
                        <td>string</td>
                        <td>Reverses a string via WCF endpoint</td>
                    </tr>
                    <tr>
                        <%-- Local DLL used for SHA-256 hashing --%>
                        <td>DLL (Class Library)</td>
                        <td>SecurityLibrary.dll</td>
                        <td>ComputeHash</td>
                        <td>string input</td>
                        <td>string (Base64 SHA-256)</td>
                        <td>Hashes input using SHA-256</td>
                    </tr>
                    <tr>
                        <%-- Public Web API to fetch random jokes --%>
                        <td>Public API</td>
                        <td><a href="PublicApi.aspx" target="_blank">RandomJoke</a></td>
                        <td>RandomJoke</td>
                        <td>None</td>
                        <td>JSON</td>
                        <td>Returns a random joke from a public API</td>
                    </tr>
                </table>
            </div>

            <%-- TryIt test page link for interactive service testing --%>
            <a class="tryit-link" href="TryIt.aspx">TryIt - Test the Services</a>
        </div>
    </form>
</body>
</html>
