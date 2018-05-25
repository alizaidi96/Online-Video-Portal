<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="BigDataVid.aspx.cs" Inherits="OnlineVideoPortal.Courses.BigDataa.BigDataVid" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style = "border-width: 10px; border-color: purple; margin: 0px 50px 20px 50px; padding: 0px 50px 20px 50px;">
        <h3 style="color: #FF3300">Big Data</h3>
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style3" DataKeyField="videoname" DataSourceID="SqlDataSource1" Height="427px" RepeatColumns="2" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" style="margin-bottom: 12px" Width="442px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("videoname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("videolink") %>'></asp:Literal>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoPortalCS %>" SelectCommand="SELECT * FROM [Video] WHERE ([subjectid] = 6) OR ([subjectid] = 7) OR ([subjectid] = 8) OR ([subjectid] = 9) OR ([subjectid] = 10)"></asp:SqlDataSource>
        <br />

    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
            height: 73px;
            border: 2px solid #FF9933;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</asp:Content>

