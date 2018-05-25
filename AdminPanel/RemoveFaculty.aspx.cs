using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace OnlineVideoPortal.AdminPanel
{
    public partial class RemoveFaculty : System.Web.UI.Page
    {
        public string connection = ConfigurationManager.ConnectionStrings["VideoPortalCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from Faculty where username = '" + TextBox1.Text + "'";
            cmd.Connection = con;
            cmd.CommandType = cmd.CommandType;
            cmd.ExecuteNonQuery();
            Label1.Text = "Faculty Member has been removed";
            TextBox1.Text = "";
            con.Close();
        }
    }
}