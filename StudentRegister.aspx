<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="OnlineVideoPortal.StudentRegister" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2>Student Registration</h2>
    <br />

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Course:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="280px">
                    <asp:ListItem Enabled="true" Text="Select Branch" Value="-1"></asp:ListItem>
                    <asp:ListItem>Banking, Financial Services and Insurance</asp:ListItem>
                    <asp:ListItem>Big Data</asp:ListItem>
                    <asp:ListItem>Business Analytics and Optimization</asp:ListItem>
                    <asp:ListItem>Cloud Computing and Virtualization Technology</asp:ListItem>
                    <asp:ListItem>Cyber Security and Forensics</asp:ListItem>
                    <asp:ListItem>E-Commerce and Retail Automation</asp:ListItem>
                    <asp:ListItem>Gaming and Graphics</asp:ListItem>
                    <asp:ListItem>IT Infrastructure</asp:ListItem>
                    <asp:ListItem>Mainframe Technology</asp:ListItem>
                    <asp:ListItem>Oil and Gas Informatics</asp:ListItem>
                    <asp:ListItem>Open Source and Open Standards</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">SAP ID:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="SAP ID is required" ForeColor="#FF3300" Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="#FF3300" Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">First Name:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="#FF3300" Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Semester:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox5" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox6" runat="server" Width="160px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Email should be in the format abc@domain.com" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Visible="False"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Text="Submit" Width="72px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#33CC33"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">&nbsp;</td>
        </tr>
    </table>

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
            width: 415px;
        }
        .auto-style3 {
            width: 415px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: center;
            height: 21px;
        }
    </style>
</asp:Content>

