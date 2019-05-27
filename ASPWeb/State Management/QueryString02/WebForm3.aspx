<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="ASPWeb.State_Management.QueryString02.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 262px;
        }
    </style>
</head>
<body>
    <h1>Experience</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1" border="1">
            <tr>
                <td class="auto-style2">Experience in years : </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name : </td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email : </td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact Number : </td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">UG :</td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Intermediate :</td>
                <td>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">10th Standard : </td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Experience : </td>
                <td>
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Display" />
        </p>
    </form>
</body>
</html>
