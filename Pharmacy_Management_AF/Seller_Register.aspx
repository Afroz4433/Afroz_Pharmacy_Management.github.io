<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Seller_Register.aspx.cs" Inherits="Pharmacy_Management_AF.Seller_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 556px;
        }
        .auto-style5 {
            width: 784px;
        }
        .auto-style6 {
            color: #000066;
            font-size: x-large;
            height: 78px;
            text-align: left;
        }
        .auto-style12 {
            width: 287px;
            height: 68px;
        }
        .auto-style13 {
            width: 40px;
            height: 68px;
        }
        .auto-style14 {
            height: 68px;
        }
        .auto-style15 {
            width: 287px;
            height: 74px;
        }
        .auto-style16 {
            width: 40px;
            height: 74px;
        }
        .auto-style17 {
            height: 74px;
        }
        .auto-style18 {
            width: 287px;
            height: 78px;
        }
        .auto-style19 {
            width: 40px;
            height: 78px;
        }
        .auto-style20 {
            height: 78px;
        }
        .auto-style21 {
            font-size: large;
        }
        .auto-style23 {
            width: 656px;
            height: 321px;
        }
        .auto-style25 {
            color: #FFFFFF;
        }
        .auto-style26 {
            width: 900px;
            height: 59px;
        }
        .auto-style27 {
            font-size: x-large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <table align="left" class="auto-style4" style="border: 5px double #000000; background-color: #CCCCFF;">
        <tr>
            <td class="auto-style6" colspan="3" style="background-color: #660033"><strong><span class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style25">&nbsp;</span></span><span class="auto-style25"><span class="auto-style21">&nbsp;&nbsp; SELLER REGISTRATION FORM</span></span>&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style18">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Name" Font-Size="Large" Height="36px" Width="222px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Height="40px" Width="218px">
                    <asp:ListItem>Select Your Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Placeholder="Enter Your Email Id" Font-Size="Large" Height="35px" Width="223px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox3" runat="server" Placeholder="Set Your Password" Font-Size="Large" Height="35px" Width="219px"></asp:TextBox>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Placeholder="Enter Your Address" Font-Size="Large" Height="35px" Width="222px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:Button ID="Button1" runat="server" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" Height="40px" Text="REGISTER" Width="225px" ForeColor="Black" OnClick="Button1_Click" />
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#999966" Font-Bold="True" Font-Size="Large" Height="40px" Text="UPDATE" Width="228px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#CC99FF" Font-Bold="True" Font-Size="Large" Height="40px" Text="DELETE" Width="225px" OnClick="Button3_Click" OnClientClick="return confirm('are you sure you want to delete');" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="* Email Not in currect format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="* Enter Password" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;<table align="center" class="auto-style26">
        <tr>
            <td class="auto-style27" style="background-color: #336699"><strong>SELLER INFORMATION</strong></td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style5" border="1" align="center">
        <tr>
            <td style="border: 4px solid #000000" class="auto-style23">
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="324px" Width="769px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="SELLER ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SELLER NAME">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="GENDER">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EMAIL">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PASSWORD">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ADDRESS">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ACTION" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Select"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
