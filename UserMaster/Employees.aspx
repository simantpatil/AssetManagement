<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeFile="Employees.aspx.cs" Inherits="SampleLogin.UserMaster.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Staff_No" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="480px" Width="100%" AllowPaging="True" PageSize="18">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Staff_No" HeaderText="Staff_No" ReadOnly="True" SortExpression="Staff_No" />
            <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
            <asp:BoundField DataField="Login_Name" HeaderText="Login_Name" SortExpression="Login_Name" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
            <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
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
    </center>
<p>
</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JNPA_ASSETConnectionString %>" SelectCommand="SELECT * FROM [Emp_Master]"></asp:SqlDataSource>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
