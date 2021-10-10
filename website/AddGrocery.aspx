<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AddGrocery.aspx.cs" Inherits="website.AddGrocery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 227px;
        }
        .auto-style13 {
            margin-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style =" height :510px  ">
        <table style =" width : 700px ; height: 390px ; background-color : #5f98f3 ">
            <tr>
                <td class="auto-style12">
                    <h1>Adding Groceryitems

                 </h1><hr />
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <h3>Product Id</h3>
                </td>
                
                <td>

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style13"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <h3>Product Name</h3>
                </td>
                 <td>

                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <h3>Product Description</h3>
                </td>
                 <td>

                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style13"></asp:TextBox>

                </td>

            </tr>
            <tr>
                <td class="auto-style12">
                    <h3>Product Image</h3>
                </td>
                 <td>

                    <asp:FileUpload ID="FileUpload1" runat="server" />


                </td>

            </tr>
            <tr>
                <td class="auto-style12">
                    <h3> Product Price</h3>
                </td>
                <td>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                  
                </td>

            </tr>
            <tr>
                <td class="auto-style12">
                       <h3>  </h3>
                </td>
                 <td>

                    

                </td>

            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                 <td>

                     <asp:Button ID="Button2" runat="server" Text="Add item " Font-Bold="True" Font-Names="Arial" ForeColor="#000066" Width="130px" OnClick="Button1_Click" />

                </td>

            </tr>
        </table>
    </div>
</asp:Content>
