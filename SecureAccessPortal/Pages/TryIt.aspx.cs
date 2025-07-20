using SecureAccessPortal.MyServiceRef;
using SecurityLibrary;
using System;

namespace SecureAccessPortal.Pages
{
    public partial class TryIt : System.Web.UI.Page
    {
        // Handles the local SHA-256 hashing when the "Hash" button is clicked
        protected void btnHash_Click(object sender, EventArgs e)
        {
            string input = txtInput.Text.Trim();

            // Validate input
            if (!string.IsNullOrEmpty(input))
            {
                // Use the local DLL Hasher to hash the input
                Hasher hasher = new Hasher();
                string result = hasher.ComputeHash(input);

                // Display hashed result on the page
                lblResult.Text = $"Hashed (SHA-256): {result}";
            }
            else
            {
                lblResult.Text = "Please enter some text to hash.";
            }
        }

        // Handles the WCF web service call to reverse text
        protected void btnReverse_Click(object sender, EventArgs e)
        {
            string input = txtServiceInput.Text.Trim();

            // Validate input
            if (!string.IsNullOrEmpty(input))
            {
                try
                {
                    // Call the WCF service method via generated client proxy
                    MyServiceClient client = new MyServiceClient();
                    string reversed = client.ReverseText(input);

                    // Display reversed result
                    lblServiceResult.Text = $"Reversed: {reversed}";

                    // Close the client connection
                    client.Close();
                }
                catch (Exception ex)
                {
                    // Display error message if service call fails
                    lblServiceResult.Text = "Error calling WCF service: " + ex.Message;
                }
            }
            else
            {
                lblServiceResult.Text = "Please enter some text to reverse.";
            }
        }
    }
}
