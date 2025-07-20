using SecurityLibrary;
using System;
using System.IO;
using System.Xml;

namespace SecureAccessPortal.Pages
{
    public partial class StaffLogin : System.Web.UI.Page
    {
        // Optional: Uncomment the following method to generate hashed passwords for testing.
        // This is useful if you're manually creating XML entries for staff.
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        Hasher hasher = new Hasher();
        //        string hashedAdmin = hasher.ComputeHash("admin123");
        //        string hashedManager = hasher.ComputeHash("manager123");

        //        Response.Write("Admin Hashed: " + hashedAdmin + "<br/>");
        //        Response.Write("Manager Hashed: " + hashedManager);
        //    }
        //}

        // Triggered when user clicks the "Login" button
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Basic input validation
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Please enter username and password.";
                lblMessage.CssClass = "error";
                return;
            }

            // Hash the entered password to compare with stored value
            Hasher hasher = new Hasher();
            string hashedPassword = hasher.ComputeHash(password);

            string filePath = Server.MapPath("~/App_Data/Staff.xml");

            // Proceed only if the XML file exists
            if (File.Exists(filePath))
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(filePath);

                // Look for a matching user by username and hashed password
                XmlNode userNode = doc.SelectSingleNode($"/StaffUsers/User[Username='{username}' and Password='{hashedPassword}']");

                if (userNode != null)
                {
                    // Get the user's role from the XML
                    string role = userNode["Role"].InnerText;

                    // Store user info in session
                    Session["StaffUsername"] = username;
                    Session["StaffRole"] = role;

                    // Redirect based on role
                    if (role == "Admin")
                        Response.Redirect("Staff1.aspx");
                    else if (role == "Manager")
                        Response.Redirect("Staff2.aspx");
                    else
                        lblMessage.Text = "Unknown role.";
                }
                else
                {
                    // No match found
                    lblMessage.Text = "Invalid credentials.";
                    lblMessage.CssClass = "error";
                }
            }
            else
            {
                // XML file missing
                lblMessage.Text = "Staff.xml not found.";
                lblMessage.CssClass = "error";
            }
        }
    }
}
