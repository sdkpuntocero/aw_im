<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recursos.aspx.cs" Inherits="aw_im.recursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>Collapsible sidebar using Bootstrap 4</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous" />
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="sidebar/style.css" />

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>
<body>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid">

            <asp:UpdatePanel ID="up_bienvenida" runat="server" UpdateMode="Conditional">
                <ContentTemplate>

                    <div class="wrapper">
                        <nav id="">
                            <br />
                            <div class="sidebar-header">
                                <h3>Intelimundo</h3>
                            </div>
                            <ul class="list-unstyled CTAs">
                                <li></li>
                                <li></li>
                            </ul>
                            <ul class="list-unstyled components">
                                <p>Recursos</p>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="LinkButton34" runat="server" Text="Libros de Texto" OnClick="LinkButton34_Click"></asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="LinkButton35" runat="server" Text="Libros para Maestros"></asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="LinkButton36" runat="server" Text="Matematicas Simplificadas"></asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="LinkButton37" runat="server" Text="Formatos"></asp:LinkButton>
                                </li>
                            </ul>

                            <ul class="list-unstyled CTAs">
                                <li></li>
                                <li></li>
                            </ul>
                        </nav>

                        <!-- Page Content  -->
                        <div id="content">
                            <nav class="navbar navbar-expand-lg ">
                                <div class="container-fluid">
                                    <div class="" id="divLibrosdeTexto" runat="server" visible="false">
                                        <ul class="nav navbar-nav">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Primer Grado</a>
                                                <div class="dropdown-menu">
                                                    

                                                </div>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Segundo Grado</a>
                                                <asp:LinkButton CssClass="dropdown-item" ID="LinkButton9" runat="server" Text="Desafíos matemáticos"></asp:LinkButton>
                                                <asp:LinkButton CssClass="dropdown-item" ID="LinkButton10" runat="server" Text="Español"></asp:LinkButton>
                                                <asp:LinkButton CssClass="dropdown-item" ID="LinkButton17" runat="server" Text="Español lectura"></asp:LinkButton>
                                                <asp:LinkButton CssClass="dropdown-item" ID="LinkButton13" runat="server" Text="Fichas didácticas"></asp:LinkButton>
                                                <asp:LinkButton CssClass="dropdown-item" ID="LinkButton11" runat="server" Text="Exploración de la naturaleza"></asp:LinkButton>
                                                <asp:LinkButton CssClass="dropdown-item" ID="LinkButton12" runat="server" Text="Formación Cívica y Ética"></asp:LinkButton>
                                                <asp:LinkButton CssClass="dropdown-item" ID="LinkButton16" runat="server" Text="Español(Segunda lengua)"></asp:LinkButton>
                                    </div>
                                    </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Tercero Grado</a>
                                                <div class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton14" runat="server" Text="Español"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton15" runat="server" Text="Español lectura"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton18" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton19" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton20" runat="server" Text="Educación artística"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton21" runat="server" Text="Formación cívica y ética"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton22" runat="server" Text="Distrito Federal"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton23" runat="server" Text="Inglés"></asp:LinkButton>
                                                </div>
                                            </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Cuarto Grado</a>
                                        <div class="dropdown-menu">
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton24" runat="server" Text="Español"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton25" runat="server" Text="Español lectura"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton26" runat="server" Text="Matemáticas"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton27" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton28" runat="server" Text="Educación artística"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton29" runat="server" Text="Formación cívica"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton30" runat="server" Text="Constitución"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton31" runat="server" Text="Historia"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton32" runat="server" Text="Geografía"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton33" runat="server" Text="Atlas"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton38" runat="server" Text="Inglés"></asp:LinkButton>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Quinto Grado</a>
                                        <div class="dropdown-menu">
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton39" runat="server" Text="Español"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton40" runat="server" Text="Español lectura"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton41" runat="server" Text="Matemáticas"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton42" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton43" runat="server" Text="Educación artística"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton44" runat="server" Text="Formación cívica"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton45" runat="server" Text="Manual Tablet"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton46" runat="server" Text="Historia"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton47" runat="server" Text="Geografía"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton48" runat="server" Text="Atlas"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton49" runat="server" Text="Inglés"></asp:LinkButton>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Sexto Grado</a>
                                        <div class="dropdown-menu">
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton50" runat="server" Text="Español"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton51" runat="server" Text="Español lectura"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton52" runat="server" Text="Matemáticas"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton53" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton54" runat="server" Text="Educación artística"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton55" runat="server" Text="Formación cívica"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton57" runat="server" Text="Historia"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton58" runat="server" Text="Geografía"></asp:LinkButton>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton60" runat="server" Text="Inglés"></asp:LinkButton>
                                        </div>
                                    </li>
                                    </ul>
                                </div>
                        </div>
                        </nav>
                            <div class="card" runat="server" id="card_pdf">
                                <div class="card-header">
                                    <asp:Label ID="lbl_TituloPDF" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="card-body">
                                    <div class="accordion" id="accordionExample">
                                        <div class="card">
                                            <div class="card-header" id="headingOne">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                        Collapsible Group Item #1
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <iframe id="iframe_pdf" src="" width="800" height="500" runat="server" visible="false"></iframe>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="headingTwo">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                        Collapsible Group Item #2
                                                    </button>
                                                </h2>
                                            </div>
                                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                    </div>
                    </div>

                    <!-- jQuery CDN - Slim version (=without AJAX) -->
                    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                    <!-- Popper.JS -->
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
                    <!-- Bootstrap JS -->
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
