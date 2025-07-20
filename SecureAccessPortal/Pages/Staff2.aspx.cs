using System;

namespace SecureAccessPortal.Pages
{
    public partial class Staff2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Restrict access to only users with the 'Manager' role
            if (Session["StaffRole"] == null || Session["StaffRole"].ToString() != "Manager")
            {
                Response.Redirect("StaffLogin.aspx"); // Redirect unauthorized users to login
            }

            else
            {
                // Display a welcome message for the logged-in Manager
                lblWelcome.Text = $"Welcome <strong>{Session["StaffUsername"]}</strong>, you are logged in as <em>Manager</em>.";
            }
        }
    }
}