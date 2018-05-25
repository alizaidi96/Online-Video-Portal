using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace OnlineVideoPortal.FacultyPanel
{
    public partial class UploadVid : System.Web.UI.Page
    {
        public string connection = ConfigurationManager.ConnectionStrings["VideoPortalCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DropDownList1.DataSource = GetDataFromDB("spGetCourse", null);
                DropDownList1.DataBind();

                ListItem liCourse = new ListItem("Select Course", "-1");
                DropDownList1.Items.Insert(0, liCourse);

                ListItem liSubject = new ListItem("Select Subject", "-1");
                DropDownList2.Items.Insert(0, liSubject);

                DropDownList2.Enabled = false;
            }
        }

        private DataSet GetDataFromDB(string SPName, SqlParameter SPParameter)
        {
            SqlConnection con = new SqlConnection(connection);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if(SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedIndex == 0)
            {
                DropDownList2.SelectedIndex = 0;
                DropDownList2.Enabled = false;

            }
            else
            {
                DropDownList2.Enabled = true;
                SqlParameter param = new SqlParameter("@courseid", DropDownList1.SelectedValue);
                DataSet ds = GetDataFromDB("spGetSubjectbyCourseID", param);
                DropDownList2.DataSource = ds;
                DropDownList2.DataBind();
                ListItem liSubject = new ListItem("Select Subject", "-1");
                DropDownList2.Items.Insert(0, liSubject);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            int sub = Int32.Parse(DropDownList2.SelectedValue);
            FileUpload1.SaveAs(Server.MapPath("~/Videos/") + Path.GetFileName(FileUpload1.FileName));
            string link = "/Videos/" + Path.GetFileName(FileUpload1.FileName);
            link = "<video width=400 controls><source src=" + link + "type=video/mp4></video>";
            string query = "insert into Video values('" + TextBox1.Text + "','" + link + "','" + sub + "','" + "N" + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Video has been uploaded successfully.";
            TextBox1.Text = "";
        }
    }
}