<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acceso.aspx.cs" Inherits="aw_im.acceso" %>

<!DOCTYPE html>
<html lang="es-MX">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="shortcut icon" href="img/im.png" type="image/png" />
    <title>\ Acceso</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/fontawesome-free-5.7.0-web/css/all.css" rel="stylesheet" />

    <link href="styles/style_liec.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.3.1.min.js"></script>

    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        body {
            color: #999;
            background: #f5f5f5;
            font-family: 'Varela Round', sans-serif;
        }

        .form-control {
            box-shadow: none;
            border-color: #ddd;
        }

            .form-control:focus {
                border-color: #dc3545;
            }

        .login-form {
            width: 350px;
            margin: 0 auto;
            padding: 30px 0;
        }

            .login-form form {
                color: #999;
                border-radius: 1px;
                margin-bottom: 15px;
                background: #fff;
                border: 1px solid #f3f3f3;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form h4 {
                text-align: center;
                font-size: 22px;
                margin-bottom: 20px;
            }

            .login-form .avatar {
                color: #fff;
                margin: 0 auto 30px;
                text-align: center;
                width: 100px;
                height: 100px;
            }

                .login-form .avatar i {
                    font-size: 62px;
                }

            .login-form .form-group {
                margin-bottom: 20px;
            }

            .login-form .form-control, .login-form .btn {
                min-height: 40px;
                border-radius: 2px;
                transition: all 0.5s;
            }

            .login-form .close {
                position: absolute;
                top: 15px;
                right: 15px;
            }

            .login-form .btn {
                background: #f9c031;
                border: none;
                line-height: normal;
            }

                .login-form .btn:hover, .login-form .btn:focus {
                    background: #dc3545;
                }

            .login-form .checkbox-inline {
                float: left;
            }

            .login-form input[type="checkbox"] {
                margin-top: 2px;
            }

            .login-form .forgot-link {
                float: right;
            }

            .login-form .small {
                font-size: 10px;
            }

            .login-form a {
                color: #dc3545;
            }
    </style>
</head>
<body>
    <div class="login-form">

        <form runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="avatar">

                <img class="img-responsive  img-thumbnail" src="img/im.png" width="128" />

            </div>
            <hr />
            <br />
            
            <div class="form-group">
                <input type="text" class="form-control" runat="server" id="i_usuario" required="required" placeholder="Ingrese a su cuenta" tabindex="1" />
            
            </div>
            <br />
    
            <div class="form-group">
                <input type="password" class="form-control" runat="server" id="i_clave" required="required" placeholder="Contraseña" tabindex="1" />
            <br />
            
            </div>
            
            <div class="form-group text-right">
                <asp:LinkButton ID="lkb_registro_inicial" runat="server" CssClass="text-info" TabIndex="4" Visible="false" Text="Registro Inicial" OnClick="lkb_registro_inicial_Click">
                </asp:LinkButton>
            </div>
            <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="btn_acceso" runat="server" Text="Iniciar sesión" TabIndex="3" OnClick="btn_acceso_Click" />
            <div class="text-right small">
                <br />
                ¿No tienes una cuenta?
                <br />
                Contactar al Dpto. de Recursos Humanos
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
            <div class="modal" id="m_corp">
                <div class="modal-dialog" role="document">
                    <asp:UpdatePanel ID="up_mcorp" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="modal-content">
                                <div class="modal-header">
                                    <asp:Label ID="Label1" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                    <button type="button" class="close" data-dismiss="modal"><span>×</span> </button>
                                </div>
                                <div class="modal-body">
                                    <asp:Label ID="Label2" CssClass="login100-form-title" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button CssClass="btn btn-danger" ID="btn_corp_guarda" runat="server" Text="Aceptar" TabIndex="14" />
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </form>
    </div>
</body>
</html>