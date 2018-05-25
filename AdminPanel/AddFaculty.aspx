<%@ Page Title="" Language="C#" MasterPageFile="~/VideoPortal.Master" AutoEventWireup="true" CodeBehind="AddFaculty.aspx.cs" Inherits="OnlineVideoPortal.AdminPanel.AddFaculty" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3 style="color:orangered">New Faculty Requests</h3>
    <br />
    <div style = "border-width: 10px; border-color: purple; margin: 0px 50px 20px 50px; padding: 0px 50px 20px 50px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" Text="Accept" runat="server" CommandName="Accept" />
                        <asp:Button ID="Button2" Text="Reject" runat="server" CommandName="Reject" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VideoPortalCS %>" DeleteCommand="DELETE FROM [Faculty] WHERE [username] = @original_username" InsertCommand="INSERT INTO [Faculty] ([username], [name], [department]) VALUES (@username, @name, @department)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [username], [name], [department] FROM [Faculty] WHERE ([deleted] = @deleted)" UpdateCommand="UPDATE [Faculty] SET [name] = @name, [department] = @department WHERE [username] = @original_username AND [name] = @original_name AND [department] = @original_department">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="department" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="Y" Name="deleted" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_department" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <a style="text-align:center; color:forestgreen" href="/AdminPanel/AdminHome.aspx">Go Back</a>
    </div>
    <br />
</asp:Content>
