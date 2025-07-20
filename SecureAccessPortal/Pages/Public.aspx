<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Public.aspx.cs" Inherits="SecureAccessPortal.Pages.Public" %>

<%@ Register Src="~/Controls/TopNav.ascx" TagPrefix="uc" TagName="TopNav" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SecureWebHub - Public Page</title>

    <!-- Inline styles for overall modern look and feel -->
    <style>
        /* Body and typography styling */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f2f5;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Container for centering and layout */
        .container {
            max-width: 1100px;
            margin: 30px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            padding: 40px;
        }

        /* Headings */
        h1 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        h2 {
            color: #007acc;
            margin-top: 35px;
            font-size: 20px;
        }

        p {
            font-size: 16px;
            line-height: 1.6;
        }

        ol {
            padding-left: 20px;
            margin-bottom: 20px;
        }

        /* Navigation button links */
        .nav-links {
            margin-top: 15px;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

            .nav-links a {
                padding: 10px 18px;
                background-color: #007acc;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                font-size: 15px;
                transition: background-color 0.3s;
            }

                .nav-links a:hover {
                    background-color: #005fa3;
                }

        /* GridView styling for application summary table */
        .table-wrapper {
            overflow-x: auto;
            margin-top: 20px;
        }

        .aspNetGrid {
            width: 100%;
            border-collapse: collapse;
        }

            .aspNetGrid th {
                background-color: #007acc;
                color: white;
                padding: 10px;
                text-align: left;
                border: 1px solid #ccc;
            }

            .aspNetGrid td {
                padding: 10px;
                border: 1px solid #ddd;
                background-color: #fafafa;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Top navigation user control (included on all pages) -->
        <uc:TopNav ID="TopNav1" runat="server" />

        <div class="container">
            <h1>SecureWebHub</h1>
            <p>This application demonstrates a multi-layered ASP.NET Web Forms architecture with user registration, access control, XML/session/cookie state management, and both internal and external services.</p>

            <h2>How to Register</h2>
            <ol>
                <li>Click the <strong>Member Page</strong> link in the header</li>
                <li>Fill in the registration form</li>
                <li>Your credentials will be securely saved in XML</li>
            </ol>
            <!-- Replace this link with the actual deployment link-->
            <p><strong>WebStrar Deployment URL:</strong> http://webstrar50.fulton.asu.edu/pageX/Default.aspx</p>

            <h2>How to Test the Application</h2>
            <p>
                To test this application, you may try the following:
                <ul>
                    <li>Register on the <strong>Member Page</strong> using any username and password.</li>
                    <li>Check hash output via the <strong>TryIt</strong> page.</li>
                    <li>Use <strong>Staff Pages</strong> to simulate access based on XML-authentication.</li>
                    <li>Use <strong>Service Directory</strong> to access WCF and API tests.</li>
                </ul>
            </p>

            <h2>Application & Components Summary</h2>

            <!-- GridView showing the full list of internal and external components used -->
            <div class="table-wrapper">
                <asp:GridView ID="gvComponents" runat="server" AutoGenerateColumns="false" CssClass="aspNetGrid">
                    <Columns>
                        <asp:BoundField HeaderText="Developer Name" DataField="Developer" />
                        <asp:BoundField HeaderText="Component Type" DataField="Type" />
                        <asp:BoundField HeaderText="Operation" DataField="Operation" />
                        <asp:BoundField HeaderText="Parameters" DataField="Params" />
                        <asp:BoundField HeaderText="Return Type" DataField="ReturnType" />
                        <asp:BoundField HeaderText="Description" DataField="Description" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
