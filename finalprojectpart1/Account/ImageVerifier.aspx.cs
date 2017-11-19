using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Web.Security;
using finalprojectpart1;
using System.Data.SqlClient;
using Hashing;
using System.IO;


namespace finalprojectpart1.Account
{
    public partial class ImageVerifier : System.Web.UI.Page
    {
       
        
            string verificationString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)

            {

                try

                {

                    ImageVerifierService.ServiceClient service = new ImageVerifierService.ServiceClient();

                    String captcha = service.GetVerifierString("5"); //get the captcha

                    Session["captcha"] = captcha;

                    verifyImage.ImageUrl = "http://neptune.fulton.ad.asu.edu/WSRepository/Services/ImageVerifier/Service.svc/GetImage/" + captcha;

                }

                catch { }



            }
        }

        protected void verificationButton_Click(object sender, EventArgs e)
        {
            try

            {

                String SessionCaptcha = "";

                String captcha = enteredCaptcha.Text; //text that the user entered

                if (Session["captcha"] != null)

                {

                    SessionCaptcha = Session["captcha"].ToString();

                }



                if (SessionCaptcha.Equals(captcha))

                {

                    Response.Redirect("~/Account/Register.aspx"); //if they entered the correct information then send them to registration page

                }

                else

                {

                    ImageVerifierService.ServiceClient verifyService = new ImageVerifierService.ServiceClient();

                    String captchaService = verifyService.GetVerifierString("5");

                    Session["captcha"] = captchaService;

                    verifyImage.ImageUrl = "http://neptune.fulton.ad.asu.edu/WSRepository/Services/ImageVerifier/Service.svc/GetImage/" + captchaService;

                    verificationError.Text = "Wrong Information";

                }

            }

            catch { }
        }

        // Generate new code image
        protected void refreshVerificationImage()
        {
            ImageVerifierService.ServiceClient verify = new ImageVerifierService.ServiceClient();

            String verifyString = verify.GetVerifierString("5");
            Session["verificationString"] = verifyString;

            verifyImage.ImageUrl = "http://neptune.fulton.ad.asu.edu/WSRepository/Services/ImageVerifierSVC/Service.svc/GetImage/" + verifyString;
        }
    }

}