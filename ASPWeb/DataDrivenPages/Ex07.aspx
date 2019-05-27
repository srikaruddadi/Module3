<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex07.aspx.cs" Inherits="ASPWeb.DataDrivenPages.Ex07" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Data Driven Pages Example 7</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [code] = @code" InsertCommand="INSERT INTO [Employee] ([code], [name], [salary], [deptid]) VALUES (@code, @name, @salary, @deptid)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [name] = @name, [salary] = @salary, [deptid] = @deptid WHERE [code] = @code">
            <DeleteParameters>
                <asp:Parameter Name="code" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="code" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="deptid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="deptid" Type="Int32" />
                <asp:Parameter Name="code" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="code" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
