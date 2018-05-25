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

namespace OnlineVideoPortal.FacultyPanel
{
    public partial class FacultyHome : System.Web.UI.Page
    {
        public string connection = ConfigurationManager.ConnectionStrings["VideoPortalCS"].ConnectionString;
        SqlCommand com;
        String str;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("/FacultyLogin.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                str = "select * from Faculty where username='" + Session["username"] + "' and deleted='N'";
                com = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Name.Text = ds.Tables[0].Rows[0]["name"].ToString();
                User.Text = Session["username"].ToString();
                Dep.Text = ds.Tables[0].Rows[0]["department"].ToString();
            }

        }
    }
}