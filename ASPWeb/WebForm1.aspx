<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>My Project HomePage</h1>
        </div>
        Standard Tools:
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Standard Tools/Ex01.aspx">Ex01</asp:HyperLink>
        &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Standard Tools/Ex02.aspx">Ex02</asp:HyperLink>
&nbsp;<p>
            Simple Calculations :
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Simple Calculations/Ex01.aspx">Ex01</asp:HyperLink>
        </p>
        <p>
            Option Tools :
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Option Tools/Ex01.aspx">Ex01</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Option Tools/Ex02.aspx">Ex02</asp:HyperLink>
        </p>
        <p>
            Validation Tools :
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Validation Tools/Ex01.aspx">Ex01</asp:HyperLink>
        </p>
        <p>
            ADO .NET :
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/ADOExamples/Ex01.aspx">Ex01</asp:HyperLink>
        &nbsp;<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/ADOExamples/Ex02.aspx">Ex02</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/ADOExamples/Ex03.aspx">Ex03</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Visitor Count is :
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
