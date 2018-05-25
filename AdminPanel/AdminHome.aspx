<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="OnlineVideoPortal.AdminPanel.AdminHome" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3 style="color:orangered">Welcome Administrator</h3>
    <br />
    <div style = "border-width: 10px; border-color: purple; margin: 0px 50px 20px 50px; padding: 0px 50px 20px 50px;">
        <p>You are logged in as: 
            <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
        </p>
        <br />

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong style="font-size: large">
                <a href="/AdminPanel/AddFaculty.aspx" style="text-decoration:none; color:#33CC33">New Faculty Requests</a></strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong style="font-size: large">
                <a href="/AdminPanel/RemoveFaculty.aspx" style="text-decoration:none; color:#33CC33">Delete a Faculty Member</a></strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong style="font-size: large">
                <a href="/AdminPanel/RemoveVideo.aspx" style="text-decoration:none; color:#33CC33">Delete a Video</a></strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
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
    </style>
</asp:Content>

