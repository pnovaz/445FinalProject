using Microsoft.AspNet;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.IO;
using System.Linq;
using System.Web.UI;
using finalprojectpart1;
using Hashing;
using System.Net;


namespace finalprojectpart1.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {

            DataSet ds = new DataSet();

            String userFile = "../App_Data/Member.xml";

            FileStream fs = new FileStream(Server.MapPath(userFile),
                FileMode.Open, FileAccess.Read);
            StreamReader reader = new StreamReader(fs);

            ds.ReadXml(reader);

            fs.Close(); //close after reading

            hashing hashCompute = new hashing();

            string hashedPassword = hashCompute.hash(Password.Text);

            DataRow newUser = ds.Tables[0].NewRow(); //add new user informate to the xml file

            newUser["UserName"] = UserName.Text;

            newUser["Password"] = hashedPassword;

       

            ds.Tables[0].Rows.Add(newUser);

            ds.AcceptChanges();

            fs = new FileStream(Server.MapPath(userFile), FileMode.Create,
                                FileAccess.Write | FileAccess.Read);
            StreamWriter writer = new StreamWriter(fs);

            ds.WriteXml(writer);

            writer.Close();

            fs.Close();

            if (!String.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                Response.Redirect(Request.QueryString["ReturnUrl"]);
            else
                Response.Redirect("~/Account/Login.aspx");




        }

    }

}