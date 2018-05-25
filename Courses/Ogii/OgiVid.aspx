<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="OgiVid.aspx.cs" Inherits="OnlineVideoPortal.Courses.Ogii.OgiVid" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style = "border-width: 10px; border-color: purple; margin: 0px 50px 20px 50px; padding: 0px 50px 20px 50px;">
        <h3 style="color: #FF3300">Oil and Gas Informatics</h3>
        <br />

        <asp:DataList ID="DataList1" runat="server" DataKeyField="videoname" DataSourceID="SqlDataSource1" Height="463px" RepeatColumns="2" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="345px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("videoname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("videolink") %>'></asp:Literal>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoPortalCS %>" SelectCommand="SELECT * FROM [Video] WHERE ([subjectid] = 46) OR ([subjectid] = 47) OR ([subjectid] = 48) OR ([subjectid] = 49) OR ([subjectid] = 50)"></asp:SqlDataSource>

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
            height: 30px;
        }
        .auto-style3 {
            height: 34px;
        }
    </style>
</asp:Content>

