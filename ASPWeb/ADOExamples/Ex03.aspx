<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex03.aspx.cs" Inherits="ASPWeb.ADOExamples.Ex03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            width: 151px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ADO.NET Ex03</h1>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Employees" />
            </p>
            <table class="auto-style1" border="1" style="width:500px">
                <tr>
                    <td class="auto-style2">Employee Code:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Create" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Employee Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Read" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Salary</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Update" OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Department ID</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Delete" OnClick="Button5_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Clear All" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back to Homepage</asp:HyperLink>
    </form>
</body>
</html>
