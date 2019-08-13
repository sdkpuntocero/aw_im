<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recursos.aspx.cs" Inherits="aw_im.recursos" %>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css" />

    <link href="estilos/style.css" rel="stylesheet" />
    <link href="estilos/estilos_e.css" rel="stylesheet" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.0.943/pdf.min.js"> </script>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/popper.js"></script>
    <title></title>
</head>
<body>
    <style>
        .contenedor {
            position: absolute;
        }

        .pdf {
            position: relative;
            margin-left: auto;
            margin-right: auto;
        }

        .bloqueo {
            position: relative;
            background-color: rgba(255,255,255,0.00);
            width: 90%;
        }

        object {
            width: 100%;
            max-height: 100%;
            height: 100%;
        }
    </style>
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
                        <asp:LinkButton ID="lkb_usr_f" runat="server" Text="">
                        </asp:LinkButton>
                    </li>
                    <li>
                        <h6>
                            <asp:LinkButton ID="lkb_usr_fp" runat="server" Text=""></asp:LinkButton>
                        </h6>
                    </li>
                    <li>
                        <h6>
                            <asp:LinkButton ID="lkb_usr_fc" runat="server" Text=""></asp:LinkButton>
                        </h6>
                    </li>
                </ul>

                <ul class="list-unstyled components">
                    <li runat="server" id="li_resumen">
                        <asp:LinkButton ID="lkb_resumen" runat="server" Text="Recursos"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_adeudos">
                        <asp:LinkButton ID="lkb_adeudos" runat="server" Text="Libros para Maestros"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_servicios">
                        <asp:LinkButton ID="lkb_servicios" runat="server" Text="Matematicas Simplificadas"></asp:LinkButton>
                    </li>
                    <li runat="server" id="li_vnta">
                        <asp:LinkButton ID="lkb_ctrl_vnta" runat="server" Text="Formatos Intelimundo"></asp:LinkButton>
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
                <div id="MenuRecursos" runat="server" visible="true">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <div class="container-fluid">

                            <button type="button" id="sidebarCollapse" class="btn btn-info">
                                <i class="fas fa-align-left"></i>
                                <span>Toggle Sidebar</span>
                            </button>
                            <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <i class="fas fa-align-justify"></i>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="nav navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <asp:LinkButton CssClass="dropdown-item" ID="LinkButton1" runat="server" Text="Primero"></asp:LinkButton>
                                    </li>
                                    <li class="nav-item active">
                                        <asp:LinkButton CssClass="dropdown-item" ID="LinkButton2" runat="server" Text="Segundo"></asp:LinkButton>
                                    </li>
                                    <li class="nav-item active">
                                        <asp:LinkButton CssClass="dropdown-item" ID="LinkButton3" runat="server" Text="Tercer"></asp:LinkButton>
                                    </li>
                                    <li class="nav-item active">
                                        <asp:LinkButton CssClass="dropdown-item" ID="LinkButton4" runat="server" Text="Cuarto"></asp:LinkButton>
                                    </li>
                                    <li class="nav-item active">
                                        <asp:LinkButton CssClass="dropdown-item" ID="LinkButton5" runat="server" Text="Quinto"></asp:LinkButton>
                                    </li>
                                    <li class="nav-item active">
                                        <asp:LinkButton CssClass="dropdown-item" ID="LinkButton6" runat="server" Text="Sexto"></asp:LinkButton>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                    <nav class="nav">

                        <asp:LinkButton CssClass="nav-link" ID="LinkButton7" runat="server" Text="Español"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton8" runat="server" Text="Español lectura"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton9" runat="server" Text="Matemáticas"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton10" runat="server" Text="Tiras recortables"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton11" runat="server" Text="Fichas didácticas"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton12" runat="server" Text="Formación Cívica y Ética"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton13" runat="server" Text="Ciencias Naturales"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton14" runat="server" Text="Inglés"></asp:LinkButton>
                        <asp:LinkButton CssClass="nav-link" ID="LinkButton56" runat="server" Text="Exploración de la Naturaleza y la Sociedad"></asp:LinkButton>
                    </nav>
                </div>
                <div class="row">


                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <asp:Label ID="lbl_TituloPDF" runat="server" Text="Desarrollo de Habilidades"></asp:Label>
                                    </button>
                                
                                </h2>
                            </div>
                            <div class="card-body">
                                <div class="menuContainer">
                                    <iframe width="100%" height="100%" src="material/preescolar/DesarrolloDeHabilidades/PreescolarDesarrolloDeHabilidades1/index.html"></iframe>
                                </div>

                      
                            </div>

                        </div>

                    </div>

                </div>
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


</body>
<script type="text/javascript">
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
        });
    });
</script>

</html>
