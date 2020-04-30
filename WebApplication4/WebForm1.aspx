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
        <div style="height: 356px">
           
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
           
&nbsp;<asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="FZZZZZ" MinimumValue="A"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="txtMessage" runat="server" OnClick="Button1_Click" Text="Login" />
            <br />
            <br />
            <br />
            Email:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox4" ErrorMessage="CompareValidator"></asp:CompareValidator>
            <br />
            Confirm:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:HiddenField ID="txtNumfail" Value="0" runat="server" />
        </div>
    </form>
</body>
</html>
