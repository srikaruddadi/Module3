<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01.aspx.cs" Inherits="ASPWeb.State_Management.CookieDemo.Ex01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Cookie Demo Example 1</h1>
    <form id="form1" runat="server">
        <div>
            Name :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <p>
            Email :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
    </form>
</body>
</html>
