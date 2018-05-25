<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="FacultyLogin.aspx.cs" Inherits="OnlineVideoPortal.FacultyLogin" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 style="color: #FF3300">Faculty Login</h2>
    <br />

    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Username: </td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Password:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="150px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="20px" Text="Login" Width="80px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#33CC33"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">New registered? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FacultyRegister.aspx">SignUp</asp:HyperLink>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #FF9933;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 497px;
        }
    </style>
</asp:Content>