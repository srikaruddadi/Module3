<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex08.aspx.cs" Inherits="ASPWeb.DataDrivenPages.Ex08" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>    Data Driven Pages Example 8</h1>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" SelectCommand="SELECT [code] FROM [Employee]"></asp:SqlDataSource>
            <br />
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="code" DataValueField="code">
        </asp:DropDownList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([code] = @code)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="code" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([code] = @code)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="code" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="code" DataValueField="code">
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="code" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
