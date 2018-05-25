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
    public partial class AddFaculty : System.Web.UI.Page
    {
        public string connection = ConfigurationManager.ConnectionStrings["VideoPortalCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Accept")
            {
                string a;
                a = GridView1.Rows[0].Cells[0].Text.ToString();
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "update Faculty set deleted = 'N' where username = '" + a + "'";
                cmd.Connection = con;
                cmd.CommandType = cmd.CommandType;
                cmd.ExecuteNonQuery();
                GridView1.Rows[0].Visible = false;
                con.Close();
            }
            else
            {
                string a;
                a = GridView1.Rows[0].Cells[0].Text.ToString();
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "delete from Faculty where username = '" + a + "'";
                cmd.Connection = con;
                cmd.CommandType = cmd.CommandType;
                cmd.ExecuteNonQuery();
                GridView1.Rows[0].Visible = false;
                con.Close();
            }
        }
    }
}