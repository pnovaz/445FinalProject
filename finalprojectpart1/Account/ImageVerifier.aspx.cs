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

                    String captchaString = service.GetVerifierString("5"); //get the captcha string with length 5

                    Session["captcha"] = captchaString;

                    verifyImage.ImageUrl = "http://neptune.fulton.ad.asu.edu/WSRepository/Services/ImageVerifier/Service.svc/GetImage/" + captchaString; //add captcha to image 

                }

                catch { }



            }
        }

        protected void verificationButton_Click(object sender, EventArgs e)
        {
            try

            {

                String cap = "";

                String captcha = enteredCaptcha.Text; //text that the user entered

                if (Session["captcha"] != null)

                {

                    cap = Session["captcha"].ToString();

                }



                if (cap.Equals(captcha))

                {

                    Response.Redirect("~/Account/Register.aspx"); //if they entered the correct captcha information then send them to registration page

                }

                else

                {

                    ImageVerifierService.ServiceClient verifyService = new ImageVerifierService.ServiceClient();

                    String captchaService = verifyService.GetVerifierString("5");

                    Session["captcha"] = captchaService;

                    verifyImage.ImageUrl = "http://neptune.fulton.ad.asu.edu/WSRepository/Services/ImageVerifier/Service.svc/GetImage/" + captchaService;

                    verificationError.Text = "Wrong Information"; //user entered wrong captcha

                }

            }

            catch { }
        }

        // Generate new code image
        protected void refreshVerificationImage()
        {
            ImageVerifierService.ServiceClient verify = new ImageVerifierService.ServiceClient();

            String verifyString = verify.GetVerifierString("5"); //get a new image if user gets captcha wrong
            Session["verificationString"] = verifyString;

            verifyImage.ImageUrl = "http://neptune.fulton.ad.asu.edu/WSRepository/Services/ImageVerifierSVC/Service.svc/GetImage/" + verifyString;
        }
    }

}