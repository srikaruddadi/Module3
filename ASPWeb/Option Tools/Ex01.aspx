<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01.aspx.cs" Inherits="ASPWeb.Option_Tools.Ex01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 295px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Option Tools Example 1</h1>
            <table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style2">Enter Name : </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Choose Gender :</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back to Homepage</asp:HyperLink>
        </p>
    </form>
</body>
</html>
