<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="SampleLogin.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="Department" Value="Department">
                        <asp:MenuItem Text="Admin" Value="Admin"></asp:MenuItem>
                        <asp:MenuItem Text="Traffic" Value="Traffic"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="New Item" Value="New Item"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <br />
            <asp:TreeView ID="TreeView1" runat="server">
            </asp:TreeView>
            <br />
        </div>
    </form>
</body>
</html>
