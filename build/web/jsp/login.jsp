<%-- 
    Document   : login
    Created on : 19/01/2023, 02:23:01 AM
    Author     : ark_d
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LOGIN</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/normalize.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Kurale&family=Playfair+Display:wght@700&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="../css/app.css" />
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
    </head>
    <body>
    <center>
        <div>
            <h1 class="nombreSitio">Iniciar Sesion</h1>
            <div>
                <form action="../inicioSesion" method="post">
                    <p>Usuario:</p>
                    <input type="texto" name="txtUseri" placeholder="Usuario" required="" id="txtUseri">
                    <br>
                    <p>Contraseña:</p>
                    <input type="password" name="txtPassw" placeholder="Contraseña" required="" id="txtPassw">
                    <br>
                    <br>
                    <input type="submit" class="btn" VALUE="LOGIN">               
                </form>
            </div>
        </div>
    </center>
</body>

</html>
