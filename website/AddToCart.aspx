<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="website.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <h2 style =" text-decoration : underline overline blink; color: #5f98f3">
                You have the following items in your Cart.
            </h2>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="X-Large" Font-Underline="True" ForeColor="Black" NavigateUrl="~/Default.aspx">Click Here To Continue Shopping....</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#9999FF" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" EmptyDataText="No Items Present In Your Shopping Cart" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr no">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pid" HeaderText="Product Id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ptotalprice" HeaderText="Total price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#003399" Font-Bold="True" Font-Italic="True" ForeColor="White" />
                <HeaderStyle BackColor="#003399" ForeColor="White" />
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Place Order" BackColor="#003366" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="45px" OnClick="Button1_Click" Width="121px" />
        </div>
    </form>
</body>
</html>
