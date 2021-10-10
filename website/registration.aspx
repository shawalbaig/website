<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="website.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 64%;
            height: 344px;
            margin-left: 136px;
            margin-right: 0px;
            margin-top: 45px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 23px;
            width: 188px;
        }
        .auto-style5 {
            width: 188px;
        }
        .auto-style6 {
            height: 29px;
            width: 188px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: x-large; font-style: italic; color: #FFFFFF; background-color: #000080">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Page<table class="auto-style1" style="background-color: #C0C0C0">
                <tr>
                    <td class="auto-style4">First name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbfname" runat="server" Width="177px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbfname" ErrorMessage="Please enter first name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbfname" ErrorMessage="Only charachters allowed in first name" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Last Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tblname" runat="server" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tblname" ErrorMessage="Please enter Last name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tblname" ErrorMessage="Only charachters allowed in last name" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Email address</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbemail" runat="server" Width="176px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbemail" ErrorMessage="Please enter email address" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Gender</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="124px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please enter address" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Address</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbaddress" ErrorMessage="Please enter address" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">cellphoneNumber</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbphone" runat="server" Width="170px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbphone" ErrorMessage="Please enter Cell phone number" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbphone" ErrorMessage="Invalid phone number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Password </td>
                    <td>
                        <asp:TextBox ID="tbpasssword" runat="server" OnTextChanged="TextBox7_TextChanged" TextMode="Password" Width="170px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbpasssword" ErrorMessage="Please Enter a password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Confirm Password </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" Width="172px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Confirm password feild is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbpasssword" ControlToValidate="TextBox8" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click" Text="Register" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Log in .aspx">Already have an account? Sign in here.</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Label ID="lbregisterstatus" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
