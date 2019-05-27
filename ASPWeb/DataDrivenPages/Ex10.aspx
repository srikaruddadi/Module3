<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex10.aspx.cs" Inherits="ASPWeb.DataDrivenPages.Ex10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Data Driven Pages Example 10</h1>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapgeminiConnectionString %>" DeleteCommand="DELETE FROM [Details] WHERE [id] = @id" InsertCommand="INSERT INTO [Details] ([id], [name], [gender], [age]) VALUES (@id, @name, @gender, @age)" SelectCommand="SELECT * FROM [Details]" UpdateCommand="UPDATE [Details] SET [name] = @name, [gender] = @gender, [age] = @age WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:TemplateField HeaderText="gender" SortExpression="gender">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("gender") %>' runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                </Columns>
            </asp:GridView>
            &nbsp;<br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:TemplateField HeaderText="gender" SortExpression="gender">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" SelectedValue='<%# Bind("gender") %>' runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList2" SelectedValue='<%# Bind("gender") %>' runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
