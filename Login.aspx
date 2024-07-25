<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SampleLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {             background-color: #FFCCFF;
                                   background-image: url('/Images logos/mali.jpg');
                                   background-repeat:no-repeat;
                                   background-attachment:fixed;
                                   background-size:cover; 
        }
        .auto-style2 {}
        .auto-style3 {}
        .imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
         .auto-style4 {
             text-decoration: underline;
         }
        
         .auto-style6 {
             width: 279px;
             height: 223px;
         }
        
        </style>
</head>
<body class="auto-style1" ,background='C:\Users\apprentice\source\repos\SampleLogin\images.jpeg'>
  
                     
             <div class="imgcontainer">
                 <h1><br class="auto-style4" /></h1>
                 <br class="auto-style4" />

                 <h1><span class="auto-style3">LOGIN FORM </span></h1>&nbsp;</div>                

                              
                         
    <form id="form1" runat="server">
        <p id="         " class="auto-style7">
            
            <center><img alt="" class="auto-style6" src="Images%20logos/logo.jfif" /></center></p>
        <p><center>
            <strong>Username&nbsp;</strong>&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="LoginTextbox" runat="server" CssClass="auto-style3" placeholder="enter username" Height="17px" Width="173px" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
            <br />
            <br />
        &nbsp;<strong style="color: #000000">Password</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="PasswordTextbox" runat="server" TextMode="Password" placeholder="enter password" ClientIDMode="Static" CssClass="auto-style2" Height="17px" OnTextChanged="PasswordTextbox_TextChanged" Width="173px" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
            
          <!--  <script>
                function myshowp() {
                    ShowPass = $('#ShowPassCheckbox')
                    TextBox = $('#PasswordTextbox')

                    if (ShowPass.is(':checked')) {
                        TextBox.attr("Type", "Text");
                    }
                    else {
                        TextBox.attr("Type", "Password");
                    }
                }
            </script>-->
            
         </center></p>
         <p><center>
            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="Button1_Click" BorderColor="Black" BorderWidth="2px" Width="263px" Height="26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="NewUserButton" runat="server" Text="New User" OnClick="Button2_Click" BorderColor="Black" BorderWidth="2px" Height="26px" Width="266px" />
            &nbsp;&nbsp;</center></p>
        <p><center>
            <asp:Label ID="LoginStatusLabel" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </center>
        </p>
    </form>
</body>
</html>
