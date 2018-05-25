using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineVideoPortal
{
    public partial class FacultyRegister : System.Web.UI.Page
    {
        public string connection = ConfigurationManager.ConnectionStrings["VideoPortalCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {
                Label1.Text = "Please fill all fields";
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(connection);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "insert into Faculty values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + "Y" + "')";
                    cmd.Connection = con;
                    cmd.CommandType = cmd.CommandType;
                    cmd.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    Label1.Text = "Details have been sent to the Admin for verification. You will be notified soon.";
                    con.Close();
                }
                catch (Exception ee)
                {
                    Label1.Text = ee.Message;
                }
            }

        }
    }
}