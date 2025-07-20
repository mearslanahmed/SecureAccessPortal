<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopNav.ascx.cs" Inherits="SecureAccessPortal.Controls.TopNav" %>

<!-- Inline styling for top navigation bar -->
<style>
    .topnav {
        background-color: #007acc; /* Base color of nav bar */
        overflow: hidden; /* Clears floating elements */
        padding: 10px 20px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1); /* Subtle drop shadow */
    }

        .topnav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 10px 16px;
            text-decoration: none;
            font-size: 15px;
            border-radius: 4px;
            margin-right: 8px;
            transition: background-color 0.3s; /* Smooth hover transition */
        }

            .topnav a:hover {
                background-color: #005fa3; /* Highlight on hover */
            }

            .topnav a.logo {
                font-weight: bold;
                font-size: 18px;
                margin-right: 25px;
                pointer-events: none; /* Logo is not a clickable link */
            }
</style>

<!-- Semantic navigation block for application pages -->
<div class="topnav">
    <!-- Static label for branding -->
    <a class="logo">SecureWebHub</a>

    <!-- Navigation links to various application components -->
    <a href="/Pages/Public.aspx">Home</a>
    <a href="/Pages/Member.aspx">Member</a>
    <a href="/Pages/Staff1.aspx">Staff 1</a>
    <a href="/Pages/Staff2.aspx">Staff 2</a>
    <a href="/Pages/TryIt.aspx">TryIt</a>
    <a href="/Pages/ServiceDirectory.aspx">Service Directory</a>
    <a href="/Pages/PublicApi.aspx">Public API</a>
</div>
