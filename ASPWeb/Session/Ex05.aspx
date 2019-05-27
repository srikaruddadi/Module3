<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex05.aspx.cs" Inherits="ASPWeb.Session.Ex04" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Logout Page</h1>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Session/Ex03.aspx">Login again</asp:HyperLink>
        <br />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
