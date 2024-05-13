<%-- 
    Document   : menuServiciosCitas
    Created on : Apr 29, 2024, 3:57:14 AM
    Author     : naely
--%>

<%@page import="Modelo.ModeloServicio"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Servicio"%>
<%@page import="Controlador.ControladorServicios"%>
<%@page import="Modelo.Cliente"%>
<%@page import="Modelo.ModeloCliente"%>
<%@page import="Controlador.ControladorCliente"%>
<%
    HttpSession objSesion = request.getSession(false);
    String usuario = (String) objSesion.getAttribute("usuario");
    if (usuario != null) {

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>.:: Agenda tu cita ::.</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap"
            rel="stylesheet">

        <link rel="stylesheet" href="css/bootstrap.min.css">

        <link rel="stylesheet" href="css/bootstrap-icons.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">

        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link href="css/templatemo-pod-talk.css" rel="stylesheet">
        <!--
      
      TemplateMo 584 Pod Talk
      
      https://templatemo.com/tm-584-pod-talk
      
        -->
    </head>

    <body>

        <main>

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand me-lg-5 me-0" href="index.jsp">
                        <img src="images/logo.png" class="logo-image img-fluid" alt="templatemo pod talk">
                    </a>

                    <form action="#" method="get" class="custom-form search-form flex-fill me-3" role="search">
                        <div class="input-group input-group-lg">
                            <input name="search" type="search" class="form-control" id="search" placeholder="Buscador"
                                   aria-label="Search">

                            <button type="submit" class="form-control" id="submit">
                                <i class="bi-search"></i>
                            </button>
                        </div>
                    </form>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Inicio</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Nosotros.jsp">Nosotros</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">Servicios y especialidades </a>

                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                    <li><a class="dropdown-item" href="Especialistas.jsp">Especialistas</a></li>

                                    <li><a class="dropdown-item" href="Servicios.jsp">Servicios</a></li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="contacto.jsp">Contacto</a>
                            </li>
                        </ul>

                        <div class="ms-4">
                            <a href="menuServiciosCitas.jsp" class="btn custom-btn custom-border-btn smoothscroll">Agendar Cita</a>
                        </div>
                        <div class="col-lg-12 col-12 d-flex flex-wrap">
                            <p class="d-flex me-4 mb-0">
                                Usuario:  <% out.println(usuario);%>
                            </p>

                            <p class="d-flex d-lg-block d-md-block d-none me-4 mb-0">
                                <a  href="CerrarSesion" style="color: black;">Salir</a>
                            </p>


                        </div>
                    </div>
                </div>
            </nav>


            <header class="site-header d-flex flex-column justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center">

                            <h2 class="mb-0">Agendar cita</h2>
                        </div>

                    </div>
                </div>
            </header>

            <section class="contact-section section-padding pt-0">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-12 mx-auto">
                            <div class="section-title-wrap mb-5">
                                <h4 class="section-title">

                                    Ingresa los datos que se te solicitan a continuación

                                </h4>
                            </div>


                            <form action="registrar-cita" method="post" class="custom-form contact-form" role="form">

                                <form action="registrar-cita" method="post" class="custom-form contact-form" role="form">

                                    <div class="row">

                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-floating">
                                                <input type="text" name="nombre_completo" id="full-name" pattern="[A-Za-zÁáÉéÍíÓóÚúÑñ\s'.-]+" class="form-control" placeholder="Nombre completo" required="">
                                                <label for="floatingInput">Nombre completo</label>
                                            </div>
                                        </div>


                                        <div class="col-lg-6 col-md-6 col-12"> 
                                            <div class="form-floating">
                                                <input type="tel" name="telefono" id="phone" pattern="[0-9]{10}" class="form-control" placeholder="Numero de telefono" required="">
                                                <label for="phone">Numero de telefono</label>
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-12">
                                            <div class="form-floating">
                                                <input type="email" name="correo_electronico" id="email" pattern="[^ @]*@[^ @]*" class="form-control"
                                                       placeholder="Email address" required="">

                                                <label for="floatingInput"> Correo Electronico </label>

                                                <div
                                                    <label for="servicio">Selecciona el servicio:</label>
                                                    <select id="servicio" name="servicio">
                                                        <%
                                                            ModeloServicio ms = new ModeloServicio();
                                                            List<Servicio> servicios = ms.getAllServicios();
                                                            for (Servicio servicio : servicios) {
                                                        %>
                                                        <option value="<%= servicio.getId()%>"><%= servicio.getNombre()%></option>
                                                        <% } %>
                                                    </select>
                                                </div>
                                                <p>

                                                </p>
                                                <div class="col-lg-12 col-12">
                                                    <label for="fecha-cita" class="mb-3">Selecciona fecha y hora de la cita:</label>
                                                    <div class="row">
                                                        <div class="col-4">
                                                            <input type="date" id="fecha-cita" name="fecha_hora" class="form-control" required> 
                                                        </div>
                                                        <div class="col-4">
                                                            <select class="form-control" name="hora_cita">
                                                                <%
                                                                    for (int hr = 6; hr < 22; hr++) {
                                                                        String timeStr = String.format("%02d:%02d", hr, 0);
                                                                        String timeStr2 = String.format("%02d:%02d", hr, 30);
                                                                        out.println(String.format("<option value=\"%s\">%s</option>", timeStr, timeStr));
                                                                        out.println(String.format("<option value=\"%s\">%s</option>", timeStr2, timeStr2));
                                                                    }
                                                                %>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-12 ms-auto">
                                                    <button type="submit" class="form-control">Enviar</button>
                                                </div>

                                            </div>

                                        </div>

                                    </div>
                                </form>
                        </div>
                        </section>
                        </main>




                        <footer class="site-footer">
                            <div class="container">
                                <div class="row">

                                    <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                                        <div class="subscribe-form-wrap">
                                            <h6>únete a nuestro equipo, deja tu correo</h6>

                                            <form class="custom-form subscribe-form" action="#" method="get" role="form">
                                                <input type="email" name="subscribe-email" id="subscribe-email" pattern="[^ @]*@[^ @]*"
                                                       class="form-control" placeholder="Correo Electrónico" required="">

                                                <div class="col-lg-12 col-12">
                                                    <button type="submit" class="form-control" id="submit">Enviar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                                        <h6 class="site-footer-title mb-3">Contacto</h6>

                                        <p class="mb-2"><strong class="d-inline me-2">Numero:</strong> 622-222-73-02 </p>

                                        <p>
                                            <strong class="d-inline me-2">Email:</strong>
                                            <a href="#">clinicaguaymas@gmail.com</a>
                                        </p>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-12">
                                        <h6 class="site-footer-title mb-3">Descarga</h6>

                                        <div class="site-footer-thumb mb-4 pb-2">
                                            <div class="d-flex flex-wrap">
                                                <a href="#">
                                                    <img src="images/app-store.png" class="me-3 mb-2 mb-lg-0 img-fluid" alt="">
                                                </a>

                                                <a href="#">
                                                    <img src="images/play-store.png" class="img-fluid" alt="">
                                                </a>
                                            </div>
                                        </div>

                                        <h6 class="site-footer-title mb-3">Social</h6>

                                        <ul class="social-icon">
                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-instagram"></a>
                                            </li>

                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-twitter"></a>
                                            </li>

                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-whatsapp"></a>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>

                            <div class="container pt-5">
                                <div class="row align-items-center">

                                    <div class="col-lg-2 col-md-3 col-12">
                                        <a class="navbar-brand" href="index.jsp">
                                            <img src="images/logo.png" class="logo-image img-fluid" alt="">
                                        </a>
                                    </div>

                                    <div class="col-lg-7 col-md-9 col-12">
                                        <ul class="site-footer-links">
                                            <li class="site-footer-link-item">
                                                <a href="#" class="site-footer-link">Inicio</a>
                                            </li>

                                            <li class="site-footer-link-item">
                                                <a href="#" class="site-footer-link">Buscador</a>
                                            </li>

                                            <li class="site-footer-link-item">
                                                <a href="#" class="site-footer-link">Ayuda</a>
                                            </li>

                                            <li class="site-footer-link-item">
                                                <a href="#" class="site-footer-link">Contacto</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col-lg-3 col-12">
                                        <p></p>
                                        <p class="copyright-text mb-0">Copyright © 2024 Clinica Guaymas
                                            <br><br>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </footer>

                        <!-- JAVASCRIPT FILES -->
                        <script src="js/jquery.min.js"></script>
                        <script src="js/bootstrap.bundle.min.js"></script>
                        <script src="js/owl.carousel.min.js"></script>
                        <script src="js/custom.js"></script>

                        </body>

                        </html>
                        <%
                            } else {
                                response.sendRedirect("login.jsp");
                            }

                        %>