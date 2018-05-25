<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="FacultyHome.aspx.cs" Inherits="OnlineVideoPortal.FacultyPanel.FacultyHome" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h4 style="color:orangered">
        Welcome,&nbsp
        <asp:Label ID="Name" runat="server"></asp:Label>
    </h4>

    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">Username:
                <asp:Label ID="User" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">Department:
                <asp:Label ID="Dep" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"><strong style="font-size: large">
                <a href="/FacultyPanel/UploadVid.aspx" style="text-decoration:none; color:#33CC33">Upload New Video</a></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2"><strong style="font-size: large">
                <a href="/FacultyPanel/UploadNote.aspx" style="text-decoration:none; color:#33CC33">Upload New Notes</a></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #FF9900;
        }
        .auto-style2 {
            height: 21px;
        }
    </style>
</asp:Content>