using System.ServiceModel;

namespace SecureAccessPortal.Services
{
    // Defines a WCF service contract for reversing text.
    // Any class implementing this interface must define the ReverseText operation.

    [ServiceContract]
    public interface IMyService
    {
        // OperationContract marks this method as a WCF service operation
        // It accepts a string input and returns its reversed form.
        [OperationContract]
        string ReverseText(string input);
    }
}
