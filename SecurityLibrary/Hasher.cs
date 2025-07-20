using System;
using System.Security.Cryptography;
using System.Text;

namespace SecurityLibrary
{
    /// <summary>
    /// Hasher class provides SHA-256 hashing functionality.
    /// Used to securely hash sensitive data such as passwords.
    /// </summary>
    public class Hasher
    {
        /// <summary>
        /// Computes a SHA-256 hash of the given input string and returns it as a Base64-encoded string.
        /// </summary>
        /// <param name="input">Plain text to hash</param>
        /// <returns>Base64-encoded SHA-256 hash</returns>
        public string ComputeHash(string input)
        {
            // Create an instance of SHA256
            using (SHA256 sha256 = SHA256.Create())
            {
                // Convert input string to byte array
                byte[] bytes = Encoding.UTF8.GetBytes(input);

                // Compute the hash
                byte[] hash = sha256.ComputeHash(bytes);

                // Convert hash bytes to Base64 string and return
                return Convert.ToBase64String(hash);
            }
        }
    }
}
