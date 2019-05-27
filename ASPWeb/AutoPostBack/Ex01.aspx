<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01.aspx.cs" Inherits="ASPWeb.AutoPostBack.Ex01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Auto Post Back Example 1</h1>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="images" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Car1" />
            <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="images" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Car2" />
        </div>
        <asp:Image ID="Image1" runat="server" />
    </form>
</body>
</html>
