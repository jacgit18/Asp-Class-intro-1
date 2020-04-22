<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectDestintion.aspx.cs" Inherits="WebApplication4.SelectDestintion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Paris France">Paris</asp:ListItem>
            <asp:ListItem Value="London England">London</asp:ListItem>
            <asp:ListItem Value="Madrid Spain">Madrid</asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Select City" />
    </form>
</body>
</html>
