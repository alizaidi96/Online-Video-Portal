<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineVideoPortal.Home" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style = "border-width: 10px; border-color: purple; margin: 0px 50px 20px 50px; padding: 0px 50px 20px 50px;">
        <br />
	<h1><strong>School of Computer Science</strong></h1>
        <h2>Online Video Portal</h2>
        <br />
        <div>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/I0ovcLRx_LM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
        <br />
		<ul>
		    <li>Worried that you missed a lot of classes and are lagging behind? Don't worry. We present you here an atempt to gather all of your important lectures in one website so you don't have to keep making sense out of your borrowed notes.
			</li>
			<br />
			<br />
		</ul>
        <table class="auto-style1" style="border: thin solid #FF9933; border-collapse: collapse;">
            <tr>
                <td style="height:50px" class="auto-style3"><strong style="font-size: large"><a href="/Courses/Bfsii/Bfsi.aspx" style="text-decoration:none; color:#33CC33">BANKING, FINANCIAL SERVICES &amp; INSURANCE</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/BigDataa/BigData.aspx" style="text-decoration:none; color:#33CC33">BIG DATA</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Baoo/Bao.aspx" style="text-decoration:none; color:#33CC33">BUSINESS ANALYTICS &amp; OPTIMIZATION</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Ccvtt/Ccvt.aspx" style="text-decoration:none; color:#33CC33">CLOUD COMPUTING &amp; VIRTUALIZATION TECHNOLOGY</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Csff/Csf.aspx" style="text-decoration:none; color:#33CC33">CYBER SECURITY &amp; FORENSICS</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Ecraa/Ecra.aspx" style="text-decoration:none; color:#33CC33">E-COMMERCE, RETAIL &amp; AUTOMATION</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Gamingg/Gaming.aspx" style="text-decoration:none; color:#33CC33">GRAPHICS &amp; GAMING</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Itinfraa/Itinfra.aspx" style="text-decoration:none; color:#33CC33">IT INFRASTRUCTURE</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Mainframee/Mainframe.aspx" style="text-decoration:none; color:#33CC33">MAINFRAME TECHNOLOGY</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Ogii/Ogi.aspx" style="text-decoration:none; color:#33CC33">OIL &amp; GAS INFORMATICS</a></strong></td>
            </tr>
            <tr>
                <td style="height:50px" class="auto-style3"><strong><a href="/Courses/Osss/Oss.aspx" style="text-decoration:none; color:#33CC33">OPEN SOURCE AND OPEN STANDARDS</a></strong></td>
            </tr>
        </table>
        <br />
        <p>
            <a href="StudentLogin.aspx">Student Login</a>&nbsp;&nbsp;&nbsp;
            <a href="FacultyLogin.aspx">Faculty Login</a>&nbsp;&nbsp;&nbsp;
            <a href="AdminLogin.aspx">Admin Login</a>
        </p>
	</div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #FF9933;
        }
        .auto-style3 {
            font-size: large;
            color: #33CC33;
        }
    </style>
</asp:Content>

