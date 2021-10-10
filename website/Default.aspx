<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="website.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style =" width : 1150px ; height: 30px">
        <tr style =" background-color : #5f98F3">
            <td class="auto-style13">
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold ="True" Font-Names ="Arial" NavigateUrl="~/Log in .aspx" >Click to Log in </asp:HyperLink>
                <asp:Button ID="Button1" runat="server" BackColor="#FF5050" BorderStyle="Solid" OnClick="Button1_Click" Text="LogOut" Width="120px" />
            </td>
            <td style =" text-align : right ">
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="174px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton5" runat="server" Height="27px" ImageUrl="~/Images/search-var-flat.png" OnClick="ImageButton5_Click" Width="37px" />
            </td>
        </tr>
         
    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" Font-Names="Arial" RepeatDirection="Horizontal" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="True" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" BackColor="White" BorderColor="Red" BorderStyle="Solid" Height="279px" Width="278px" ImageUrl ='<%# Eval("ProductImage") %>'/>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label2" runat="server" Text="Price R : " Font-Bold="True" Font-Names="Arial" ForeColor="Black"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductPrice") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Quantity
                            <asp:DropDownList ID="Quantity" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/Images/cart.jpg" Width="62px" CommandArgument ='<%# Eval("ProductId") %>' CommandName ="AddToCart" OnClick="ImageButton1_Click"/>
                        </td>
                    </tr>
                </table>
            <br />
            <br />


        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductId], [ProductName], [ProductImage], [ProductPrice] FROM [Grocerries]"></asp:SqlDataSource>

</asp:Content>
