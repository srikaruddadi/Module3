<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex04.aspx.cs" Inherits="ASPWeb.Session.Ex041" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Dashboard</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Session/Ex05.aspx">Logout</asp:HyperLink>
    </form>
</body>
</html>
