using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineVideoPortal
{
    public partial class FacultyLogin : System.Web.UI.Page
    {
        public string connection = ConfigurationManager.ConnectionStrings["VideoPortalCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            try
            {
                string user, pass;
                user = TextBox1.Text;
                pass = TextBox2.Text;
                con.Open();
                SqlDataReader rdr;
                SqlCommand cmd = new SqlCommand("select name from Faculty where username='" + user + "' and password='" + pass + "' and deleted='N'");
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                rdr = cmd.ExecuteReader();
                TextBox1.Text = "";
                TextBox2.Text = "";
                Session["username"] = user;
                if (rdr.HasRows)
                {
                    if (rdr.Read())
                    {
                        Label ll = new Label();
                        ll.Text = rdr[0].ToString();
                        Session["name"] = ll.Text;
                        Response.Redirect("/FacultyPanel/FacultyHome.aspx");
                    }
                }
                else
                {
                    Label1.Text = "Wrong Details entered.";
                }

            }
            catch (SqlException ee)
            {
                Label1.Text = ee.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}