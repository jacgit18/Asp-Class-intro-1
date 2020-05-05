<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Greetings.aspx.cs" Inherits="WebApplication4.Greetings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Greetings
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
            <PagerSettings Mode="NumericFirstLast" Position="Top" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fill" />
    </form>
</body>
</html>
