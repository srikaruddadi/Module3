<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02.aspx.cs" Inherits="ASPWeb.Option_Tools.Ex02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 277px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>Option Tools Example 2</h1>
            <p>Q1) Who is the President of USA?</p>
            <p>Ans)
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="USA" Text="Trump" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="USA" Text="Obama" />
&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" GroupName="USA" Text="Lincoln" />
&nbsp;<asp:RadioButton ID="RadioButton4" runat="server" GroupName="USA" Text="Bush" />
            </p>
            <p>Q2) Who is the Prime Minister of India?</p>
            <p>Ans)
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="India" Text="Manmohan" />
&nbsp;<asp:RadioButton ID="RadioButton6" runat="server" GroupName="India" Text="Modi" />
&nbsp;<asp:RadioButton ID="RadioButton7" runat="server" GroupName="India" Text="Rajeev" />
&nbsp;<asp:RadioButton ID="RadioButton8" runat="server" GroupName="India" Text="Owaisi" />
            </p>
            <p>Q3) Who is the Captain of Indian Cricket Team?</p>
            <p>Ans)
                <asp:RadioButton ID="RadioButton9" runat="server" GroupName="cricket" Text="Sachin" />
&nbsp;<asp:RadioButton ID="RadioButton10" runat="server" GroupName="cricket" Text="Ganguly" />
&nbsp;<asp:RadioButton ID="RadioButton11" runat="server" GroupName="cricket" Text="Dhoni" />
&nbsp;<asp:RadioButton ID="RadioButton12" runat="server" GroupName="cricket" Text="Kohli" />
            </p>
            <p>Q4) What is the capital of India ?</p>
            <p>Ans)
                <asp:RadioButton ID="RadioButton13" runat="server" GroupName="state" Text="Telangana" />
&nbsp;<asp:RadioButton ID="RadioButton14" runat="server" GroupName="state" Text="Andhra" />
&nbsp;<asp:RadioButton ID="RadioButton15" runat="server" GroupName="state" Text="Rajastan" />
&nbsp;<asp:RadioButton ID="RadioButton16" runat="server" GroupName="state" Text="Delhi" />
            </p>
            <p>Q5) In which year did Indian Cricket team won the World Cup?</p>
            <p>Ans)
                <asp:RadioButton ID="RadioButton17" runat="server" GroupName="year" Text="1984" />
&nbsp;<asp:RadioButton ID="RadioButton18" runat="server" GroupName="year" Text="2012" />
&nbsp;<asp:RadioButton ID="RadioButton19" runat="server" GroupName="year" Text="1999" />
&nbsp;<asp:RadioButton ID="RadioButton20" runat="server" GroupName="year" Text="2011" />
            </p>
            <table class="auto-style1" border="1">
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
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Back to Homepage</asp:HyperLink>
    </form>
</body>
</html>
