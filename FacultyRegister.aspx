<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="FacultyRegister.aspx.cs" Inherits="OnlineVideoPortal.FacultyRegister" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 style="color:orangered">Faculty Registration</h2>
    <br />

    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Username:</td>
            <td class="auto-style4">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style4">&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Name:</td>
            <td class="auto-style4">&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Department:</td>
            <td class="auto-style4">&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
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
            width: 463px;
        }
        .auto-style3 {
            width: 463px;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>

