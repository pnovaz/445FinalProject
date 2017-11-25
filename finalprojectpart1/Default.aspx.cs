using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace finalprojectpart1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieId"];
            if (myCookies != null)
            {

                welcomeMessage.Text = "Welcome back, " + myCookies["username"] + "!";

            }
            else
            {
                welcomeMessage.Text = "Welcome back, new user!"; //no user info saved so assume new user
            }
        }
    }
}