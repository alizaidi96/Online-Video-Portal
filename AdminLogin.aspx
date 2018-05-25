<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineVideoPortal.AdminLogin" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3 style="color:orangered">Administrator Login</h3>
    <br />

    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Admin ID:</td>
            <td class="auto-style4">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Admin Password:</td>
            <td class="auto-style4">&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="20px" TextMode="Password" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="60px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #FF9933;
        }
        .auto-style2 {
            text-align: right;
            width: 489px;
        }
        .auto-style3 {
            width: 489px;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>

