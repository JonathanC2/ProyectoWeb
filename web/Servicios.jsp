<%-- 
    Document   : Servicios
    Created on : 28 abr. 2024, 14:44:22
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

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="description" content="">
  <meta name="author" content="">

  <title>.:: Servicios ::.</title>

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
                data-bs-toggle="dropdown" aria-expanded="false">Servicios y Especialidades</a>

              <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                <li><a class="dropdown-item" href="Especialistas.jsp">Especialistas</a></li>

                <li><a class="dropdown-item active" href="Servicios.jsp">Servicios</a></li>
              </ul>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="contacto.jsp">Contacto</a>
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

            <h2 class="mb-0">Servicios </h2>
          </div>

        </div>
      </div>
    </header>


    <section class="latest-podcast-section section-padding pb-0" id="section_2">
      <div class="container">
        <div class="row justify-content-center">

          <div class="col-lg-10 col-12">
            <div class="section-title-wrap mb-5">
              <h4 class="section-title">Contamos con los siguientes estudios.</h4>
            </div>

            <div class="row">
              <div class="col-lg-3 col-12">
                <div class="custom-block-icon-wrap">
                  <div class="custom-block-image-wrap custom-block-image-detail-page">
                    <img src="images/Servicios/paquete cirugia.jpg" class="custom-block-image img-fluid" alt="">
                  </div>
                </div>
              </div>

              <div class="col-lg-9 col-12">
                <div class="custom-block-info">
                  <div class="custom-block-top d-flex mb-1">
                    <small class="me-4">
                      
                    </small>

                  </div>

                  <h2 class="mb-2">Paquetes Prequirurgicos</h2>

                  <p>
                    ¡Descubra la excelencia en atención médica con nuestros paquetes quirúrgicos en Clínica Guaymas!</p>

                  <p>En Clínica Guaymas, entendemos la importancia de la salud y el bienestar de nuestros pacientes. Es
                    por eso que hemos creado paquetes quirúrgicos integrales diseñados para brindarle tranquilidad y
                    resultados excepcionales en cada paso del proceso.</p>

                  <p>Nuestros paquetes quirúrgicos incluyen:</p>
                  <p>
                    ○ Evaluación médica exhaustiva
                  </p>
                  <p>
                    ○ Procedimientos quirúrgicos de vanguardia
                  </p>
                  <p>
                    ○ Atención personalizada
                  </p>
                  <p>
                    ○ Servicios complementarios
                  </p>

                  <div class="profile-block profile-detail-block d-flex flex-wrap align-items-center mt-5">
                    <div class="d-flex mb-3 mb-lg-0 mb-md-0">
                      <img src="images/Servicios/Cirugia simbol.png" class="profile-block-image img-fluid" alt="">

                      <p>
                        
                        <img src="images/verified.png" class="verified-image img-fluid" alt="">

                        <strong> Personalizar paquete </strong>
                      </p>
                    </div>

                    <div class="ms-4">
                      <a href="contacto.jsp" class="btn custom-btn custom-border-btn smoothscroll">Reaizar cotizacion </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>


    <section class="related-podcast-section section-padding">
      <div class="container">
        <div class="row">

          <div class="col-lg-12 col-12">
            <div class="section-title-wrap mb-5">
              <h4 class="section-title">Más servicios </h4>
            </div>
          </div>

          <div class="col-lg-4 col-12 mb-4 mb-lg-0">
            <div class="custom-block custom-block-full">
              <div class="custom-block-image-wrap">
                <a href="detail-page.html">
                  <img src="images/Servicios/electrocardiograma.png" class="custom-block-image img-fluid" alt="">
                </a>
              </div>

              <div class="custom-block-info">
                <h5 class="mb-2">
                   <a href="menuServiciosCitas.jsp" class="menuServiciosCitas">
                    Electrocardiograma
                  </a>
                </h5>
                <div class="profile-block d-flex">
                  <img src="images/Servicios/ElectroSimbolo.png" class="profile-block-image img-fluid" alt="">

                  <p>
                    <strong>$250.00 MXN </strong>
                  </p>
                </div>

                <p class="mb-0">Pureba que registra la actividad eléctrica del corazón que se produce en cada latido
                  cardiaco.</p>
              </div>


                
                
                
            </div>
          </div>
          <div class="col-lg-4 col-12 mb-4 mb-lg-0">
            <div class="custom-block custom-block-full">
              <div class="custom-block-image-wrap">
                <a href="detail-page.html">
                  <img src="images/Servicios/checkup.png" class="custom-block-image img-fluid" alt="">
                </a>
              </div>

              <div class="custom-block-info">
                <h5 class="mb-2">
                 <a href="menuServiciosCitas.jsp" class="menuServiciosCitas">
                    Check Up
                  </a>
                </h5>

                <div class="profile-block d-flex">
                  <img src="images/Servicios/Gineco Simbol.png" class="profile-block-image img-fluid" alt="">

                  <p>
                    <strong>$1200.00 MXN </strong>
                  </p>
                </div>

                <p class="mb-0"> Consulta ginecológica, Papanicolau, Revisión de mamas, Ultrasonido pélvico.
                </p>

              </div>

            </div>
          </div>

          <div class="col-lg-4 col-12 mb-4 mb-lg-0">
            <div class="custom-block custom-block-full">
              <div class="custom-block-image-wrap">
                <a href="detail-page.html">
                  <img src="images/Servicios/laboratorio.png" class="custom-block-image img-fluid" alt="">
                </a>
              </div>

              <div class="custom-block-info">
                <h5 class="mb-2">
                  <a href="menuServiciosCitas.jsp" class="menuServiciosCitas">
                    Laboratorios
                  </a>
                </h5>

                <div class="profile-block d-flex">
                  <img src="images/Servicios/lab simbol.png"
                    class="profile-block-image img-fluid" alt="">

                  <p>
                    <strong>Los precios varian </strong>
                  </p>
                </div>

                <p class="mb-0">Biometría Hemática,
                Química Sanguínea,
                Examen General de Orina,
                Reacciones Febriles,
                Tiempos de Coagulación,
                Prueba de Embarazo,
                Perfil Tiroideo,
                Grupo Sanguíneo y RH,
                Factor Reumatoide,
                </p>


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
              <a href="#" class="site-footer-link">Contactanos</a>
            </li>
          </ul>
        </div>

        <div class="col-lg-3 col-12">
          <p class="copyright-text mb-0">>Copyright © 2024 Clinica Guaymas
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
