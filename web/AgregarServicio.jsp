<%-- 
    Document   : AgregarServicio
    Created on : 2 may. 2024, 14:19:50
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
  <div class="container mt-5">
                <form action="RegistrarServicio" method="post">
                    <div class="form-group">
                        <label for="Nombre">Nombre</label>
                        <input type="text" id="Nombre" name="Nombre" class="form-control" placeholder="Nombre" required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="Descripcion">Descripcion</label>
                        <input type="text" id="Descripcion" name="Descripcion" class="form-control" placeholder="Descripcion"required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="Precio">Precio</label>
                        <input type="text" id="Precio" name="Precio" class="form-control" placeholder="Precio"required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="Imagen">Imagen</label>
                        <input type="text" id="Imagen" name="Imagen" class="form-control" placeholder="Imagen"required>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary">Registrar Nuevo Servicio</button>
                    <br>
                    
                    <br>
                </form>
            </div>
            </section>
  </main>
