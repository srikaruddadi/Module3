<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02.aspx.cs" Inherits="ASPWeb.Standard_Tools.Ex02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Standard Tools Example 2</h1>
        </div>
        
&nbsp;<table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style2">Enter Name : </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Message :</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Say Hello" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Length" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text="Upper Case" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" style="height: 26px" Text="Lower Case" OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back To Home</asp:HyperLink>
        </p>
    </form>
</body>
</html>
