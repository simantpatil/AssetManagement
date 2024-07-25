
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="SampleLogin.NewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {            background-color: #FFCCFF;
                                   background-image: url('/Images logos/klaus.jpg');
                                   background-repeat:no-repeat;
                                   background-attachment:fixed;
                                    background-size:cover; 
        }
        .auto-style2 {}
        .auto-style3 {}
       
  
        .auto-style4 {}
       
  
        .auto-style5 {}
       
  
        </style>
</head>
<body class="auto-style1" >
    <form id="form1" runat="server">
        &nbsp;<p id="         ">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p><center>
       <h1 style="color: #000000">New User Registration</h1></center>&nbsp;</p>
          <br />
          <br />

        <p><center>
            <strong>Username&nbsp;</strong>&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="NewUserTextbox" runat="server" OnTextChanged="NewUserTextbox_TextChanged1" BorderColor="Black" CssClass="auto-style4" Width="149px" Height="20px"></asp:TextBox>
            <br />
            <br />
        </center>
        <center>
            <strong>Password</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NewUserPasswordTextbox" runat="server" BorderColor="Black" CssClass="auto-style5" Height="20px" Width="150px"></asp:TextBox>
        <p>
            <center>
                <strong>Account Type</strong>&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" CssClass="auto-style2" Height="20px" Width="179px" BackColor="White">
                <asp:ListItem Value="U">User</asp:ListItem>
                <asp:ListItem Value="A">Admin</asp:ListItem>
            </asp:DropDownList>
        </p></center>
        </p></center>
        <center>
            <asp:Button ID="CreateAccButton" runat="server" Text="Create Account" OnClick="CreateAccButton_Click" BorderColor="Black"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LoginPageButton" runat="server" Text="Login Page" OnClick="LoginPageButton_Click" BorderColor="Black" CssClass="auto-style3" Height="20px" Width="102px" />
            &nbsp;</p></center>
        <p><center>
            
        <asp:Label ID="AccCreationLabel" runat="server"></asp:Label>
        </p></center>
    </form>
</body>
</html>
