<%-- 
    Document   : index.jsp
    Created on : 28 abr. 2024, 14:24:58
    Author     : Jonathan Cabrera
--%>
<%@page import="Modelo.Cliente"%>
<%@page import="Modelo.ModeloCliente"%>
<%@page import="Controlador.ControladorCliente"%>
<%
    HttpSession objSesion = request.getSession(false);
    String usuario = (String) objSesion.getAttribute("usuario");
    if (usuario != null) {

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Inicio ::.</title>

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
            <nav class="navbar navbar-expand-lg ">
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
                                <a class="nav-link active" href="index.jsp">Inicio</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Nosotros.jsp">Nosotros</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">Servicios y Especialidades</a>

                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                    <li><a class="dropdown-item" href="Especialistas.jsp">Especialistas</a></li>

                                    <li><a class="dropdown-item" href="Servicios.jsp">Servicios </a></li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="contacto.jsp">Contacto</a>
                            </li>
                        </ul>

                        <div class="ms-4">
                            <a href="contacto.jsp" class="btn custom-btn custom-border-btn smoothscroll">Solicitar Cita</a>
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


            <section class="hero-section">

                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <div class="text-center mb-5 pb-2">
                                <h1 class="text-white">Clinica Guaymas</h1>

                                <p class="text-white">Explora tus opciones con nosotros</p>

                                <a href="#section_2" class="btn custom-btn smoothscroll mt-3">Agendar cita</a>
                            </div>

                            <div class="owl-carousel owl-theme">
                                <div class="owl-carousel-info-wrap item">
                                    <img
                                        src="images/IndexEspecialistas/Nutri.jpg"
                                        class="owl-carousel-image img-fluid" alt="">

                                    <div class="owl-carousel-info">
                                        <h4 class="mb-2">
                                            Lic. Dulce M. Castro Romero
                                            <img src="images/verified.png" class="owl-carousel-verified-image img-fluid" alt="">
                                        </h4>

                                        <span class="badge">Nutricion</span>


                                    </div>

                                    <div class="social-share">
                                        <ul class="social-icon">
                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-twitter"></a>
                                            </li>

                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-facebook"></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="owl-carousel-info-wrap item">
                                    <img src="images/IndexEspecialistas/Gineco.png" class="owl-carousel-image img-fluid" alt="">

                                    <div class="owl-carousel-info">
                                        <h4 class="mb-2">
                                            Dr. Francisco Sánchez
                                            <img src="images/verified.png" class="owl-carousel-verified-image img-fluid" alt="">
                                        </h4>

                                        <span class="badge">Ginecología</span>


                                    </div>

                                </div>
                                <div class="owl-carousel-info-wrap item">
                                    <img src="images/IndexEspecialistas/Cirujia.png" class="owl-carousel-image img-fluid" alt="">

                                    <div class="owl-carousel-info">
                                        <h4 class="mb-2">
                                            Dr. Ernesto A. Dzib Calán
                                            <img src="images/verified.png" class="owl-carousel-verified-image img-fluid" alt="">
                                        </h4>

                                        <span class="badge">Cirugia General</span>


                                    </div>

                                </div>

                                <div class="owl-carousel-info-wrap item">
                                    <img src="images/IndexEspecialistas/oftalmologo.jpg" class="owl-carousel-image img-fluid" alt="">

                                    <div class="owl-carousel-info">
                                        <h4 class="mb-2">
                                            Dr. Marco A. Barrera
                                            <img src="images/verified.png" class="owl-carousel-verified-image img-fluid" alt="">
                                        </h4>

                                        <span class="badge">Oftalmólogo</span>


                                    </div>

                                </div>



                                <div class="owl-carousel-info-wrap item">
                                    <img src="images/IndexEspecialistas/Fisio.png" class="owl-carousel-image img-fluid" alt="">

                                    <div class="owl-carousel-info">
                                        <h4 class="mb-2">
                                            Lic. Luis Sánchez.
                                            <img src="images/verified.png" class="owl-carousel-verified-image img-fluid" alt="">
                                        </h4>

                                        <span class="badge">Fisioterapia </span>


                                    </div>

                                </div>


                                <div class="owl-carousel-info-wrap item">
                                    <img src="images/IndexEspecialistas/Geriatria.png" class="owl-carousel-image img-fluid"
                                         alt="">

                                    <div class="owl-carousel-info">
                                        <h4 class="mb-2">
                                            Dr. Alejandro Hernández.
                                            <img src="images/verified.png" class="owl-carousel-verified-image img-fluid" alt="">
                                        </h4>

                                        <span class="badge">Geriatria</span>
                                    </div>

                                    <div class="social-share">
                                        <ul class="social-icon">
                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-instagram"></a>
                                            </li>

                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-youtube"></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="owl-carousel-info-wrap item">
                                    <img
                                        src="images/IndexEspecialistas/Internista.png"
                                        class="owl-carousel-image img-fluid" alt="">

                                    <div class="owl-carousel-info">
                                        <h4 class="mb-2">

                                            Dr. Carlos Brunett
                                        </h4>
                                        <img src="images/verified.png" class="owl-carousel-verified-image img-fluid" alt="">
                                        <span class="badge">Medicina interna</span>
                                    </div>

                                    <div class="social-share">
                                        <ul class="social-icon">
                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-linkedin"></a>
                                            </li>

                                            <li class="social-icon-item">
                                                <a href="#" class="social-icon-link bi-whatsapp"></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>





            <section class="topics-section section-padding pb-0" id="section_3">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <div class="section-title-wrap mb-5">
                                <h4 class="section-title">Conocenos</h4>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="detail-page.html" class="custom-block-image-wrap">
                                    <img src="images/IndexEspecialistas/Carrera.jpg"  
                                         class="custom-block-image img-fluid" alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        Carrera 5KM
                                    </h5>
                                    <p class="badge mb-0">Corramos por ayudar</p>
                                    <p> </p>
                                    <p> Cada fin de año en Clinica Guaymas con colaboración con Optica EyeMax, realizamos la carrera de 5km
                                        "Corramos por Ayudar" cuya finalidad es apoyar a la comunidad guaymense de escasos recursos que
                                        necesiten de cirugía de cataratas </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="detail-page.html" class="custom-block-image-wrap">
                                    <img src="images/IndexEspecialistas/financiamiento.png"
                                         class="custom-block-image img-fluid" alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        Financiamiento
                                    </h5>
                                    <p class="badge mb-0">Pagos a meses sin intereses</p>
                                    <p></p>
                                    <p> Aceptamos pagos con tarjeta de débito y crédito.
                                        Contamos con meses sin intereses con tarjetas de crédito Banamex </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="detail-page.html" class="custom-block-image-wrap">
                                    <img src="images/IndexEspecialistas/emergencias.png" class="custom-block-image img-fluid" alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        Emergencias
                                    </h5>
                                    <p class="badge mb-0"> Atención las 24 horas </p>
                                    <p></p>
                                    <p>En Clínica Guaymas,  estamos comprometidos con su salud y bienestar las 24 horas del día, los 7 días de la semana. Nuestro equipo médico está disponible en todo momento para brindarle la atención que necesita, cuando la necesite  </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="detail-page.html" class="custom-block-image-wrap">
                                    <img src="images/IndexEspecialistas/doctores.png" class="custom-block-image img-fluid"
                                         alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        Nuestros Números               
                                    </h5>

                                    <p class="badge mb-0">Un compromiso constante </p>
                                    <p></p>
                                    <p>2 Centros médiicos</p>
                                    <p>14+ Especialistas</p>
                                    <p>10+ Años de experiencia laborando</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section class="trending-podcast-section section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <div class="section-title-wrap mb-5">
                                <h4 class="section-title">Mejorando siempre para ti </h4>
                            </div> 
                        </div>

                        <div class="col-lg-4 col-12 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-full">
                                <div class="custom-block-image-wrap">
                                    <a href="detail-page.html">
                                        <img src="images/IndexEspecialistas/radio-oncologia.png" class="custom-block-image img-fluid" alt="">
                                    </a>
                                </div>

                                <div class="custom-block-info">
                                    <h5 class="mb-2">                
                                        NUEVO SERVICIO                 
                                    </h5>

                                    <div class="profile-block d-flex">
                                        <img src="images/IndexEspecialistas/radio onco simbol.png"
                                             class="profile-block-image img-fluid" alt="">

                                        <p>Dra. Karla Padilla
                                            <strong>Radio-oncología</strong>
                                        </p>
                                    </div>

                                    <p class="mb-0">¡No están solos en esta lucha!</p>
                                    <p>Contáctenos hoy mismo en Clínica Guaymas, para obtener más información sobre nuestros servicios de Radio-Oncología</p>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-full">
                                <div class="custom-block-image-wrap">
                                    <a href="detail-page.html">
                                        <img src="images/IndexEspecialistas/oncologia quirurgica.png" class="custom-block-image img-fluid" alt="">
                                    </a>
                                </div>

                                <div class="custom-block-info">
                                    <h5 class="mb-2">                 
                                        NUEVO SERVICIO
                                    </h5>

                                    <div class="profile-block d-flex">
                                        <img src="images/IndexEspecialistas/onco quirurgica simbol.png""
                                             class="profile-block-image img-fluid" alt="">

                                        <p>
                                            Dr.Leonel Camacho 
                                            <strong>Oncología Quirurgíca</strong>
                                        </p>
                                    </div>

                                    <p class="mb-0">No espere más para obtener la atención que necesita. Comuníquese con nosotros hoy mismo para programar una consulta con nuestros especialistas en Oncología Quirúrgica y comience su viaje hacia la curación en Clínica Guaymas </p> 
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="custom-block custom-block-full">
                                <div class="custom-block-image-wrap">
                                    <a href="detail-page.html">
                                        <img src="images/IndexEspecialistas/Espirometria.png" class="custom-block-image img-fluid" alt="">
                                    </a>
                                </div>

                                <div class="custom-block-info">
                                    <h5 class="mb-2">                
                                        SERVICIO COMUNITARIO
                                    </h5>

                                    <div class="profile-block d-flex">
                                        <img src="images/IndexEspecialistas/Servicio c simbol.png"
                                             class="profile-block-image img-fluid" alt="">

                                        <p>
                                            GRATIS
                                            <strong>Espirometrias</strong>
                                        </p>
                                    </div>

                                    <p class="mb-0">En Clínica Guaymas, su salud pulmonar está en buenas manos. No deje que los problemas respiratorios le roben la tranquilidad.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>


        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                        <div class="subscribe-form-wrap">
                            <h6>Unete a nuestro equipo, deja tu correo</h6>

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
                        <a class="navbar-brand" href="index.html">
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
                                <a href="#" class="site-footer-link">Contactanos</a>
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
