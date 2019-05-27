<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02.aspx.cs" Inherits="ASPWeb.ADOExamples.Ex02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ADO.NET Example 2</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Employee" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Department" />
            </p>
            <p>&nbsp;</p>
        </div>
    </form>
</body>
</html>
