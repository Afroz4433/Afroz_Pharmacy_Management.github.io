<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Place_Order.aspx.cs" Inherits="Pharmacy_Management_AF.Place_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 631px;
        }
        .auto-style6 {
            margin-top: 27px;
        }
        .auto-style7 {
            border-style: double;
            height: 61px;
            color: #FFFF00;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            width: 668px;
        }
        .auto-style10 {
            height: 63px;
            text-decoration: underline;
            font-size: x-large;
            color: #009933;
        }
        .auto-style11 {
            height: 75px;
        }
        .auto-style12 {
            font-size: large;
            color: #800000;
        }
        .auto-style13 {
            color: #009999;
            background-color: #0066CC;
        }
        .auto-style14 {
            text-decoration: underline;
            font-size: x-large;
            color: #000066;
        }
        .auto-style15 {
            background-color: #CCFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p style="border-color: #FFFFFF; background-color: #FFFFFF">
        <table align="left" class="auto-style4" style="border: 4px double #000000">
            <tr>
                <td class="auto-style7" style="background-color: #3366CC"><strong style="border-style: inherit; border-width: 0px; border-color: #FFFFFF;"><span class="auto-style13">&nbsp; </span><span class="auto-style12" style="border-width: 0px; border-color: #FFFFFF; border-style: inherit; background-color: #FFFFFF">HERE WE CAN SEE THE PRODUCTS QUANTITY ONLY LESSTHEN 50</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-style: inherit; border-width: 0px; border-color: #FFFFFF;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" CssClass="auto-style6" ForeColor="Black" GridLines="Vertical" Height="282px" Width="808px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" Text="SELECT All" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="M_CODE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("code") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="M_NAME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="M_COST">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("cost") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("cost") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="QUANTITY">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EXPIRY DATE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CATEGORY">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("category") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("category") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>
        <span class="auto-style14"><strong><span class="auto-style15">Online Order Pharmacy Products</span></strong></span><br />
        <br />
        <table align="center" class="auto-style9" style="border: 5px dotted #800000">
            <tr>
                <td class="auto-style10" style="background-color: #660066"><strong style="background-color: #FFFFFF">PLACE ORDER</strong></td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #CCFFFF">&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#006666" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="46px" OnClick="Button1_Click" Text="Click To Place Order" Width="252px" />
&nbsp;<br />
                    <br />
&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#006600"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
