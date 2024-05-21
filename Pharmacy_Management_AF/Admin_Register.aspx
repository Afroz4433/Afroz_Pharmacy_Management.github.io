<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_Register.aspx.cs" Inherits="Pharmacy_Management_AF.Admin_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 1140px;
        }
        .auto-style5 {
            height: 81px;
            text-align: left;
        }
        .auto-style10 {
            height: 81px;
            width: 397px;
        }
        .auto-style12 {
            width: 397px;
        }
        .auto-style13 {
            height: 81px;
            width: 364px;
            text-align: left;
        }
        .auto-style16 {
            height: 100px;
            width: 397px;
        }
        .auto-style17 {
            height: 100px;
            width: 364px;
            text-align: left;
        }
        .auto-style18 {
            height: 100px;
            text-align: left;
        }
        .auto-style19 {
            height: 79px;
        }
        .auto-style20 {
            width: 364px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#003399" Text="ADMIN REGISTRATION FORM"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="right" class="auto-style4">
            <tr>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Name" Height="40px" Width="223px" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style13"><asp:DropDownList ID="DropDownList1" runat="server" Height="44px" Width="224px" Font-Size="Large">
                    <asp:ListItem>-----Select Your Gender-----</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* Name Should Not Be Blank" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Height="40px" placeholder="Enter Your Email Id" Width="223px" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style17"><asp:TextBox ID="TextBox4" runat="server" Height="40px" placeholder="Set Your Password" Width="218px" Font-Size="Large" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="* Password Should Not Be Blank" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="* Email Not in currect format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style19">&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#CCCCFF" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="49px" Text="REGISTER" Width="479px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </p>
</asp:Content>
