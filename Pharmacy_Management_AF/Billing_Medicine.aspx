<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Billing_Medicine.aspx.cs" Inherits="Pharmacy_Management_AF.Billing_Medicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 601px;
    }
    .auto-style5 {
        font-size: x-large;
        color: #FFFFFF;
        height: 41px;
            width: 624px;
        }
    .auto-style6 {
        font-size: x-large;
        color: #006600;
        text-decoration: underline;
    }
        .auto-style8 {
            font-size: large;
            color: #FFFF00;
        }
        .auto-style10 {
            width: 624px;
            height: 91px;
        }
        .auto-style12 {
            width: 624px;
            height: 72px;
        }
        .auto-style14 {
            width: 471px;
            height: 191px;
        }
        .auto-style15 {
            font-size: large;
            text-align: center;
        }
        .auto-style17 {
            color: #000066;
        }
        .auto-style23 {
            font-size: x-large;
            color: #006600;
        }
        .auto-style24 {
            width: 277px;
            height: 94px;
        }
        .auto-style25 {
            height: 48px;
            width: 277px;
        }
        .auto-style26 {
            width: 284px;
            height: 94px;
        }
        .auto-style27 {
            height: 48px;
            width: 284px;
        }
        .auto-style28 {
            height: 75px;
        }
        .auto-style29 {
            font-size: x-large;
            color: #000000;
            }
        .auto-style30 {
            width: 600px;
        }
        .auto-style31 {
            color: #000066;
            font-size: large;
            width: 742px;
            text-align: left;
        }
        .auto-style32 {
            width: 742px;
        }
        .auto-style33 {
            margin-right: 0px;
        }
        .auto-style35 {
            width: 624px;
            height: 4px;
        }
        .auto-style36 {
            color: #000000;
        }
        .auto-style37 {
            font-size: x-large;
            background-color: #99FF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <span class="auto-style6">Online Pharmacy Billing</span></strong><table align="left" class="auto-style4" style="border: 5px double #000000">
            <tr>
                <td class="auto-style5" style="border: 1px double #800000; background-color: #00FF99;"><strong>&nbsp;&nbsp;&nbsp; <span class="auto-style17">&nbsp;Search Medicine</span></strong></td>
            </tr>
            <tr>
                <td style="border: 1px double #800000; background-color: #3366CC" class="auto-style10">
                    <br />
                    <em><strong><span class="auto-style8">Enter</span></strong></em><strong><span class="auto-style8"> <em>Medicine Name</em></span></strong>&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Search Name" Font-Size="Medium" Height="27px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" OnClick="Button1_Click" Text="SEARCH" Height="32px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style35" style="border: 1px double #800000; background-color: #FFCCCC;">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bidarConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Medicine_M] WHERE ([name] = @name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <strong><span class="auto-style29">Here is your search</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style12" style="border: 1px double #800000">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource1" EmptyDataText="No Particular Record Fpond" Height="221px" Visible="False" Width="563px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="M_CODE" SortExpression="code">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("code") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="M_NAME" SortExpression="name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="M_COST" SortExpression="cost">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cost") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("cost") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="QUANTITY" SortExpression="quantity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EXPIRY DATE" SortExpression="date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CATEGORY" SortExpression="category">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("category")  %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("category") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ACTION" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Select" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Select"></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle BackColor="#CCCCCC" ForeColor="#0033CC" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <table align="center" class="auto-style14" style="border: 2px ridge #008080; background-color: #CCFFCC;">
            <tr>
                <td class="auto-style24">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="33px" placeholder="Enter M_Name" Width="197px" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox3" runat="server" Height="33px" placeholder="Enter M_Cost" Width="198px" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Height="33px" placeholder="Enter Quantity" Width="197px" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox5" runat="server" Height="32px" placeholder="Enter Expiry Date" Width="197px" Font-Size="Large" TextMode="Date" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style28">&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="35px" Text="ADD To BILL" Width="208px" OnClick="Button2_Click" />
&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="35px" Text="RESET" Width="200px" OnClick="Button3_Click" />
                </td>
            </tr>
            </table>
    </p>
    <span style="background-color: #003366">
    <table align="center" class="auto-style30" style="border-style: double; border-width: 2px">
        <tr>
            <td class="auto-style31" style="border: 3px dotted #000000; background-color: #000066;"><span class="auto-style36"><strong><span class="auto-style37">Pharmacy Bill</span></strong></span></span><strong style="background-color: #003366"><br />
                <br />
                <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style33" Font-Size="Large" TextMode="Date" BackColor="White" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style32" style="border: 3px dotted #000000;">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" Height="211px" Width="659px" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True" ForeColor="#333333" GridLines="None" OnRowCommand="GridView2_RowCommand" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowDeleting="GridView2_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="M_NAME">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="M_PRICE">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cost") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("cost") %>'></asp:Label>
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
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TOTAL">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Convert.ToInt32(Eval("cost")) * Convert.ToInt32(Eval("quantity")) %>' ></asp:Label>
                            </ItemTemplate>
                             <FooterTemplate>         
                                <asp:Label ID="Label7" runat="server" Text="GRAND TOTAL"></asp:Label>
                           </FooterTemplate>      
                        </asp:TemplateField>                                                    
                        <asp:TemplateField HeaderText="ACTION" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Delete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" Font-Size="Large" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" Font-Size="Large" />
                    <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </asp:Content>
