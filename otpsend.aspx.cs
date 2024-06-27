using System;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

namespace otp
{
    public partial class otpsend : System.Web.UI.Page
    {
        private const string AccountSid = "accountsid";
        private const string AuthToken = "token";
        private const string FromPhoneNumber = "num";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSendOtp_Click(object sender, EventArgs e)
        {
            string phone = phoneNumber.Text;
            Random random = new Random();
            string otp = random.Next(10000, 99999).ToString();
            SendOtp(phone, otp);
            Session["otp"] = otp;
        }

        private void SendOtp(string toPhoneNumber, string otp)
        {
            try
            {
                TwilioClient.Init(AccountSid, AuthToken);

                var message = MessageResource.Create(
                    body: $"Your OTP is: {otp}",
                    from: new PhoneNumber(FromPhoneNumber),
                    to: new PhoneNumber(toPhoneNumber)
                );

                lblResult.Text = "OTP sent successfully";
            }
            catch (Exception ex)
            {
                lblResult.Text = "Error sending OTP: " + ex.Message;
            }
        }

        protected void btnVerifyOtp_Click(object sender, EventArgs e)
        {
            string enteredOtp = otp.Text;
            string sentOtp = Session["otp"]?.ToString();

            if (enteredOtp == sentOtp)
            {
                lblResult.Text = "OTP verified successfully";
            }
            else
            {
                lblResult.Text = "Invalid OTP";
            }
        }
    }
}
