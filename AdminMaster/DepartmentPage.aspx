<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="DepartmentPage.aspx.cs" Inherits="SampleLogin.DepartmentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style34 {
            width: 19.5%;
        }
        .auto-style35 {
            width: 23.5%;
        }
        .auto-style36 {
            width: 17%;
        }
        .auto-style37 {
            width: 17%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Department" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Department" SortExpression="Department">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Default_Gateway" SortExpression="Default_Gateway">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Default_Gateway") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Default_Gateway") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DNS1" SortExpression="DNS1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DNS1") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("DNS1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DNS2" SortExpression="DNS2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DNS2") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("DNS2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Operations">
                <EditItemTemplate>
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update" ForeColor="Aqua">Update</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" ForeColor="Aqua">Cancel</asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
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
            <td class="auto-style34">
                <asp:TextBox ID="DepartmentTxtbox" runat="server" Width="95%"></asp:TextBox>
            </td>
            <td class="auto-style35">
                <asp:TextBox ID="GatewayTxtbox" runat="server" Width="95%"></asp:TextBox>
            </td>
            <td class="auto-style36">
                <asp:TextBox ID="DNS1Txtbox" runat="server" Width="95%"></asp:TextBox>
            </td>
            <td class="auto-style37">
                <asp:TextBox ID="DNS2Txtbox" runat="server" Width="95%"></asp:TextBox>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Insert</asp:LinkButton>
            </td>
        </tr>
    </table>
    <center>
    <asp:Label ID="DepartmentStatusLabel" runat="server"></asp:Label>
     </center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JNPA_ASSETConnectionString %>" DeleteCommand="DELETE FROM [Dept_Master] WHERE [Department] = @Department" InsertCommand="INSERT INTO [Dept_Master] ([Department], [Default_Gateway], [DNS1], [DNS2]) VALUES (@Department, @Default_Gateway, @DNS1, @DNS2)" SelectCommand="SELECT * FROM [Dept_Master]" UpdateCommand="UPDATE [Dept_Master] SET [Default_Gateway] = @Default_Gateway, [DNS1] = @DNS1, [DNS2] = @DNS2 WHERE [Department] = @Department">
        <DeleteParameters>
            <asp:Parameter Name="Department" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Default_Gateway" Type="String" />
            <asp:Parameter Name="DNS1" Type="String" />
            <asp:Parameter Name="DNS2" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Default_Gateway" Type="String" />
            <asp:Parameter Name="DNS1" Type="String" />
            <asp:Parameter Name="DNS2" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
