using Newtonsoft.Json.Linq;
using System;
using System.Net.Http;
using System.Web.UI;

namespace SecureAccessPortal.Pages
{
    public partial class PublicApi : System.Web.UI.Page
    {
        /// <summary>
        /// Event handler for the "Get Joke" button click.
        /// This method makes an asynchronous HTTP request to a public joke API,
        /// parses the JSON response, and displays a joke to the user.
        /// </summary>
        protected async void btnGetJoke_Click(object sender, EventArgs e)
        {
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    // Call the external public API to get a random joke in JSON format
                    string response = await client.GetStringAsync("https://official-joke-api.appspot.com/random_joke");

                    // Parse the response into a JObject for extracting fields
                    JObject jokeJson = JObject.Parse(response);

                    // Extract the joke setup and punchline from the JSON
                    string setup = jokeJson["setup"]?.ToString();
                    string punchline = jokeJson["punchline"]?.ToString();

                    // Display the joke on the page
                    lblJoke.Text = $"😂 {setup}<br /><strong>{punchline}</strong>";
                }
                catch (Exception ex)
                {
                    // Display error message if API call or parsing fails
                    lblJoke.Text = "Failed to get joke: " + ex.Message;
                }
            }
        }
    }
}
