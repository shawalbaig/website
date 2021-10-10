<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log in .aspx.cs" Inherits="website.Log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 541px;
        }
        .auto-style2 {
            width: 268435488px;
        }
        .auto-style3 {
            width: 4px;
        }
        .auto-style4 {
            width: 541px;
            height: 22px;
        }
        .auto-style5 {
            width: 4px;
            height: 22px;
        }
    </style>
    
</head>
<body style="width: 665px; height: 360px;">
    <form id="form1" runat="server" style="background-color: #6699FF">
        <div>
        </div>
    <table>
        <tr>
            <td colspan ="2" align =" center">

                <h2>Login Page </h2> </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <b>Email Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbEmailId" runat="server"></asp:TextBox>
                </b></td>

            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"><b>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                </b></td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan =" 2" align =" center">
                <asp:Button ID="Button1" runat="server" Text="Log in " Width="120px" BorderStyle="Ridge" Font-Bold="True" Font-Size="15pt" ForeColor="Black" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="LblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/registration.aspx">Dont have an account? Register here </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddGrocery.aspx" Visible="False">Add Groceries</asp:HyperLink>
            </td>
            <td class="auto-style5"></td>
        </tr>
    </table>
    </form>
    </body>
</html>
