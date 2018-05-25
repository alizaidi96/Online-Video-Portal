<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="OnlineVideoPortal.StudentHome" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h4 style="color:orangered" class="auto-style3">
        Welcome,&nbsp
        <asp:Label ID="First" runat="server"></asp:Label>&nbsp
        <asp:Label ID="Last" runat="server"></asp:Label>
    </h4>

    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">Branch:
                <asp:Label ID="Branch" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">Semester:
                <asp:Label ID="Sem" runat="server"></asp:Label>
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
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="false" ForeColor="#33CC33" OnClick="LinkButton1_Click">Watch Video Lectures</asp:LinkButton></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2"><strong style="font-size: large">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="false" ForeColor="#33CC33" OnClick="LinkButton2_Click">Class Notes</asp:LinkButton></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"><strong style="font-size: large">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="false" ForeColor="#33CC33" OnClick="LinkButton3_Click">Previous Year Question Papers</asp:LinkButton></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="Logout" />
            </td>
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
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>

