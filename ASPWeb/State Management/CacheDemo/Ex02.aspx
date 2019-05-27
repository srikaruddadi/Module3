<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02.aspx.cs" Inherits="ASPWeb.State_Management.CacheDemo.Ex02" %>
<%@ OutputCache Duration="1" VaryByParam="none" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Cache Demo Example 2</h1>
    <form id="form1" runat="server">
        <p>
            Name :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
    </form>
</body>
</html>
