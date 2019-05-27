<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01.aspx.cs" Inherits="ASPWeb.Post_Back.Ex01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>PostBack Example 01</h1>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
