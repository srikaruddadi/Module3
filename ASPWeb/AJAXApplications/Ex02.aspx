<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02.aspx.cs" Inherits="ASPWeb.AJAXApplications.Ex02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>AJAX Applications Example 2</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="500" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
    </form>
</body>
</html>
