<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="aw_im.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div class="col-lg-12">
                                                        <asp:GridView CssClass="table" ID="gv_usrs" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="5" PageSize="5" OnRowCommand="gv_usrs_RowCommand" OnRowDataBound="gv_usrs_RowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                                            <Columns>
                                                                <asp:BoundField DataField="usuario_ID" HeaderText="ID" SortExpression="usuario_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn" >
<HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

<ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="cod_usr" HeaderText="ID" SortExpression="cod_usr" Visible="true" />
                                                                <asp:BoundField DataField="nom_comp" HeaderText="NOMBRE COMPLETO" SortExpression="nom_comp" />
                                                                <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                                <asp:TemplateField HeaderText="ESTATUS">
                                                                    <ItemTemplate>
                                                                        <asp:DropDownList ID="ddl_usr_estatus" runat="server" AutoPostBack="true">
                                                                        </asp:DropDownList>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="" HeaderImageUrl="~/img/ico_ve.png">
                                                                    <ItemTemplate>
                                                                        <asp:Button CssClass="btn btn-warning" ID="btn_infusr" runat="server" Text="ver" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <FooterStyle BackColor="#CCCCCC" />
                                                            <HeaderStyle BackColor="Black" ForeColor="White" Font-Bold="True" />
                                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                                        </asp:GridView>
                                                    </div>
    </form>
</body>
</html>
