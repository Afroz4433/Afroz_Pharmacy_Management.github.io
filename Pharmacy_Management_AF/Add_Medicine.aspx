<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_Medicine.aspx.cs" Inherits="Pharmacy_Management_AF.Add_Medicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 526px;
        }
        .auto-style7 {
            font-size: x-large;
            height: 79px;
            width: 256px;
        }
        .auto-style8 {
            height: 79px;
            width: 274px;
        }
        .auto-style14 {
            height: 70px;
        }
        .auto-style15 {
            height: 97px;
            width: 256px;
        }
        .auto-style16 {
            height: 55px;
            width: 256px;
        }
        .auto-style17 {
            height: 89px;
            width: 256px;
        }
        .auto-style18 {
            width: 256px;
        }
        .auto-style22 {
            width: 907px;
            height: 82px;
        }
        .auto-style23 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style24 {
            text-decoration: underline;
            background-color: #FFFFFF;
        }
        .auto-style30 {
            height: 97px;
            width: 274px;
        }
        .auto-style31 {
            height: 55px;
            width: 274px;
        }
        .auto-style32 {
            height: 89px;
            width: 274px;
        }
        .auto-style33 {
            width: 274px;
        }
        .auto-style34 {
            width: 600px;
        }
        .auto-style35 {
            font-size: x-large;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style36 {
            background-color: #FFFFFF;
        }
        .auto-style37 {
            color: #000000;
            font-size: x-large;
        }
        .auto-style38 {
            background-color: #CCFFFF;
        }
        .auto-style39 {
            color: #000000;
            font-size: x-large;
            background-color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="left" class="auto-style4" style="border: 3px solid #000000">
            <tr>
                <td class="auto-style7" style="background-color: #CCFF99"><strong>INSERT MEDICINE</strong></td>
                <td class="auto-style8" style="background-color: #FFCC99"><strong><span class="auto-style23">SELLER DETAILS</span></strong><br />
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0000CC" NavigateUrl="~/Seller_Register.aspx" CssClass="auto-style36">Click Me</asp:HyperLink>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Medicine Code" Font-Size="Large" Height="39px" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" placeholder="Enter Medicine Name" Height="39px" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Medicine Cost" Font-Size="Large" Height="38px" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Quantity" Font-Size="Large" Height="39px" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Select Expiry Date" Font-Size="Large" Height="39px" Width="210px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style32">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Height="40px" Width="217px">
                        <asp:ListItem>--Select Category--</asp:ListItem>
                        <asp:ListItem>Tablets</asp:ListItem>
                        <asp:ListItem>Ointment</asp:ListItem>
                        <asp:ListItem>Syrups</asp:ListItem>
                        <asp:ListItem>Capsules</asp:ListItem>
                        <asp:ListItem>Drops</asp:ListItem>
                        <asp:ListItem>Siringe</asp:ListItem>
                        <asp:ListItem>Glocose</asp:ListItem>
                        <asp:ListItem>Tupes</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="2">
                    <asp:Button ID="Button1" runat="server" BackColor="#006699" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="42px" Text="ADD MEDICINE" Width="480px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#6600CC" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="42px" Text="UPDATE" Width="244px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#6600CC" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="42px" Text="DELETE" Width="210px" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure to delete ?');" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
        </table>
        <table align="center" class="auto-style22" style="border: 4px dashed #000000">
            <tr>
                <td style="background-color: #339966"><strong><span class="auto-style35">CHECK STOCK AVAILABALTY</span></strong><br />
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style24" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" NavigateUrl="~/Place_Order.aspx">Click Me</asp:HyperLink>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <br class="auto-style39" />
        <span class="auto-style37"><strong><span class="auto-style38">INSERTED MEDICINE DETAILS </span></strong></span><table align="center" class="auto-style34">
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="268px" OnRowCommand="GridView2_RowCommand" Width="829px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
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
                            <asp:TemplateField HeaderText="ACTION" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Select"></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle ForeColor="Blue" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>
