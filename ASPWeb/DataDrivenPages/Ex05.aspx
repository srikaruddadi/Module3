<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex05.aspx.cs" Inherits="ASPWeb.DataDrivenPages.Ex05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Data Driven Pages Example 5</h1>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GD1" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Employee" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Department" />
    </form>
</body>
</html>
