<%-- 
    Document   : registro
    Created on : 28 abr. 2024, 19:09:06
    Author     : Jonathan Cabrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar</title>
    </head>
    <body>
        <h1>Registrar usuario</h1>
        <form action="nuevousuario" method="post">
            <input type="text" name="usuario" placeholder="nombre de usuario"<br>
            <input type="password" name="pass"><br>
            <input type="submit" value="Registrar usuario">
        </form>
        <br>
    </body>
</html>
