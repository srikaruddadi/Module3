<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01.aspx.cs" Inherits="ASPWeb.State_Management.View_State.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>View State Example 1</h1>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Server Date" />
&nbsp;
        <asp:Label ID="Label1" runat="server" EnableViewState="False"></asp:Label>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Server Time" />
&nbsp;
            <asp:Label ID="Label2" runat="server" EnableViewState="False"></asp:Label>
        </p>
    </form>
</body>
</html>
