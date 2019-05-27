<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex03.aspx.cs" Inherits="ASPWeb.DataDrivenPages.Ex03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>    Data Driven Pages Example 3</h1>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" SelectCommand="SELECT * FROM [Hobbies]"></asp:SqlDataSource>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="hobby" DataValueField="hobby" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
