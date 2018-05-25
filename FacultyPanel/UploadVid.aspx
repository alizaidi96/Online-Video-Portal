<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="UploadVid.aspx.cs" Inherits="OnlineVideoPortal.FacultyPanel.UploadVid" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3 style="color:orangered">Upload New Video</h3>
    <br />
    <div style = "border-width: 10px; border-color: purple; margin: 0px 50px 20px 50px; padding: 0px 50px 20px 50px;">

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Select Course:</td>
                <td class="auto-style6">&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="245px" AutoPostBack="true" DataTextField="coursename" DataValueField="courseid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Select Subject:</td>
                <td class="auto-style4">&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="245px" DataTextField="subjectname" DataValueField="subjectid">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Video Name:</td>
                <td class="auto-style4">&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Video Source (only mp4 videos):</td>
                <td class="auto-style4">&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="330px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Upload Video" OnClick="Button1_Click" />
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

    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #FF6600;
        }
        .auto-style2 {
            text-align: right;
            width: 350px;
        }
        .auto-style3 {
            width: 350px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: right;
            width: 350px;
            height: 28px;
        }
        .auto-style6 {
            text-align: left;
            height: 28px;
        }
    </style>
</asp:Content>

