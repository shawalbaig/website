<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="website.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 228px;
        }
        .auto-style5 {
            height: 39px;
        }
        .auto-style7 {
            height: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; font-size: large; font-style: italic; color: #FFFFFF; background-color: #000080">
            Choose the Prefered payment method
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;<br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="133px" ImageUrl="~/Images/3147338-200.png" Width="145px" />
&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#000099" Font-Bold="True" Font-Italic="True" ForeColor="White" NavigateUrl="~/Invoice.aspx">Click Here For Cash On Delivery..</asp:HyperLink>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;<asp:Image ID="Image2" runat="server" Height="133px" ImageUrl="~/Images/index.png" Width="157px" />
&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#000099" Font-Bold="True" Font-Italic="True" ForeColor="White" NavigateUrl="~/CardPayment.aspx">Click Here For Card Payment..</asp:HyperLink>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
