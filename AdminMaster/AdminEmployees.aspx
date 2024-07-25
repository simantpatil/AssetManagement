<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="AdminEmployees.aspx.cs" Inherits="SampleLogin.AdminEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style34 {
            text-align: left;
        }
        .auto-style35 {
            margin-left: 1px;
        }
        .auto-style36 {
            width: 17%;
            height: 35px;
        }
        .auto-style38 {
            width: 14.5%;
            height: 35px;
        }
        .auto-style39 {
            width: 10.5%;
            height: 35px;
        }
        .auto-style40 {
            width: 6%;
            height: 35px;
        }
        .auto-style41 {
            height: 35px;
        }
        .auto-style42 {
            width: 15%;
            height: 35px;
        }
        .auto-style44 {
            width: 9%;
            height: 35px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style40" >
                <asp:TextBox ID="StaffNoTxtbox" runat="server" Width="92%" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style42">
                <asp:TextBox ID="UserNameTxtbox" runat="server" Width="92%" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:TextBox ID="LoginNameTxtbox" runat="server" Width="92%" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="DesignationTxtbox" runat="server" Width="92%" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:TextBox ID="DepartmentTxtbox" runat="server" Width="92%" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style36">
                <asp:TextBox ID="SectionTxtbox" runat="server" Width="92%" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style44">
                <asp:TextBox ID="ContactNoTxtbox" runat="server" Width="92%" CssClass="auto-style35" Height="24px" OnTextChanged="ContactNoTxtbox_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style41">
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Insert</asp:LinkButton>
            </td>
        </tr>
    </table>
    <center>
    <asp:Label ID="EmployeeStatusLabel" runat="server"></asp:Label>
    </center>
    <p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="17" AutoGenerateColumns="False" DataKeyNames="Staff_No" DataSourceID="SqlDataSource1" Width="100%" Height="100px" CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged3" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Staff_No" SortExpression="Staff_No">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Staff_No") %>'></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="StaffNoTxtbox" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Staff_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Name" SortExpression="User_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("User_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="UserNameTxtbox" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("User_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Login_Name" SortExpression="Login_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Login_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="LoginNameTxtbox" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Login_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Designation" SortExpression="Designation">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="DesignationTxtbox" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Designation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Department" SortExpression="Department">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="DepartmentTxtbox" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Section" SortExpression="Section">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Section") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="SectionTxtbox" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Section") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact_No" SortExpression="Contact_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Contact_No") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="ContactNoTxtbox" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Contact_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Operation">
                <EditItemTemplate>
                    <div class="auto-style34">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update" ForeColor="Aqua">Update</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" ForeColor="Aqua">Cancel</asp:LinkButton>
                    </div>
                </EditItemTemplate>
                <FooterTemplate>
                    <br />
                </FooterTemplate>
                <ItemTemplate>
                    <div class="auto-style34">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    </div>
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
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JNPA_ASSETConnectionString %>" DeleteCommand="DELETE FROM [Emp_Master] WHERE [Staff_No] = @Staff_No" InsertCommand="INSERT INTO [Emp_Master] ([Staff_No], [User_Name], [Login_Name], [Designation], [Department], [Section], [Contact_No]) VALUES (@Staff_No, @User_Name, @Login_Name, @Designation, @Department, @Section, @Contact_No)" SelectCommand="SELECT * FROM [Emp_Master]" UpdateCommand="UPDATE [Emp_Master] SET [User_Name] = @User_Name, [Login_Name] = @Login_Name, [Designation] = @Designation, [Department] = @Department, [Section] = @Section, [Contact_No] = @Contact_No WHERE [Staff_No] = @Staff_No" OnSelecting="SqlDataSource1_Selecting1">
        <DeleteParameters>
            <asp:Parameter Name="Staff_No" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Staff_No" Type="String" />
            <asp:Parameter Name="User_Name" Type="String" />
            <asp:Parameter Name="Login_Name" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Contact_No" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Name" Type="String" />
            <asp:Parameter Name="Login_Name" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Contact_No" Type="String" />
            <asp:Parameter Name="Staff_No" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>
