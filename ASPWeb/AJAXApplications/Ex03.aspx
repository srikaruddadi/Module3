<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex03.aspx.cs" Inherits="ASPWeb.AJAXApplications.Ex03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 224px;
        }
        .auto-style3 {
            width: 251px;
        }
    </style>
</head>
<body>
    <h1>AJAX Applications Example 3</h1>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="800" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
                <table class="auto-style1" border="1">
                    <tr>
                        <td class="auto-style2">Item Name</td>
                        <td class="auto-style3">Image</td>
                        <td>Price</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Image ID="Image1" runat="server" />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
