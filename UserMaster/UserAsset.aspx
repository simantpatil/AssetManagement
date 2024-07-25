<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeFile="UserAsset.aspx.cs" Inherits="SampleLogin.UserMaster.UserAsset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            margin-right: 0px;
            font-size:x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="#333333" GridLines="None" CssClass="auto-style8" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Srno" PageSize="17" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Srno" HeaderText="Srno" SortExpression="Srno" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Staff_No" HeaderText="Staff_No" SortExpression="Staff_No" />
            <asp:BoundField DataField="Host_Name" HeaderText="Host_Name" SortExpression="Host_Name" />
            <asp:BoundField DataField="Static_Ip_Address" HeaderText="Static_Ip_Address" SortExpression="Static_Ip_Address" />
            <asp:BoundField DataField="System_Manufacturer" HeaderText="System_Manufacturer" SortExpression="System_Manufacturer" />
            <asp:BoundField DataField="System_Model" HeaderText="System_Model" SortExpression="System_Model" />
            <asp:BoundField DataField="System_Serial_No" HeaderText="System_Serial_No" SortExpression="System_Serial_No" />
            <asp:BoundField DataField="Monitor_Manufacturer" HeaderText="Monitor_Manufacturer" SortExpression="Monitor_Manufacturer" />
            <asp:BoundField DataField="Monitor_Serial_No" HeaderText="Monitor_Serial_No" SortExpression="Monitor_Serial_No" />
            <asp:BoundField DataField="OS_Type" HeaderText="OS_Type" SortExpression="OS_Type" />
            <asp:BoundField DataField="MAC_Address" HeaderText="MAC_Address" SortExpression="MAC_Address" />
            <asp:BoundField DataField="Actual_User" HeaderText="Actual_User" SortExpression="Actual_User" />
            <asp:BoundField DataField="Actual_Login" HeaderText="Actual_Login" SortExpression="Actual_Login" />
            <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" SortExpression="Room_No" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Inventory_Month" HeaderText="Inventory_Month" SortExpression="Inventory_Month" />
            <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
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
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:JNPA_ASSETConnectionString %>" SelectCommand="SELECT * FROM [UpdatedAsset]"></asp:SqlDataSource>
</p>
</asp:Content>
