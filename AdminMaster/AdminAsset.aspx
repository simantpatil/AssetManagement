<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="AdminAsset.aspx.cs" Inherits="SampleLogin.AdminMaster.AdminAsset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style34 {
            width: 0.2%;
        }
        .auto-style35 {
            width: 1%;
        }
        .auto-style36 {
            width: 179px;
        }
        .auto-style37 {
            width: 140%;
        }
        .auto-style38 {
            margin-right: 0px;
            font-size:x-small;
        }
        .auto-style40 {
            width: 1%;
        }
        .auto-style41 {
            width: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Srno" DataSourceID="SqlDataSource11" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" CellPadding="4" CssClass="auto-style38" ForeColor="#333333" GridLines="None" Width="100%" PageSize="14" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Srno" HeaderText="Srno" InsertVisible="False" ReadOnly="True" SortExpression="Srno" />
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
            <asp:TemplateField HeaderText="Operations">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;
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
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:JNPA_ASSETConnectionString %>" DeleteCommand="DELETE FROM [UpdatedAsset] WHERE [Srno] = @Srno" InsertCommand="INSERT INTO [UpdatedAsset] ([Staff_No], [Host_Name], [Static_Ip_Address], [System_Manufacturer], [System_Model], [System_Serial_No], [Monitor_Manufacturer], [Monitor_Serial_No], [OS_Type], [MAC_Address], [Actual_User], [Actual_Login], [Contact_No], [Room_No], [Location], [Inventory_Month], [Remark]) VALUES (@Staff_No, @Host_Name, @Static_Ip_Address, @System_Manufacturer, @System_Model, @System_Serial_No, @Monitor_Manufacturer, @Monitor_Serial_No, @OS_Type, @MAC_Address, @Actual_User, @Actual_Login, @Contact_No, @Room_No, @Location, @Inventory_Month, @Remark)" SelectCommand="SELECT * FROM [UpdatedAsset]" UpdateCommand="UPDATE [UpdatedAsset] SET [Staff_No] = @Staff_No, [Host_Name] = @Host_Name, [Static_Ip_Address] = @Static_Ip_Address, [System_Manufacturer] = @System_Manufacturer, [System_Model] = @System_Model, [System_Serial_No] = @System_Serial_No, [Monitor_Manufacturer] = @Monitor_Manufacturer, [Monitor_Serial_No] = @Monitor_Serial_No, [OS_Type] = @OS_Type, [MAC_Address] = @MAC_Address, [Actual_User] = @Actual_User, [Actual_Login] = @Actual_Login, [Contact_No] = @Contact_No, [Room_No] = @Room_No, [Location] = @Location, [Inventory_Month] = @Inventory_Month, [Remark] = @Remark WHERE [Srno] = @Srno">
        <DeleteParameters>
            <asp:Parameter Name="Srno" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Staff_No" Type="String" />
            <asp:Parameter Name="Host_Name" Type="String" />
            <asp:Parameter Name="Static_Ip_Address" Type="String" />
            <asp:Parameter Name="System_Manufacturer" Type="String" />
            <asp:Parameter Name="System_Model" Type="String" />
            <asp:Parameter Name="System_Serial_No" Type="String" />
            <asp:Parameter Name="Monitor_Manufacturer" Type="String" />
            <asp:Parameter Name="Monitor_Serial_No" Type="String" />
            <asp:Parameter Name="OS_Type" Type="String" />
            <asp:Parameter Name="MAC_Address" Type="String" />
            <asp:Parameter Name="Actual_User" Type="String" />
            <asp:Parameter Name="Actual_Login" Type="String" />
            <asp:Parameter Name="Contact_No" Type="String" />
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Inventory_Month" Type="String" />
            <asp:Parameter Name="Remark" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Staff_No" Type="String" />
            <asp:Parameter Name="Host_Name" Type="String" />
            <asp:Parameter Name="Static_Ip_Address" Type="String" />
            <asp:Parameter Name="System_Manufacturer" Type="String" />
            <asp:Parameter Name="System_Model" Type="String" />
            <asp:Parameter Name="System_Serial_No" Type="String" />
            <asp:Parameter Name="Monitor_Manufacturer" Type="String" />
            <asp:Parameter Name="Monitor_Serial_No" Type="String" />
            <asp:Parameter Name="OS_Type" Type="String" />
            <asp:Parameter Name="MAC_Address" Type="String" />
            <asp:Parameter Name="Actual_User" Type="String" />
            <asp:Parameter Name="Actual_Login" Type="String" />
            <asp:Parameter Name="Contact_No" Type="String" />
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Inventory_Month" Type="String" />
            <asp:Parameter Name="Remark" Type="String" />
            <asp:Parameter Name="Srno" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
