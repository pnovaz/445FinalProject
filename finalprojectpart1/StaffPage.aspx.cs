using Hashing;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalprojectpart1
{
    public partial class StaffPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected void Button1_Click(object sender, EventArgs e)
		{
			string pass = TextBox2.Text;
			string user = TextBox1.Text;
			string url = Server.MapPath("App_Data/Staff.xml");
			DataSet set = new DataSet();

			FileStream file = new FileStream(url, FileMode.Open, FileAccess.Read);
			StreamReader reader = new StreamReader(file);
			set.ReadXml(reader);

			DataRow staff = set.Tables[0].NewRow();
			staff["UserName"] = user;
			staff["Password"] = pass;
			set.Tables[0].Rows.Add(staff);
			set.AcceptChanges();

			file.Close();
			file = new FileStream(url, FileMode.Create, FileAccess.Write | FileAccess.Read);
			StreamWriter writer = new StreamWriter(file);
			set.WriteXml(writer);
			writer.Close();
			file.Close();


			Label1.Text = "Success!";
		}
	}
}