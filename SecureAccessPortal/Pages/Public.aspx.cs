using System;
using System.Data;

namespace SecureAccessPortal.Pages
{
    public partial class Public : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure this block runs only on first page load, not on postbacks (e.g., button clicks)
            if (!IsPostBack)
            {
                // Create a temporary in-memory table to hold component metadata
                DataTable dt = new DataTable();
                dt.Columns.Add("Developer");
                dt.Columns.Add("Type");
                dt.Columns.Add("Operation");
                dt.Columns.Add("Params");
                dt.Columns.Add("ReturnType");
                dt.Columns.Add("Description");

                // Populate the table with details about implemented components and services
                // Landing Page
                dt.Rows.Add("Arslan Ahmed", "ASPX Page", "Public.aspx", "-", "HTML", "Landing page with intro and component summary");

                // Navigation bar
                dt.Rows.Add("Arslan Ahmed", "User Control (.ascx)", "TopNav.ascx", "-", "-", "Navigation bar used across all pages");

                // Member Registration
                dt.Rows.Add("Arslan Ahmed", "ASPX Page", "Member.aspx", "username, password", "bool (XML write)", "Registers new users and stores credentials in Members.xml");

                // Staff Login
                dt.Rows.Add("Arslan Ahmed", "ASPX Page", "StaffLogin.aspx", "username, password", "bool (redirect)", "Authenticates staff users from Staff.xml");

                // Hashing DLL
                dt.Rows.Add("Arslan Ahmed", "DLL (Class Library)", "ComputeHash()", "string input", "Base64 string", "Hashes input using SHA-256 in SecurityLibrary.dll");

                // WCF Service          
                dt.Rows.Add("Arslan Ahmed", "WCF Service (SVC)", "ReverseText()", "string input", "string", "Reverses input text via MyService.svc");
                   
                // TryIt Page
                dt.Rows.Add("Arslan Ahmed", "ASPX Page", "TryIt.aspx", "user input", "string", "Tests DLL and WCF Service functionality");

                // XML File
                dt.Rows.Add("Arslan Ahmed", "XML File", "Members.xml / Staff.xml", "username, hashed password, role", "XML storage", "Stores login credentials securely");

                // Session
                dt.Rows.Add("Arslan Ahmed", "Session", "Session[\"StaffRole\"]", "string", "string", "Used to control access to Staff1/Staff2.aspx");

                // Global.asax  
                dt.Rows.Add("Arslan Ahmed", "Global.asax", "Application_Start", "-", "-", "Handles app-level configuration if needed");

                // Service Directory Page
                dt.Rows.Add("Arslan Ahmed", "ASPX Page", "ServiceDirectory.aspx", "-", "-", "Provides links and test points for WCF and public API");

                // Public API
                dt.Rows.Add("Arslan Ahmed", "ASPX Page", "PublicApi.aspx", "N/A", "JSON", "Tests or displays data from external/public API");

                // Bind the populated DataTable to the GridView on the .aspx page
                gvComponents.DataSource = dt;
                gvComponents.DataBind();
            }
        }
    }
}
