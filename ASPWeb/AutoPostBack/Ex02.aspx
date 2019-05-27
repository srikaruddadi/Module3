<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02.aspx.cs" Inherits="ASPWeb.AutoPostBack.Ex02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>AutoPost Example 2</h1>
        <div>
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Black</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
