<%-- 
    Document   : TablaServicios
    Created on : 2 may. 2024, 14:06:45
    Author     : Jonathan Cabrera
--%>
<%@page import="Modelo.Cliente"%>
<%@page import="Modelo.ModeloCliente"%>
<%@page import="Controlador.ControladorServicios"%>
<%
    HttpSession objSesion = request.getSession(false);
    String usuario = (String) objSesion.getAttribute("usuario");
    if (usuario == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ControladorServicios cc = new ControladorServicios();
%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Página principal</title>

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

    </head>

    <body>
<main>

    <nav class="navbar navbar-expand-lg">
      <div class="container">
          <a class="navbar-brand me-lg-5 me-0" href="menu_Admin.jsp">
          <img src="images/logo.png" class="logo-image img-fluid" alt="templatemo pod talk">
         Clinica Guaymas
        </a>
         <nav>
                <div class="container-fluid"> 
                     <div class="col-lg-12 col-12 d-flex flex-wrap">
                            <p class="d-flex me-4 mb-0">
                                Usuario:  <% out.println(usuario);%>
                            </p>

                            <p class="d-flex d-lg-block d-md-block d-none me-4 mb-0">
                                <a href="CerrarSesion" style="color: black;">Salir</a>

                            </p>

                    <a  href="menu_Admin.jsp" >
                        <span class="navbar-text ms-2">Volver</span>
                    </a>
                </div>
            </nav>
              
         
           
      </div>
    </nav>

    <section class="hero-section">
  <section class="table-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Citas</h2>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre completo</th>
                                        <th>Teléfono</th>
                                        <th>Correo electrónico</th>
                                        <th>Servicio</th>
                                        <th>Fecha y hora</th>
                                        <!-- Add more column headers if needed -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <%= cc.getCitasTabla()%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
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