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
    public partial class StudentRegister : System.Web.UI.Page
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
                con.Open();
                SqlCommand cmd = new SqlCommand();
                string branch = DropDownList1.SelectedValue;
                cmd.CommandText = "insert into Student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + branch + "','" + TextBox5.Text + "','" + "N" + "','" + TextBox6.Text + "')";
                cmd.Connection = con;
                cmd.CommandType = cmd.CommandType;
                cmd.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                Label1.Text = "Student Registration Successful. You will be redirected to the login page.";
                System.Threading.Thread.Sleep(3000);
                Response.Redirect("StudentLogin.aspx");
            }
            catch (Exception)
            {
                Label1.Text = "This record alredy exists!";
            }
            finally
            {
                con.Close();
            }

        }
    }
}