<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01.aspx.cs" Inherits="ASPWeb.Standard_Tools.StandardWebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Standard Tools Example 1</h1>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Say Hello" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Server Date" />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Server Time" />
&nbsp;</p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Greeting" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back to Home</asp:HyperLink>
    </form>
</body>
</html>
