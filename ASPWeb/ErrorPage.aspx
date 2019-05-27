<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="ASPWeb.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Error Page</h1>
    <p>Please try after some time</p>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back to homepage</asp:HyperLink>
    </form>
</body>
</html>
