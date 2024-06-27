<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="otpsend.aspx.cs" Inherits="otp.otpsend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OTP SMS MESSAGE</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
        <div class="p-6 max-w-sm mx-auto bg-white rounded-xl shadow-md space-y-4" style="margin-top:90px;">
            <div>
                <label for="phoneNumber" class="block text-sm font-medium text-gray-700">Phone Number:</label>
                <asp:TextBox ID="phoneNumber" runat="server" CssClass="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
            </div>

            <div>
                <asp:Button ID="btnSendOtp" runat="server" Text="Send OTP" OnClick="btnSendOtp_Click" CssClass="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" />
            </div>

            <div>
                <label for="otp" class="block text-sm font-medium text-gray-700">Enter OTP:</label>
                <asp:TextBox ID="otp" runat="server" CssClass="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
            </div>

            <div>
                <asp:Button ID="btnVerifyOtp" runat="server" Text="Verify OTP" OnClick="btnVerifyOtp_Click" CssClass="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" />
            </div>

            <div>
                <asp:Label ID="lblResult" runat="server" CssClass="block text-sm font-medium text-gray-700 mt-4" Text="" CssStyle="color:red;text-align:center;" />
            </div>
        </div>
        
    

    </form>
</body>
</html>
