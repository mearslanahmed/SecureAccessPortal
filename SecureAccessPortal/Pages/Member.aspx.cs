using SecurityLibrary; // Reference to custom class library for hashing
using System;
using System.IO;
using System.Xml;

namespace SecureAccessPortal.Pages
{
    public partial class Member : System.Web.UI.Page
    {
        // Handles the Register button click event
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string expectedCaptcha = "1738"; // Static captcha value (optional visual validation)
            string userCaptcha = txtCaptcha.Text.Trim();

            // Validate captcha input
            if (userCaptcha != expectedCaptcha)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Incorrect verification code. Please try again.";
                return;
            }

            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Ensure both username and password are provided
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Please enter both username and password.";
                return;
            }

            // Define the XML file path to store user credentials
            string filePath = Server.MapPath("~/App_Data/Members.xml");
            XmlDocument doc = new XmlDocument();

            // Load or initialize XML structure
            if (File.Exists(filePath))
            {
                doc.Load(filePath);
            }
            else
            {
                // Create a new XML file if it doesn't exist
                XmlDeclaration xmlDeclaration = doc.CreateXmlDeclaration("1.0", "UTF-8", null);
                XmlElement root = doc.CreateElement("Users");
                doc.AppendChild(xmlDeclaration);
                doc.AppendChild(root);
            }

            // Check if the username already exists in the XML
            XmlNode existingUser = doc.SelectSingleNode($"/Users/User[Username='{username}']");
            if (existingUser != null)
            {
                lblMessage.Text = "Username already exists.";
                return;
            }

            // Hash the password using the external Hasher class (from DLL)
            Hasher hasher = new Hasher();
            string hashedPassword = hasher.ComputeHash(password);

            // Create and append new user node to XML
            XmlElement newUser = doc.CreateElement("User");

            XmlElement userElement = doc.CreateElement("Username");
            userElement.InnerText = username;

            XmlElement passElement = doc.CreateElement("Password");
            passElement.InnerText = hashedPassword;

            newUser.AppendChild(userElement);
            newUser.AppendChild(passElement);

            doc.DocumentElement.AppendChild(newUser);
            doc.Save(filePath); // Save updated XML

            // Show success message and clear form
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Registration successful!";
            txtUsername.Text = "";
            txtPassword.Text = "";
        }
    }
}
