<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01.aspx.cs" Inherits="ASPWeb.Simple_Calculations.Ex01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 282px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Simple Calculations Example 1</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Number 1 : </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Number 2 :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Result : </td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Subtract" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Biggest" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Smallest" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Multiply" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Division" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back to Home</asp:HyperLink>
    </form>
</body>
</html>
