<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notificaciones.aspx.cs" Inherits="aw_im.notificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css" />
    <link href="estilos/estilos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="frm" runat="server">
        <asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
        <div class="container">
            <asp:UpdatePanel ID="up_usr_banc" runat="server" UpdateMode="Conditional">
                <ContentTemplate>

                    <div class="py-3">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 p-4">
                                    <h1>POS</h1>
                                    <p>Punto de Venta</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 p-4">
                                    <h3>Punto Cero</h3>
                                    <p>Innovación en Informática</p>
                                    <p class="lead mt-3"><b>Soporte</b></p>
                                    <p><a href="tel:5525178930">+52 1 55.25.17.89.30</a> </p>
                                    <p><a href="mailto:soporte@puntocero.tech">soporte@puntocero.tech</a></p>

                                    <p class="lead mt-3"><b>Informes</b></p>
                                    <p><a href="http://www.puntocero.tech/">www.puntocero.tech</a></p>
                                </div>
                                <div class="col-md-7 p-4">
                                    <h3 class="mb-3">e-mail para Notificaciones</h3>
                                    <form>
                                        <div class="form-group">
                                            <input type="email" class="form-control" runat="server" id="i_email" required="required" placeholder="e-mail" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" runat="server" id="i_email_usr" required="required" placeholder="Usuario" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" runat="server" id="i_email_clave" required="required" placeholder="Contraseña" />
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
                                        <button type="submit" class="btn btn-danger" runat="server" id="btn_tel">Guardar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                </ContentTemplate>
                <Triggers>
                </Triggers>
            </asp:UpdatePanel>

            <div class="modal" id="myModal">
                <div class="modal-dialog" role="document">
                    <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="modal-content">
                                <div class="modal-header">
                                    <asp:Label ID="lblModalTitle" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                    <button type="button" class="close" data-dismiss="modal" onclick="window.location.href='/acceso.aspx'"><span>×</span> </button>
                                </div>
                                <div class="modal-body">
                                    <asp:Label ID="lblModalBody" CssClass="login100-form-title" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="window.location.href='/acceso.aspx'">Aceptar</button>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
