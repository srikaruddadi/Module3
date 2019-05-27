<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex06.aspx.cs" Inherits="ASPWeb.DataDrivenPages.Ex06" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Data Driven Pages Example 6</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="code" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
