<%-- 
    Document   : login
    Created on : 28 abr. 2024, 13:53:12
    Author     : Jonathan Cabrera
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>. :: Login ::.</title>
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
  
    </head>
    <body>
    <c:if test="$(success==0">
        <p id="error">Usuario o Contraseña Incorrecto</p>
    </c:if>
            <h1>Iniciar sesión</h1>
        <form action="iniciar" method="post">
            <input type="text" name="usuario" placeholder="nombre de usuario"><br>
            <input type="password" name="pass"><br>
            <input type="submit" value="Iniciar sesion">
        </form>
        <br>
        No tienes una cuenta...<a href="registro.jsp">Registrar</a>
       
    </body>
</html>
