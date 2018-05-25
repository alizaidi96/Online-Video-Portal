<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="RemoveFaculty.aspx.cs" Inherits="OnlineVideoPortal.AdminPanel.RemoveFaculty" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3 style="color:orangered">Remove Faculty</h3>
    <br />
    <div style = "border-width: 10px; border-color: purple; margin: 0px 50px 20px 50px; padding: 0px 50px 20px 50px;">

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Faculty Username:</td>
                <td class="auto-style4">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="165px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
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

    </div>
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
            width: 375px;
        }
        .auto-style3 {
            width: 375px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            width: 375px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
    </style>
</asp:Content>

