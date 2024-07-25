<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="RolesPage.aspx.cs" Inherits="SampleLogin.RolesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style35 {
            width: 25.5%;
        }
        .auto-style36 {
            width: 22.3%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp; &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Role_id" DataSourceID="SqlDataSource3" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Role_id" SortExpression="Role_id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Role_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Role_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Role" SortExpression="Role">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Operations">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton8" runat="server" CommandName="Update" ForeColor="Aqua">Update</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton9" runat="server" CommandName="Cancel" ForeColor="Aqua">Cancel</asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton7" runat="server" CommandName="Delete">Delete</asp:LinkButton>
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
</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style35">
                <asp:TextBox ID="RoleIdTxtbox" runat="server" Width="96%"></asp:TextBox>
            </td>
            <td class="auto-style36">
                <asp:TextBox ID="RoleTxtbox" runat="server" Width="96%"></asp:TextBox>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Insert</asp:LinkButton>
            </td>
        </tr>
    </table>
    <p><center>

    &nbsp;<asp:Label ID="RoleStatusLabel" runat="server"></asp:Label>
    </center>
</p>
    <p>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JNPA_ASSETConnectionString %>" SelectCommand="SELECT * FROM [Roles]" DeleteCommand="DELETE FROM [Roles] WHERE [Role_id] = @Role_id" InsertCommand="INSERT INTO [Roles] ([Role_id], [Role]) VALUES (@Role_id, @Role)" UpdateCommand="UPDATE [Roles] SET [Role] = @Role WHERE [Role_id] = @Role_id">
        <DeleteParameters>
            <asp:Parameter Name="Role_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Role_id" Type="String" />
            <asp:Parameter Name="Role" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Role" Type="String" />
            <asp:Parameter Name="Role_id" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        &nbsp;</p>
    <p>
        &nbsp;
        &nbsp;</p>
    <p>
        &nbsp;
        &nbsp;</p>
</asp:Content>
