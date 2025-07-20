using System;

namespace SecureAccessPortal.Pages
{
    public partial class Staff1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the session variable "StaffRole" exists and is "Admin"
            // Only users with "Admin" role are authorized to access this page
            if (Session["StaffRole"] == null || Session["StaffRole"].ToString() != "Admin")
            {
                // Redirect unauthorized users to the StaffLogin page
                Response.Redirect("StaffLogin.aspx");
            }
            else
            {
                // Display a personalized welcome message for the authorized Admin user
                lblWelcome.Text = $"Welcome <strong>{Session["StaffUsername"]}</strong>, you are logged in as <em>Admin</em>.";
            }
        }
    }
}