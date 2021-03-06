﻿using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.IO;
using System.Web;
using System.Web.UI;
using finalprojectpart1;
using Hashing;
using System.Net;


namespace finalProject1.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //retrieve saved user information if it exists

            HttpCookie myCookies = Request.Cookies["myCookieId"];

            if (myCookies != null)
            {

                hello.Text = "Welcome Back, " + myCookies["username"] + "!";

            }
            else
            {
                hello.Text = "Welcome, new user!"; //no user info saved so assume new user
            }

        }
        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //cookie code

                HttpCookie myCookies = new HttpCookie("myCookieId");

                myCookies["username"] = UserName.Text;

                myCookies["Password"] = Password.Text;

                myCookies.Expires = DateTime.Now.AddMonths(6);

                Response.Cookies.Add(myCookies);

                DataSet ds = new DataSet();

                String command = "UserName='" + UserName.Text + "'";

                FileStream fs = new FileStream(Server.MapPath("../App_Data/Member.xml"),
                                  FileMode.Open, FileAccess.Read);
                StreamReader reader = new StreamReader(fs);

                ds.ReadXml(reader);

                fs.Close();

                DataTable users = ds.Tables[0];

                DataRow[] matches = users.Select(command);

                if (matches != null && matches.Length > 0)
                {
                    DataRow row = matches[0];

                    hashing hashCompute = new hashing();

                    string hashedPassword = hashCompute.hash(Password.Text);

                    String pass = (String)row["Password"];

                    if (0 != String.Compare(pass, hashedPassword, false))
                    {

                        //either username or password is incorrect
                        FailureText.Text = "Invalid username or password.";

                        ErrorMessage.Visible = true;
                    }
                    else
                    {
						//increment the visitor counter
						Global.increment();

                        FormsAuthentication.RedirectFromLoginPage
                            (UserName.Text, RememberMe.Checked);
                        Response.Redirect("~/MemberPage.aspx");
                    }
                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }
    }
}