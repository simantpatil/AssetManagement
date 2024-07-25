<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="SampleLogin.UserMaster.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>&nbsp;<p>&nbsp; &nbsp; &nbsp;<center>
    Current Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="OldPassTextbox" runat="server" Height="21px" Width="174px" BorderColor="Black"></asp:TextBox>

    <br />
    <br />
    <br />

   </center>
    <center>
    New Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="NewPassTextbox" runat="server" OnTextChanged="TextBox2_TextChanged" Height="21px" Width="174px" BorderColor="Black"></asp:TextBox>
    </center>
&nbsp;&nbsp;</p>
<p>
    &nbsp;&nbsp;</p>
<center>
<asp:Button ID="ChangePasswordTextbox" runat="server" OnClick="Button1_Click" Text="Change Password" Height="38px" Width="203px" BorderColor="Black" Font-Bold="True" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="logoutbutton" runat="server" OnClick="logoutbutton_Click" Text="Logout" Height="38px" Width="164px" BorderColor="Black" Font-Bold="True" />
    </center>
<p>
    &nbsp;</p>
<p><center>
    <asp:Label ID="PassChangeLabel" runat="server"></asp:Label>
    </center>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
