<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="materiales.aspx.cs" Inherits="aw_im.materiales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous" />
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="sidebar/style.css">

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
    <style>
        .contenedor {
            position: absolute;
        }

        .pdf {
            position: relative;
        }

        .bloqueo {
            position: relative;
            background-color: rgba(255,255,255,0.00);
            width: 830px;
            height: 850px;
        }

        .navbar-nav li:hover > ul.dropdown-menu {
            display: block;
        }

        .dropdown-submenu {
            position: relative;
        }

            .dropdown-submenu > .dropdown-menu {
                top: 0;
                left: 100%;
                margin-top: -6px;
            }

        /* rotate caret on hover */
        .dropdown-menu > li > a:hover:after {
            text-decoration: underline;
            transform: rotate(-90deg);
        }
    </style>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid">

            <asp:UpdatePanel ID="up_bienvenida" runat="server" UpdateMode="Conditional">
                <contenttemplate>
                    <nav class="navbar navbar-expand-md navbar-light bg-light">
                        <a class="navbar-brand pb-2" href="#">Intelimundo</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <li class="nav-item dropdown">
                                        <%--      <a class="nav-link dropdown-toggle" href="#" id="nav_recursos" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Recursos
                                        </a>--%>
                                        <asp:LinkButton CssClass="nav-link dropdown-toggle" ID="nav_recursos" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" runat="server" Text="Recursos"></asp:LinkButton>
                                        <ul class="dropdown-menu" aria-labelledby="nav_recursos">

                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Libros de Texto SEP</a>
                                                <ul class="dropdown-menu">
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Primer Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton1" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton2" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton3" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton4" runat="server" Text="Tiras recortables"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton5" runat="server" Text="Fichas didácticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton6" runat="server" Text="Formación Cívica y Ética"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton7" runat="server" Text="Ciencias Naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton8" runat="server" Text="Inglés"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton56" runat="server" Text="Exploración de la Naturaleza y la Sociedad"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Segundo Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton9" runat="server" Text="Desafíos matemáticos"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton10" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton17" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton13" runat="server" Text="Fichas didácticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton11" runat="server" Text="Exploración de la naturaleza"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton12" runat="server" Text="Formación Cívica y Ética"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton16" runat="server" Text="Español(Segunda lengua)"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Tercero Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton14" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton15" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton18" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton19" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton20" runat="server" Text="Educación artística"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton21" runat="server" Text="Formación cívica y ética"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton22" runat="server" Text="Distrito Federal"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton23" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Cuarto Grado</a>
                                                        <ul class="dropdown-menu">
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
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton34" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Quinto Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton39" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton40" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton41" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton42" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton43" runat="server" Text="Educación artística"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton44" runat="server" Text="Formación cívica"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton35" runat="server" Text="Manual Tablet"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton36" runat="server" Text="Historia"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton37" runat="server" Text="Geografía"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton38" runat="server" Text="Atlas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton54" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Sexto Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton50" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton51" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton52" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton53" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton45" runat="server" Text="Educación artística"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton55" runat="server" Text="Formación cívica"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton57" runat="server" Text="Historia"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton58" runat="server" Text="Geografía"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton60" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Libros para Maestros</a>
                                                <ul class="dropdown-menu">
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Primer Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton46" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton47" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton48" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton49" runat="server" Text="Tiras recortables"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton59" runat="server" Text="Fichas didácticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton61" runat="server" Text="Formación Cívica y Ética"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton62" runat="server" Text="Ciencias Naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton63" runat="server" Text="Inglés"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton64" runat="server" Text="Exploración de la Naturaleza y la Sociedad"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Segundo Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton65" runat="server" Text="Desafíos matemáticos"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton66" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton67" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton68" runat="server" Text="Fichas didácticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton69" runat="server" Text="Exploración de la naturaleza"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton70" runat="server" Text="Formación Cívica y Ética"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton71" runat="server" Text="Español(Segunda lengua)"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Tercero Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton72" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton73" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton74" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton75" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton76" runat="server" Text="Educación artística"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton77" runat="server" Text="Formación cívica y ética"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton78" runat="server" Text="Distrito Federal"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton79" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Cuarto Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton80" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton81" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton82" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton83" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton84" runat="server" Text="Educación artística"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton85" runat="server" Text="Formación cívica"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton86" runat="server" Text="Constitución"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton87" runat="server" Text="Historia"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton88" runat="server" Text="Geografía"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton89" runat="server" Text="Atlas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton90" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Quinto Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton91" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton92" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton93" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton94" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton95" runat="server" Text="Educación artística"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton96" runat="server" Text="Formación cívica"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton97" runat="server" Text="Manual Tablet"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton98" runat="server" Text="Historia"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton99" runat="server" Text="Geografía"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton100" runat="server" Text="Atlas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton101" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Sexto Grado</a>
                                                        <ul class="dropdown-menu">
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton102" runat="server" Text="Español"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton103" runat="server" Text="Español lectura"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton104" runat="server" Text="Matemáticas"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton105" runat="server" Text="Ciencias naturales"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton106" runat="server" Text="Educación artística"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton107" runat="server" Text="Formación cívica"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton108" runat="server" Text="Historia"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton109" runat="server" Text="Geografía"></asp:LinkButton>
                                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton110" runat="server" Text="Inglés"></asp:LinkButton>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton111" runat="server" Text="Matematicas Simplificadas"></asp:LinkButton>

                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Formatos Intelimundo</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton112" runat="server" Text="Formato de Inscripción"></asp:LinkButton>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="nav_02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Preescolar
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="nav_02">
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton113" runat="server" Text="Material de Verano"></asp:LinkButton>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Desarrollo de Habilidades</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton114" runat="server" Text="Desarrollo de Habilidades 1" OnClick="LinkButton114_Click"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton115" runat="server" Text="Desarrollo de Habilidades 2"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton116" runat="server" Text="Desarrollo de Habilidades 3"></asp:LinkButton>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Grafomotricidad</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton121" runat="server" Text="Grafomotricidad 1"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton122" runat="server" Text="Grafomotricidad 2"></asp:LinkButton>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Abecedario</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton123" runat="server" Text="A"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton124" runat="server" Text="B"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton125" runat="server" Text="C"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton126" runat="server" Text="CH"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton127" runat="server" Text="D"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton128" runat="server" Text="E"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton129" runat="server" Text="F"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton130" runat="server" Text="G"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton131" runat="server" Text="H"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton132" runat="server" Text="I"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton133" runat="server" Text="J"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton134" runat="server" Text="K"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton137" runat="server" Text="L"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton136" runat="server" Text="LL"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton135" runat="server" Text="M"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton138" runat="server" Text="N"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton139" runat="server" Text="Ñ"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton140" runat="server" Text="O"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton141" runat="server" Text="P"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton142" runat="server" Text="Q"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton143" runat="server" Text="R"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton144" runat="server" Text="S"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton145" runat="server" Text="T"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton146" runat="server" Text="U"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton147" runat="server" Text="V"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton148" runat="server" Text="W"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton149" runat="server" Text="X"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton150" runat="server" Text="Y"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton151" runat="server" Text="Z"></asp:LinkButton>

                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Abecedario Visual</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton152" runat="server" Text="A"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton153" runat="server" Text="B"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton154" runat="server" Text="C"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton155" runat="server" Text="CH"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton156" runat="server" Text="D"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton157" runat="server" Text="E"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton158" runat="server" Text="F"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton159" runat="server" Text="G"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton160" runat="server" Text="H"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton161" runat="server" Text="I"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton162" runat="server" Text="J"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton163" runat="server" Text="K"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton164" runat="server" Text="L"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton165" runat="server" Text="LL"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton166" runat="server" Text="M"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton167" runat="server" Text="N"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton168" runat="server" Text="Ñ"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton169" runat="server" Text="O"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton170" runat="server" Text="P"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton171" runat="server" Text="Q"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton172" runat="server" Text="R"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton173" runat="server" Text="S"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton174" runat="server" Text="T"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton175" runat="server" Text="U"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton176" runat="server" Text="V"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton177" runat="server" Text="W"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton178" runat="server" Text="X"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton179" runat="server" Text="Y"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton180" runat="server" Text="Z"></asp:LinkButton>

                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Consonantes</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton181" runat="server" Text="A"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton182" runat="server" Text="B"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton183" runat="server" Text="C"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton184" runat="server" Text="CH"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton185" runat="server" Text="D"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton186" runat="server" Text="E"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton187" runat="server" Text="F"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton188" runat="server" Text="G"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton189" runat="server" Text="H"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton190" runat="server" Text="I"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton191" runat="server" Text="J"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton192" runat="server" Text="K"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton193" runat="server" Text="L"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton194" runat="server" Text="LL"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton195" runat="server" Text="M"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton196" runat="server" Text="N"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton197" runat="server" Text="Ñ"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton198" runat="server" Text="O"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton199" runat="server" Text="P"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton200" runat="server" Text="Q"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton201" runat="server" Text="R"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton202" runat="server" Text="S"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton203" runat="server" Text="T"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton204" runat="server" Text="U"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton205" runat="server" Text="V"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton206" runat="server" Text="W"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton207" runat="server" Text="X"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton208" runat="server" Text="Y"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton209" runat="server" Text="Z"></asp:LinkButton>

                                                </ul>
                                            </li>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton210" runat="server" Text="Grafías y Fonemoas"></asp:LinkButton>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Material Punteado</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton211" runat="server" Text="Sílabas Punteadas"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton212" runat="server" Text="Lecturas punteada"></asp:LinkButton>
                                                </ul>
                                            </li>
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton213" runat="server" Text="Palabras de Colores"></asp:LinkButton>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Atención y Memoria</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton214" runat="server" Text="Atención y Memoria Inicial"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton215" runat="server" Text="Atención y Memoria Intermedio"></asp:LinkButton>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Lecturas Cortas</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton216" runat="server" Text="Lecturas Cortas 1"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton217" runat="server" Text="Lecturas Cortas 2"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton218" runat="server" Text="Lecturas Cortas 3"></asp:LinkButton>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Sinfones</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton219" runat="server" Text="bl"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton220" runat="server" Text="br"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton221" runat="server" Text="cl"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton222" runat="server" Text="cr"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton223" runat="server" Text="dr"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton224" runat="server" Text="fr"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton225" runat="server" Text="gl"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton226" runat="server" Text="gr"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton227" runat="server" Text="pl"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton228" runat="server" Text="pr"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton229" runat="server" Text="tr"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton230" runat="server" Text="Sílabas"></asp:LinkButton>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Matemáticas Inicial</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton231" runat="server" Text="Nivel 1"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton232" runat="server" Text="Refuerzo matemático"></asp:LinkButton>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="nav_03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Primaria
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="nav_03">
                                            <asp:LinkButton CssClass="dropdown-item" ID="LinkButton117" runat="server" Text="Material de Verano"></asp:LinkButton>
                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">Desarrollo de Habilidades</a>
                                                <ul class="dropdown-menu">
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton118" runat="server" Text="Desarrollo de Habilidades 1"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton119" runat="server" Text="Desarrollo de Habilidades 2"></asp:LinkButton>
                                                    <asp:LinkButton CssClass="dropdown-item" ID="LinkButton120" runat="server" Text="Desarrollo de Habilidades 3"></asp:LinkButton>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                            </ul>
                        </div>
                    </nav>
          
                    <div class="accordion" id="accordionExample">

                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <asp:Label ID="lbl_TituloPDF" runat="server" Text="Titulo"></asp:Label>
                                    </button>

                                    <a href="https://www.paypal.com/invoice/p/#Q4M4XBFSSDU6G369"><i class="far fa-credit-card"></i></a>
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
                                        Soluciones
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
                    <div class="card" runat="server" id="card_pdf">
                        <div class="card-header">
                        </div>
                        <div class="card-body">
                                      <div class="contenedor">    <div class="pdf">
        <object data="material/preescolar/DesarrolloDeHabilidades/PreescolarDesarrolloDeHabilidades1.pdf" type="application/PDF" width="850px" height="850px" align="right"></object>
        </div>
        
        <div class="bloqueo">
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
                </contenttemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
