<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardPayment.aspx.cs" Inherits="website.CardPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 179px;
        }
        .auto-style3 {
            width: 489px;
        }
        .auto-style4 {
            width: 179px;
            height: 151px;
        }
        .auto-style5 {
            width: 489px;
            height: 151px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Britannic Bold'; font-size: large; color: #FFFFFF; background-color: #000080">
            Please Provide The Following Card Details
        </div>
        <table class="auto-style1" style="font-size: large; font-style: italic; color: #FFFFFF; background-color: #00CC00">
            <tr>
                <td class="auto-style2" style="font-size: large">Enter Card Number </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Card Number Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-size: large" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Images/cardpayment.PNG" Width="674px" />
                </td>
                <td class="auto-style5">
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Name On Card </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Expiry Date On Card </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter a valid expiry date"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">CVV</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="cvv required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="#000099" BorderColor="#0066FF" BorderStyle="Solid" ForeColor="White" OnClick="Button1_Click" Text="Confirm Payment" Width="127px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
