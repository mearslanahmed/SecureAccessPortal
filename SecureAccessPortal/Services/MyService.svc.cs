namespace SecureAccessPortal.Services

{
    // This service implements the IMyService interface defined in IMyService.cs
    // It exposes a simple method to reverse a string input.

    public class MyService : IMyService
    {
        // Reverses the input string and returns the reversed result.
        // Returns an empty string if the input is null or empty.
        public string ReverseText(string input)
        {
            if (string.IsNullOrEmpty(input)) return "";

            char[] chars = input.ToCharArray();       // Convert string to character array
            System.Array.Reverse(chars);              // Reverse the array in-place
            return new string(chars);                 // Construct a new string from reversed array
        }
    }
}
