<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex11.aspx.cs" Inherits="ASPWeb.DataDrivenPages.Ex11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Example 11</h1>
    <form id="form1" runat="server">
        <div>
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
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:TemplateField HeaderText="deptid" SortExpression="deptid">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("deptid") %>' runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("deptid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
    </form>
</body>
</html>
