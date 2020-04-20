<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 214px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 200px">
           
&nbsp;<asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="txtMessage" runat="server" OnClick="Button1_Click" Text="Login" />
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:HiddenField ID="txtNumfail" Value="0" runat="server" />
        </div>
    </form>
</body>
</html>
