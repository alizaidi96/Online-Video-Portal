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

namespace OnlineVideoPortal
{
    public partial class StudentHome : System.Web.UI.Page
    {
        public string connection = ConfigurationManager.ConnectionStrings["VideoPortalCS"].ConnectionString;
        string str1;
        string str2;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sapid"] == null)
            {
                Response.Redirect("StudentLogin.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                str1 = "select * from Student where sapid='" + Session["sapid"] + "' and deleted='N'";
                com = new SqlCommand(str1, con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);
                First.Text = ds.Tables[0].Rows[0]["first"].ToString();
                Last.Text = ds.Tables[0].Rows[0]["last"].ToString();
                Branch.Text = ds.Tables[0].Rows[0]["branch"].ToString();
                Sem.Text = ds.Tables[0].Rows[0]["semester"].ToString();
                str2 = Branch.Text;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string url = "~/Courses/", str3 = "", str4 = "", finalurl;
            if(str2.Equals("Banking, Financial Services and Insurance")) { str3 = "Bfsii"; str4 = "BfsiVid.aspx"; }
            if(str2.Equals("Big Data")) { str3 = "BigDataa"; str4 = "BigDataVid.aspx"; }
            if(str2.Equals("Business Analytics and Optimization")) { str3 = "Baoo"; str4 = "BaoVid.aspx"; }
            if(str2.Equals("Cloud Computing and Virtualization Technology")) { str3 = "Ccvtt"; str4 = "CcvtVid.aspx"; }
            if(str2.Equals("Cyber Security and Forensics")) { str3 = "Csff"; str4 = "CsfVid.aspx"; }
            if(str2.Equals("E-Commerce and Retail Automation")) { str3 = "Ecraa"; str4 = "EcraVid.aspx"; }
            if(str2.Equals("Gaming and Graphics")) { str3 = "Gamingg"; str4 = "GamingVid.aspx"; }
            if(str2.Equals("IT Infrastructure")) { str3 = "Itinfraa"; str4 = "ItinfraVid.aspx"; }
            if(str2.Equals("Mainframe Technology")) { str3 = "Mainframee"; str4 = "MainframeVid.aspx"; }
            if(str2.Equals("Oil and Gas Informatics")) { str3 = "Ogii"; str4 = "OgiVid.aspx"; }
            if(str2.Equals("Open Source and Open Standards")) { str3 = "Osss"; str4 = "OssVid.aspx"; }
            finalurl = url + str3 + "/" + str4;
            Response.Redirect(finalurl);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }
        protected void LinkButton3_Click(object sender,EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/StudentLogin.aspx");
        }
    }
}