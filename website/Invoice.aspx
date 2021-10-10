<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="website.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <table border =" 1">
                        <tr>
                            <td>
                                <h2>
                                    Retail Invoice
                                </h2>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                Order no:
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <br /><br />
                                Order Date : 
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>


                            </td>
                        </tr>
                          <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            Buyers Address: <br />
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                                        </td>
                                        <td>
                                            Sellers Address: <br /> <br />
                                            Shop no 12, mayfair , johanesburg
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1000px">
                                    <Columns>
                                        <asp:BoundField DataField="sno" HeaderText="SNo">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="productid" HeaderText="ProductId">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="productname" HeaderText="ProductName">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="price" HeaderText="Price">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="totalprice" HeaderText="TotalPrice">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                Grand Total :
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                This is a computer generated invoice and does not need a signature.
                            </td>
                        </tr>
                    </table>
            </asp:Panel>
                    
                              
               

        </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#00CC00" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" NavigateUrl="~/Default.aspx">Go to Home Page.. </asp:HyperLink>
            </p>
    </form>
</body>
</html>
