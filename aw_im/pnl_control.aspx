<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pnl_control.aspx.cs" Inherits="aw_im.pnl_control" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css" />

    <link href="estilos/style.css" rel="stylesheet" />
    <link href="estilos/estilos_e.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <title></title>
</head>
<body>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header text-center">
                    <img class="img-responsive  img-thumbnail" src="img/im.png" width="128" />
                </div>

                <ul class="list-unstyled components">

                    <li runat="server" id="li1">
                        <asp:LinkButton ID="lkb_usr_f" runat="server" Text="" OnClick="lkb_usr_f_Click">
                        </asp:LinkButton>
                    </li>
                    <li>
                        <h6>
                            <asp:LinkButton ID="lkb_usr_fp" runat="server" Text=""></asp:LinkButton>
                        </h6>
                    </li>
                    <li>
                        <h6>
                            <asp:LinkButton ID="lkb_usr_fc" runat="server" Text="" OnClick="lkb_usr_fc_Click"></asp:LinkButton>
                        </h6>
                    </li>
                </ul>

                <ul class="list-unstyled components">
                    <li runat="server" id="li_resumen">
                        <asp:LinkButton ID="lkb_resumen" runat="server" Text="Resumen" OnClick="lkb_resumen_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_adeudos">
                        <asp:LinkButton ID="lkb_adeudos" runat="server" Text="Adeudos"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_servicios">
                        <asp:LinkButton ID="lkb_servicios" runat="server" Text="Servicios" OnClick="lkb_servicios_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_vnta">
                        <asp:LinkButton ID="lkb_ctrl_vnta" runat="server" Text="Ingresos" OnClick="lkb_ctrl_vnta_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_comp">
                        <asp:LinkButton ID="lkb_ctrl_compras" runat="server" Text="Gastos" OnClick="lkb_ctrl_compras_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_inv">
                        <asp:LinkButton ID="lkb_ctrl_inv" runat="server" Text="Inventario" OnClick="lkb_ctrl_inv_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_prov">
                        <asp:LinkButton ID="lkb_ctrl_prov" runat="server" Text="Proveedores" OnClick="lkb_ctrl_prov_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_clte">
                        <asp:LinkButton ID="lkb_ctrl_clte" runat="server" Text="Clientes" OnClick="lkb_ctrl_clte_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_cnt">
                        <asp:LinkButton ID="lkb_ctrl_centros" runat="server" Text="Centros" OnClick="lkb_ctrl_centros_Click"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_usrs">
                        <asp:LinkButton ID="lkb_ctrl_usrs" runat="server" Text="Usuarios" OnClick="lkb_ctrl_usrs_Click"></asp:LinkButton>
                    </li>

                    <li runat="server" id="li_config">
                        <asp:LinkButton ID="lkb_config" runat="server" Text="Configuración" OnClick="lkb_config_Click"></asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="lkb_salir" runat="server" Text="Salir" OnClick="lkb_salir_Click"></asp:LinkButton>
                    </li>
                </ul>

                <ul class="list-unstyled CTAs">
                    <li>
                        <h6>Google Chrome <i class="fab fa-chrome text-danger"></i></h6>
                    </li>
                </ul>
            </nav>

            <!-- Page Content  -->
            <div id="content">

                <nav class="navbar navbar-expand-lg navbar-light bg-primary">
                    <div class="container-fluid">

                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>Menu</span>
                        </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-align-justify"></i>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="nav navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#" title="En Construcción">?</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <asp:UpdatePanel ID="up_usrf" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_usrf" visible="false">
                            <div class="card-header bg-primary">Actualizar datos de Usuario</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <input type="text" class="form-control" runat="server" id="i_nombresf" required="required" placeholder="Nombre(s)" />
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input type="text" class="form-control" runat="server" id="i_apaternof" required="required" placeholder="Apellido Paterno" />
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input type="text" class="form-control" runat="server" id="i_amaternof" required="required" placeholder="Apellido Materno" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <input type="text" class="form-control" runat="server" id="i_usrf" required="required" placeholder="Usuario" />
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input type="password" class="form-control" runat="server" id="i_clavef" required="required" placeholder="Contraseña" />
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input type="email" class="form-control" runat="server" id="i_emalf" required="required" placeholder="Correo Corporativo" />
                                    </div>
                                </div>
                                <asp:Button CssClass="btn btn-danger" ID="btn_usrf" runat="server" Text="Guardar" OnClick="btn_usrf_Click" TabIndex="11" />
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_empf" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>

                        <div class="card border-primary" runat="server" id="card_empf" visible="false">
                            <div class="card-header bg-primary">Datos de Centro</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" runat="server" id="iemp_nom" required="required" placeholder="Compañia" tabindex="1" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" runat="server" id="iemp_email" required="required" placeholder="Email" tabindex="2" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <input type="tel" class="form-control" runat="server" id="iemp_tel" placeholder="Teléfono (Opcional)" tabindex="3" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" runat="server" id="iemp_callenum" placeholder="Calle y Número" tabindex="4" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <input type="text" class="form-control" runat="server" id="iemp_cp" placeholder="Código Postal" tabindex="5" />
                                            <span class="input-group-btn">
                                                <asp:LinkButton ID="btn_iemp_cp" runat="server" CssClass="btn btn-danger form-control" OnClick="btn_iemp_cp_Click" TabIndex="6">
                                                                    <i class="fas fa-search"></i>
                                                </asp:LinkButton>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <select class="form-control" runat="server" id="iemp_colonia" tabindex="7">
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" runat="server" id="iemp_municipio" placeholder="Municipio" disabled="disabled" tabindex="8" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" runat="server" id="iemp_estado" placeholder="Estado" disabled="disabled" tabindex="9" />
                                        </div>
                                    </div>
                                </div>
                                <asp:Button CssClass="btn btn-danger" ID="btn_iemp" runat="server" Text="Guardar" OnClick="btn_iemp_Click" TabIndex="10" />
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_resumen" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_resumen">
                            <div class="card-header bg-primary">Resumen Total</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3 text-center">
                                        <h6 class="text-danger">Clientes  <i class="fas fa-briefcase text-danger fa-lg"></i></h6>
                                        <asp:LinkButton ID="LinkButton1" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <h6 class="text-danger">Ingresos <i class="fas fa-shopping-basket text-danger fa-lg"></i></h6>
                                        <asp:LinkButton ID="LinkButton2" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <h6 class="text-danger">Gastos   <i class="fas fa-shopping-cart text-danger fa-lg"></i></h6>
                                        <asp:LinkButton ID="LinkButton3" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <h6 class="text-danger">Balance <i class="fa fa-list  fa-lg text-danger"></i></h6>
                                        <asp:LinkButton ID="LinkButton4" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <select class="form-control" runat="server" id="CentrosFiltro" required="required" tabindex="1" visible="false">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center">
                                      <input type="month" class="form-control" runat="server" id="dtResumenPeriodos" required="required" placeholder="Mes" tabindex="15" title="Mes" />
                                        <asp:Button CssClass="btn btn-danger form-control" ID="btn_ResumenPeriodos" runat="server" Text="Consultar" TabIndex="11" OnClick="lkb_ResumenPeriodos_Click" />
                                    </div>
                                    <div class="col-md-2 text-center">
                                        <h6 class="text-danger">Clientes  <i class="fas fa-briefcase text-danger fa-lg"></i></h6>
                                        <asp:LinkButton ID="LinkButton5" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                    <div class="col-md-2 text-center">
                                        <h6 class="text-danger">Ingresos <i class="fas fa-shopping-basket text-danger fa-lg"></i></h6>
                                        <asp:LinkButton ID="LinkButton6" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                    <div class="col-md-2 text-center">
                                        <h6 class="text-danger">Gastos   <i class="fas fa-shopping-cart text-danger fa-lg"></i></h6>
                                        <asp:LinkButton ID="LinkButton7" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                    <div class="col-md-2 text-center">
                                        <h6 class="text-danger">Balance <i class="fa fa-list  fa-lg text-danger"></i></h6>
                                        <asp:LinkButton ID="LinkButton8" runat="server" Text=""></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_servicios" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_servicios" visible="false">
                            <div class="card-header bg-primary">
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_serv" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="15" OnPageIndexChanging="gv_serv_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="inventario_ID" HeaderText="ID" SortExpression="inventario_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="cod_inv" HeaderText="ID" SortExpression="cod_inv" />
                                                <asp:BoundField DataField="nivel_escolar_desc" HeaderText="CATEGORIA" SortExpression="nivel_escolar_desc" Visible="true" />
                                                <asp:BoundField DataField="grado_escolar_desc" HeaderText="CATEGORIA" SortExpression="grado_escolar_desc" Visible="true" />
                                                <asp:BoundField DataField="categoria" HeaderText="CATEGORIA" SortExpression="categoria" Visible="true" />
                                                <asp:BoundField DataField="caracteristica" HeaderText="CARACTERISTICA" SortExpression="caracteristica" />

                                                <asp:BoundField DataField="costo" HeaderText="COSTO" SortExpression="costo" DataFormatString="{0:C2}" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_ventas" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_ventas" visible="false">
                            <div class="card-header bg-primary">

                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <span class="input-group-append">
                                            <asp:LinkButton ID="lkb_vnta_agregar" CssClass="form-control" runat="server" TabIndex="1" OnClick="lkb_vnta_agregar_Click">
                                                                    <i class="fas fa-plus text-danger"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                    <asp:TextBox CssClass="form-control" ID="i_vnta_buscar" runat="server" placeholder="Buscar Ingreso" TextMode="Search" TabIndex="2"></asp:TextBox>
                                    <ajaxToolkit:AutoCompleteExtender ID="ace_vnta_buscar" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_vnta_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                    <div class="input-group-append">
                                        <span class="input-group-append">
                                            <asp:LinkButton ID="lkb_vnta_buscar" runat="server" CssClass="form-control" TabIndex="3" OnClick="lkb_vnta_buscar_Click">
                                                            <i class="far fa-check-circle text-danger"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div runat="server" id="div_i_vnta" visible="false">

                                    <div runat="server" id="div_i_vnta_busr" visible="true">
                                        <div class="input-group mb-3">
                                            <div class="input-group-append">
                                                <span class="input-group-append">
                                                    <asp:LinkButton ID="lkb_vnta_clte" CssClass="form-control" runat="server" TabIndex="4" OnClick="lkb_vnta_clte_Click">
                                                                       <h6 class="mb-3">Datos Cliente <i class="fas fa-plus  text-danger"></i></h6>
                                                    </asp:LinkButton>
                                                </span>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="i_vnta_clte" runat="server" placeholder="Buscar Cliente" TextMode="Search" TabIndex="5"></asp:TextBox>
                                            <ajaxToolkit:AutoCompleteExtender ID="ace_vnta_clte" runat="server" ServiceMethod="busca_clte" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_vnta_clte" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                            <div class="input-group-append">
                                                <span class="input-group-append">
                                                    <asp:LinkButton ID="lkb_vnta_cltef" runat="server" CssClass="form-control" TabIndex="6" OnClick="lkb_vnta_cltef_Click">
                                                                   <i class="fas fa-plus-circle"></i>
                                                    </asp:LinkButton>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" runat="server" id="div_i_vnta_nusr" visible="true">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_vnta_codclte" required="required" placeholder="*Código Cliente" tabindex="7" disabled="disabled" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_vnta_nombresc" required="required" placeholder="*Nombre(s)" tabindex="8" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_vnta_apaternoc" required="required" placeholder="*Apellido Paterno" tabindex="9" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_vnta_amaternoc" required="required" placeholder="*Apellido Materno" tabindex="10" />
                                            </div>
                                        </div>
                                    </div>
                                    <div runat="server" id="div_i_vnta_binv" visible="true">
                                        <div class="input-group mb-3">

                                            <asp:TextBox CssClass="form-control" ID="i_vnta_inv" runat="server" placeholder="Buscar Inventario" required="required" TextMode="Search" TabIndex="12"></asp:TextBox>
                                            <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" ServiceMethod="busca_inv" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_vnta_inv" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                            <div class="input-group-append">
                                                <span class="input-group-append">
                                                    <asp:LinkButton ID="lkb_vnta_invf" runat="server" CssClass="form-control" TabIndex="13" OnClick="lkb_vnta_invf_Click">
                                                                  <i class="fas fa-plus-circle"></i>
                                                    </asp:LinkButton>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-12">
                                                <asp:GridView CssClass="table table-sm" ID="gv_inv_vnta" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="5" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnRowCommand="gv_inv_vnta_RowCommand">
                                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="inventario_ID" HeaderText="ID" SortExpression="inventario_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                            <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                            <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="cod_inv" HeaderText="ID" SortExpression="cod_inv" />
                                                        <asp:BoundField DataField="categoria" HeaderText="CATEGORIA" SortExpression="categoria" Visible="true" />
                                                        <asp:BoundField DataField="caracteristica" HeaderText="CARACTERISTICA" SortExpression="caracteristica" />
                                                        <asp:BoundField DataField="costo" HeaderText="COSTO" SortExpression="costo" DataFormatString="{0:C2}" />
                                                        <asp:TemplateField HeaderText="CANTIDAD">
                                                            <ItemTemplate>
                                                                <asp:TextBox CssClass="text-center" ID="i_vnta_invcant" runat="server" TextMode="Number" TabIndex="12" Width="70" required="required"></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="DESC %">
                                                            <ItemTemplate>
                                                                <asp:TextBox CssClass="text-center" ID="i_vnta_invdesc" runat="server" TextMode="Number" TabIndex="12" Width="60" required="required"></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="">
                                                            <ItemTemplate>
                                                                <asp:Button CssClass="btn btn-warning" ID="btn_inv_vnta" runat="server" Text="+" CommandName="btn_inv_vnta" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCCCC" />
                                                    <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                                    <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <asp:GridView CssClass="table table-sm" ID="gv_inv_vntaf" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="5" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnRowCommand="gv_inv_vntaf_RowCommand">
                                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="inventario_ID" HeaderText="ID" SortExpression="inventario_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                            <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>
                                                            <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="cod_inv" HeaderText="ID" SortExpression="cod_inv" />
                                                        <asp:BoundField DataField="categoria" HeaderText="CATEGORIA" SortExpression="categoria" Visible="true" />
                                                        <asp:BoundField DataField="caracteristica" HeaderText="CARACTERISTICA" SortExpression="caracteristica" />
                                                        <asp:BoundField DataField="costo" HeaderText="COSTO" SortExpression="costo" DataFormatString="{0:C2}" />
                                                        <asp:BoundField DataField="cantidad" HeaderText="CANTIDAD" SortExpression="cantidad" DataFormatString="{0:###,###.##}" />
                                                        <asp:BoundField DataField="desc" HeaderText="DESC %" SortExpression="desc" DataFormatString="{0:P2}" />
                                                        <asp:TemplateField HeaderText="">
                                                            <ItemTemplate>
                                                                <asp:Button CssClass="btn btn-warning" ID="btn_inv_vnta" runat="server" Text="-" CommandName="btn_inv_vnta" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCCCC" />
                                                    <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                                    <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <asp:GridView CssClass="table table-sm" ID="gv_vntaff" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="15" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnPageIndexChanging="gv_vntaff_PageIndexChanging" OnRowCommand="gv_vntaff_RowCommand" OnRowDataBound="gv_vntaff_RowDataBound">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="vnta_ID" HeaderText="ID" SortExpression="vnta_ID" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                        <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>
                                                        <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="cod_vnta" HeaderText="ID" SortExpression="cod_vnta" />
                                                    <asp:TemplateField HeaderText="ESTATUS">
                                                        <ItemTemplate>
                                                            <asp:DropDownList ID="ddl_vnta_estatus" runat="server" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                    <asp:TemplateField HeaderText="VER">
                                                        <ItemTemplate>
                                                            <asp:Button CssClass="btn btn-warning" ID="btn_inv_vnta" runat="server" Text="Ver" CommandName="btn_inv_vnta" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ACTUALIZAR">
                                                        <ItemTemplate>
                                                            <asp:Button CssClass="btn btn-warning" ID="btn_up_vnta" runat="server" Text="Actualiza" CommandName="btn_up_vnta" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                                <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                        </div>
                                    </div>

                                    <asp:Button CssClass="btn btn-danger" ID="btn_vnta" runat="server" Text="Generar Ingreso" Enabled="false" TabIndex="14" OnClick="btn_vnta_Click" />

                                    <asp:UpdateProgress ID="prgLoadingStatus" runat="server" DynamicLayout="true">
                                        <ProgressTemplate>
                                            <div id="overlay">
                                                <img src="img/ajax-loader.gif" />
                                            </div>
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>

                                    <div class="row">

                                        <div class="row" id="div_rpt" runat="server" visible="false">
                                            <div class="col-lg-1 ">
                                            </div>
                                            <div class="col-lg-8 text-center">
                                                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="800px" waitmessagefont-names="Verdana" waitmessagefont-size="14pt" Width="800px" ShowBackButton="False" ShowFindControls="False" ShowPageNavigationControls="False" AsyncRendering="true" interactivedeviceinfos="(Collection)">
                                                </rsweb:ReportViewer>
                                            </div>
                                            <div class="col-lg-1 ">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btn_vnta" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_compras" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_compras" visible="false">
                            <div class="card-header bg-primary">
                                <div class="text-right">

                                    <div class="input-group">

                                        <asp:LinkButton ID="lkb_comp_agregar" CssClass="btn" runat="server" TabIndex="1" OnClick="lkb_comp_agregar_Click">
                                                                    <i class="fas fa-plus  text-danger fa-lg"></i>
                                        </asp:LinkButton>
                                        <div class="col-md-2 text-center">

                                            <input type="month" class="form-control" runat="server" id="dtGastosMes" required="required" placeholder="Mes" tabindex="15" title="Mes" />
                                        </div>
                                        <asp:TextBox CssClass="form-control" ID="i_comp_buscar" runat="server" placeholder="Buscar Gasto" TextMode="Search" TabIndex="3"></asp:TextBox>

                                        <ajaxToolkit:AutoCompleteExtender ID="ace_comp_buscar" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_comp_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lkb_comp_buscar" runat="server" CssClass="btn btn-danger form-control" TabIndex="4" OnClick="lkb_comp_buscar_Click">
                                                                    <i class="fas fa-search"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_comp" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="5" OnRowCommand="gv_comp_RowCommand" OnRowDataBound="gv_comp_RowDataBound" OnPageIndexChanging="gv_comp_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="compra_ID" HeaderText="ID" SortExpression="compra_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>
                                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="cod_comp" HeaderText="ID" SortExpression="cod_comp" />
                                                <asp:BoundField DataField="categoria" HeaderText="CATEGORIA" SortExpression="categoria" Visible="true" />
                                                <asp:BoundField DataField="comp_desc" HeaderText="DESCRIPCÍON" SortExpression="comp_desc" />
                                                <asp:TemplateField HeaderText="ESTATUS">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddl_comp_estatus" runat="server" AutoPostBack="true">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                <asp:TemplateField HeaderText="" HeaderImageUrl="~/img/ico_ve.png">
                                                    <ItemTemplate>

                                                        <asp:Button CssClass="btn btn-warning" ID="btn_comp" runat="server" Text="Ir" CommandName="btn_comp" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div runat="server" id="div_i_comp" visible="false">

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="number" class="form-control" runat="server" id="i_comp_cant" required="required" placeholder="*Cantidad" tabindex="7" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_comp_cat" required="required" placeholder="*Categoria" tabindex="7" />
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input type="number" class="form-control" runat="server" id="i_comp_costo" required="required" placeholder="*Costo" tabindex="7" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <textarea class="form-control" runat="server" id="i_comp_desc" required="required" placeholder="*Descripción" tabindex="9" />
                                            </div>
                                        </div>
                                    </div>

                                    <asp:Button CssClass="btn btn-danger" ID="btn_comp_guardar" runat="server" Text="Guardar" TabIndex="11" OnClick="btn_comp_guardar_Click" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_inventario" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_inventario" visible="false">
                            <div class="card-header bg-primary">

                                <div class="text-right">

                                    <div class="input-group">

                                        <asp:LinkButton ID="lkb_inv_agregar" CssClass="btn" runat="server" TabIndex="1" OnClick="lkb_inv_agregar_Click">
                                                                    <i class="fas fa-plus  text-danger fa-lg"></i>
                                        </asp:LinkButton>
                                        <asp:TextBox CssClass="form-control" ID="i_inv_buscar" runat="server" placeholder="Buscar Inventario" required="required" TextMode="Search" TabIndex="2"></asp:TextBox>

                                        <ajaxToolkit:AutoCompleteExtender ID="ace_inv_buscar" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_inv_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lkb_inv_buscar" runat="server" CssClass="btn btn-danger form-control" TabIndex="3" OnClick="lkb_inv_buscar_Click">
                                                                    <i class="fas fa-search"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_inv" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="5" OnRowCommand="gv_inv_RowCommand" OnRowDataBound="gv_inv_RowDataBound" OnPageIndexChanging="gv_inv_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="inventario_ID" HeaderText="ID" SortExpression="inventario_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="cod_inv" HeaderText="ID" SortExpression="cod_inv" />
                                                <asp:BoundField DataField="categoria" HeaderText="CATEGORIA" SortExpression="categoria" Visible="true" />
                                                <asp:BoundField DataField="caracteristica" HeaderText="CARACTERISTICA" SortExpression="caracteristica" />
                                                <asp:TemplateField HeaderText="ESTATUS">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddl_inv_estatus" runat="server" AutoPostBack="true">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                <asp:TemplateField HeaderText="" HeaderImageUrl="~/img/ico_ve.png">
                                                    <ItemTemplate>

                                                        <asp:Button CssClass="btn btn-warning" ID="btn_infusr" runat="server" Text="Ir" CommandName="btn_inv_inv" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div runat="server" id="div_i_inv" visible="false">

                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <asp:DropDownList CssClass="form-control input-box" ID="i_inv_nivesc" runat="server" TabIndex="5" required="required" AutoPostBack="true" OnSelectedIndexChanged="i_inv_nivesc_SelectedIndexChanged"></asp:DropDownList>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="i_inv_gradesc" required="required" tabindex="6">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <input type="number" class="form-control" runat="server" id="i_inv_costo" required="required" placeholder="*Costo" tabindex="7" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <textarea class="form-control" runat="server" id="i_inv_cat" required="required" placeholder="*Categoria" tabindex="8" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <textarea class="form-control" runat="server" id="i_inv_desc" required="required" placeholder="*Descripción" tabindex="9" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <textarea class="form-control" runat="server" id="i_inv_caract" required="required" placeholder="*Caracteristica" tabindex="10" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_periodo_inv" required="required" tabindex="11">
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <asp:Button CssClass="btn btn-danger" ID="btn_inv_guardar" runat="server" Text="Guardar" TabIndex="11" OnClick="btn_inv_guardar_Click" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_proveedores" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_proveedores" visible="false">
                            <div class="card-header bg-primary">
                                <div class="text-right">

                                    <div class="input-group">

                                        <asp:LinkButton ID="lkb_prov_agregar" CssClass="btn" runat="server" TabIndex="1" OnClick="lkb_prov_agregar_Click">
                                                                    <i class="fas fa-plus  text-danger fa-lg"></i>
                                        </asp:LinkButton>
                                        <asp:TextBox CssClass="form-control" ID="i_prov_buscar" runat="server" placeholder="Buscar Proveedor" TextMode="Search" TabIndex="2"></asp:TextBox>

                                        <ajaxToolkit:AutoCompleteExtender ID="ace_prov_buscar" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_prov_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lkb_prov_buscar" runat="server" CssClass="btn btn-danger form-control" TabIndex="3" OnClick="lkb_prov_buscar_Click">
                                                                    <i class="fas fa-search"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_prov" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="5" OnRowCommand="gv_prov_RowCommand" OnRowDataBound="gv_prov_RowDataBound" OnPageIndexChanging="gv_prov_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="prov_ID" HeaderText="ID" SortExpression="prov_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="cod_prov" HeaderText="ID" SortExpression="cod_prov" />
                                                <asp:BoundField DataField="razon_social" HeaderText="Proveedor" SortExpression="razon_social" Visible="true" />

                                                <asp:TemplateField HeaderText="ESTATUS">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddl_prov_estatus" runat="server" AutoPostBack="true">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                <asp:TemplateField HeaderText="" HeaderImageUrl="~/img/ico_ve.png">
                                                    <ItemTemplate>

                                                        <asp:Button CssClass="btn btn-warning" ID="btn_prov" runat="server" Text="Ir" CommandName="btn_prov" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div runat="server" id="div_i_prov" visible="false">
                                    <h5 class="mb-3">Datos Contacto Proveedor</h5>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_nombres" required="required" placeholder="*Nombre(s)" tabindex="4" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_apaterno" required="required" placeholder="*Apellido Paterno" tabindex="5" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_amaterno" required="required" placeholder="*Apellido Materno" tabindex="6" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_dpto" required="required" placeholder="*Departamento" tabindex="7" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="email" class="form-control" runat="server" id="i_prov_emailc" required="required" placeholder="*Email" tabindex="8" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" runat="server" id="i_prov_telc" placeholder="Teléfono (Opcional)" tabindex="9" />
                                            </div>
                                        </div>
                                    </div>
                                    <h5>Datos de Proveedor</h5>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class=" form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_nom" required="required" placeholder="*Nombre de Proveedor" tabindex="10" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="i_prov_trfc" required="required" tabindex="11">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class=" form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_rfc" placeholder="RFC" tabindex="12" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control" runat="server" id="i_prov_email" placeholder="Email" tabindex="13" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" runat="server" id="i_prov_tel" placeholder="Teléfono (Opcional)" tabindex="14" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_callenum" placeholder="Calle y Número" tabindex="15" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_cp" placeholder="Código Postal" tabindex="16" />
                                                <span class="input-group-btn">
                                                    <asp:LinkButton ID="btn_i_prov_cp" runat="server" CssClass="btn btn-danger form-control" TabIndex="17" OnClick="btn_i_prov_cp_Click">
                                                                     <i class="fas fa-search"></i>
                                                    </asp:LinkButton>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="i_prov_scolonia" tabindex="18">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_municipio" placeholder="Municipio" disabled="disabled" tabindex="19" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_prov_estado" placeholder="Estado" disabled="disabled" tabindex="20" />
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button CssClass="btn btn-danger" ID="btn_prov" runat="server" Text="Guardar" TabIndex="21" OnClick="btn_prov_Click" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_clientes" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_clientes" visible="false">
                            <div class="card-header bg-primary">
                                <div class="text-right">

                                    <div class="input-group">

                                        <asp:LinkButton ID="lkb_clte_agregar" CssClass="btn" runat="server" TabIndex="1" OnClick="lkb_clte_agregar_Click">
                                                                    <i class="fas fa-plus  text-danger fa-lg"></i>
                                        </asp:LinkButton>
                                        <asp:TextBox CssClass="form-control" ID="i_clte_buscar" runat="server" placeholder="Buscar Cliente" TextMode="Search" TabIndex="3"></asp:TextBox>

                                        <ajaxToolkit:AutoCompleteExtender ID="ace_clte_buscar" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_clte_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lkb_clte_buscar" runat="server" CssClass="btn btn-danger form-control" TabIndex="4" OnClick="lkb_clte_buscar_Click">
                                                                    <i class="fas fa-search"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_clte" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="5" OnRowCommand="gv_clte_RowCommand" OnRowDataBound="gv_clte_RowDataBound" OnPageIndexChanging="gv_clte_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="clte_ID" HeaderText="ID" SortExpression="clte_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="cod_clte" HeaderText="ID" SortExpression="cod_clte" />
                                                <asp:BoundField DataField="nombre_completo" HeaderText="Cliente" SortExpression="nombre_completo" Visible="true" />

                                                <asp:TemplateField HeaderText="ESTATUS">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddl_clte_estatus" runat="server" AutoPostBack="true">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                <asp:TemplateField HeaderText="" HeaderImageUrl="~/img/ico_ve.png">
                                                    <ItemTemplate>

                                                        <asp:Button CssClass="btn btn-warning" ID="btn_clte" runat="server" Text="Ir" CommandName="btn_clte" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div runat="server" id="div_i_clte" visible="false">
                                    <h5 class="mb-3">Datos Padre y/o Tutor</h5>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_nombresc" required="required" placeholder="*Nombre(s)" tabindex="4" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_apaternoc" required="required" placeholder="*Apellido Paterno" tabindex="5" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_amaternoc" required="required" placeholder="*Apellido Materno" tabindex="6" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <select class="form-control" runat="server" id="i_clte_tcont" required="required" tabindex="7">
                                            </select>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="email" class="form-control" runat="server" id="i_clte_emailc" required="required" placeholder="*Email" tabindex="8" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" runat="server" id="i_clte_telc" placeholder="Teléfono (Opcional)" tabindex="9" />
                                            </div>
                                        </div>
                                    </div>
                                    <h5>Datos de Alumno</h5>
                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <asp:DropDownList CssClass="form-control input-box" ID="i_nivesc_alum" runat="server" TabIndex="5" required="required" AutoPostBack="true" OnSelectedIndexChanged="i_nivesc_alum_SelectedIndexChanged"></asp:DropDownList>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="i_gradoesc_alum" required="required" tabindex="6">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_nombres" required="required" placeholder="*Nombre(s)" tabindex="10" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_apaterno" required="required" placeholder="*Apellido Paterno" tabindex="11" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_amaterno" required="required" placeholder="*Apellido Materno" tabindex="12" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control" runat="server" id="i_clte_email" placeholder="Email" tabindex="13" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" runat="server" id="i_clte_tel" placeholder="Teléfono (Opcional)" tabindex="14" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-3">
                                            <input type="date" class="form-control" runat="server" id="i_ingreso" required="required" placeholder="Fecha de Ingreso" tabindex="15" title="Fecha de Ingreso" />
                                        </div>
                                        <div class="col-md-9">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_callenum" placeholder="Calle y Número" tabindex="15" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_cp" placeholder="Código Postal" tabindex="16" />
                                                <span class="input-group-btn">
                                                    <asp:LinkButton ID="btn_i_clte_cp" runat="server" CssClass="btn btn-danger form-control" TabIndex="17" OnClick="btn_i_clte_cp_Click">
                                                                     <i class="fas fa-search"></i>
                                                    </asp:LinkButton>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="i_clte_scolonia" tabindex="18">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_municipio" placeholder="Municipio" disabled="disabled" tabindex="19" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_clte_estado" placeholder="Estado" disabled="disabled" tabindex="20" />
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button CssClass="btn btn-danger" ID="btn_clte" runat="server" Text="Guardar" TabIndex="21" OnClick="btn_clte_Click" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_centros" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_centros" visible="false">
                            <div class="card-header bg-primary">
                                <div class="text-right">

                                    <div class="input-group">

                                        <asp:LinkButton ID="lkb_cnt_agregar" CssClass="btn" runat="server" TabIndex="1" OnClick="lkb_cnt_agregar_Click">
                                                                    <i class="fas fa-plus  text-danger fa-lg"></i>
                                        </asp:LinkButton>
                                        <asp:TextBox CssClass="form-control" ID="i_cnt_buscar" runat="server" placeholder="Buscar Centro" TextMode="Search" TabIndex="2"></asp:TextBox>

                                        <ajaxToolkit:AutoCompleteExtender ID="ace_cnt_buscar" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_cnt_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lkb_cnt_buscar" runat="server" CssClass="btn btn-danger form-control" TabIndex="3" OnClick="lkb_cnt_buscar_Click">
                                                                    <i class="fas fa-search"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_cnt" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="4" PageSize="5" OnRowCommand="gv_cnt_RowCommand" OnRowDataBound="gv_cnt_RowDataBound" OnPageIndexChanging="gv_cnt_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="centro_ID" HeaderText="ID" SortExpression="centro_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                    <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                    <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="cod_centro" HeaderText="ID" SortExpression="cod_centro" />
                                                <asp:BoundField DataField="licencia_desc" HeaderText="LICENCIA" SortExpression="licencia_desc" Visible="true" />
                                                <asp:BoundField DataField="centro_nom" HeaderText="CENTRO" SortExpression="centro_nom" />

                                                <asp:BoundField DataField="nom_gerente" HeaderText="NOMBRE GERENTE" SortExpression="nom_gerente" />

                                                <asp:TemplateField HeaderText="ESTATUS">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddl_cnt_estatus" runat="server" AutoPostBack="true">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="registro" HeaderText="REGISTRO" SortExpression="registro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" />
                                                <asp:TemplateField HeaderText="" HeaderImageUrl="~/img/ico_ve.png" HeaderStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:Button CssClass="btn btn-warning" ID="btn_infcnt" runat="server" Text="Ir" CommandName="btn_cnt_ve" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div runat="server" id="div_i_cnt" visible="false">

                                    <h5 class="mb-3">Datos de Gerente</h5>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_nombres" required="required" placeholder="*Nombre(s)" tabindex="5" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_apaterno" required="required" placeholder="*Apellido Paterno" tabindex="6" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_amaterno" required="required" placeholder="*Apellido Materno" tabindex="7" />
                                            </div>
                                        </div>
                                    </div>
                                    <h5>Datos de Centro</h5>

                                    <div class="row">

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="i_cnt_slicencia" required="required" tabindex="8">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class=" form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_nom" required="required" placeholder="*Nombre Centro" tabindex="9" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control" runat="server" id="i_cnt_email" required="required" placeholder="*Email" tabindex="10" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" runat="server" id="i_cnt_tel" placeholder="Teléfono (Opcional)" tabindex="11" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_callenum" placeholder="*Calle y Número" required="required" tabindex="12" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_cp" placeholder="*Código Postal" required="required" tabindex="13" />
                                                <span class="input-group-btn">
                                                    <asp:LinkButton ID="btn_i_cnt_cp" runat="server" CssClass="btn btn-danger form-control" TabIndex="14" OnClick="btn_i_cnt_cp_Click">
                                                                     <i class="fas fa-search"></i>
                                                    </asp:LinkButton>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="i_cnt_scolonia" required="required" tabindex="15">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_municipio" placeholder="Municipio" disabled="disabled" tabindex="16" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_estado" placeholder="Estado" disabled="disabled" tabindex="17" />
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button CssClass="btn btn-danger" ID="btn_cnt_guardar" runat="server" Text="Guardar" TabIndex="18" OnClick="btn_cnt_guardar_Click" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_usr" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_usr" visible="false">
                            <div class="card-header bg-primary">
                                <div class="text-right">

                                    <div class="input-group">

                                        <asp:LinkButton ID="lkb_usuario_agregar" CssClass="btn" runat="server" TabIndex="1" OnClick="lkb_usuario_agregar_Click">
                                                                    <i class="fas fa-plus  text-danger fa-lg"></i>
                                        </asp:LinkButton>
                                        <asp:TextBox CssClass="form-control" ID="i_usuario_buscar" runat="server" placeholder="Buscar Usuario" TextMode="Search" TabIndex="3"></asp:TextBox>

                                        <ajaxToolkit:AutoCompleteExtender ID="ace_buscar_usr" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="i_usuario_buscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="input-group-btn">
                                            <asp:LinkButton ID="lkb_usuario_buscar" runat="server" CssClass="btn btn-danger form-control" TabIndex="4" OnClick="lkb_usuario_buscar_Click">
                                                                    <i class="fas fa-search"></i>
                                            </asp:LinkButton>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:GridView CssClass="table table-sm" ID="gv_usrs" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="5" PageSize="5" OnRowCommand="gv_usrs_RowCommand" OnRowDataBound="gv_usrs_RowDataBound" OnPageIndexChanging="gv_usrs_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="usuario_ID" HeaderText="ID" SortExpression="usuario_ID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
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
                                                        <asp:Button CssClass="btn btn-warning" ID="btn_infusr" runat="server" Text="Ir" CommandName="btn_usr_ve" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="PERFIL">
                                                    <ItemTemplate>
                                                        <asp:Button CssClass="btn btn-warning" ID="btn_usrp" runat="server" Text="Ir" CommandName="btn_usrp" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="#dc3545" ForeColor="White" Font-Bold="false" />
                                            <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div runat="server" id="div_i_usr" visible="false">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_area" tabindex="6" required="required">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_perfil" tabindex="7" required="required">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_genero" tabindex="8" required="required">
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <input type="text" class="form-control" runat="server" id="i_nombres" required="required" placeholder="Nombre(s)" tabindex="9" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="text" class="form-control" runat="server" id="i_apaterno" required="required" placeholder="Apellido Paterno" tabindex="10" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="text" class="form-control" runat="server" id="i_amaterno" required="required" placeholder="Apellido Materno" tabindex="11" />
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="form-group col-md-4">
                                            <input type="date" class="form-control" runat="server" id="i_nacimiento" required="required" placeholder="Fecha de Nacimiento" tabindex="12" value="null" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="email" class="form-control" runat="server" id="i_emal_p" placeholder="Correo Personal" tabindex="13" />
                                        </div>
                                        <div class="form-group col-md-4">
                                            <asp:Button CssClass="btn btn-danger form-control" ID="btn_usr_ctrl" runat="server" Text="Generar datos de control" OnClick="btn_usr_ctrl_Click" TabIndex="14" />
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-3">
                                            <input type="text" class="form-control" runat="server" id="i_usr" required="required" placeholder="Usuario" tabindex="15" />
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="password" class="form-control" runat="server" id="i_clave" required="required" placeholder="Contraseña" tabindex="16" />
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="email" class="form-control" runat="server" id="i_emal_c" required="required" placeholder="Correo Corporativo" tabindex="17" />
                                        </div>
                                    </div>
                                    <asp:Button CssClass="btn btn-danger" ID="btn_usr_guarda" runat="server" Text="Guardar" OnClick="btn_usr_guarda_Click" TabIndex="18" Visible="true" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_configuracion" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="card_configuracion" visible="false">
                            <div class="card-header bg-primary">Configuración e-mail de envío </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <input type="email" class="form-control" runat="server" id="i_email" required="required" placeholder="e-mail" />
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_email_usr" required="required" placeholder="Usuario" />
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_email_clave" required="required" placeholder="Contraseña" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_asunto" required="required" placeholder="Asunto" />
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" runat="server" id="i_smtp" required="required" placeholder="Servidor SMTP (Gmail)" />
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" runat="server" id="i_puerto" required="required" placeholder="Puerto SMTP" />
                                </div>
                                <asp:Button CssClass="btn btn-danger" ID="btn_ee" runat="server" Text="Guardar" TabIndex="7" Visible="true" OnClick="btn_ee_Click" />
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_rpt" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="up_template" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="card border-primary" runat="server" id="Div1" visible="false">
                            <div class="card-header bg-primary">En Construcción </div>
                            <div class="card-body">
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="modal" id="myModal">
            <div class="modal-dialog" role="document">
                <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="modal-content">
                            <div class="modal-header">
                                <asp:Label ID="lblModalTitle" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                <button type="button" class="close" data-dismiss="modal"><span>×</span> </button>
                            </div>
                            <div class="modal-body">
                                <asp:Label ID="lblModalBody" CssClass="login100-form-title" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="modal-footer">

                                <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>
</html>