<%-- 
    Document   : menu
    Created on : 19/01/2023, 06:49:44 AM
    Author     : ark_d
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>MENU</title>
        <link rel="stylesheet" href="../css/normalize.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Kurale&family=Playfair+Display:wght@700&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="../css/app.css" />
    </head>
    <body>
        <h4>Hola <%=request.getSession().getAttribute("nombre")%></h4><p></p>
        <form metho="post" action="../cerrarSesion">
            ${txtUseri}<input type="submit" value="CerrarSesion">
        </form>
        <header>
            <div>
                <h1 class="nombreSitio">CLUBS</h1>
            </div>
        </header>
        <div class="containerNav">
            <nav class="navPrincipal container">
                <a href="menu.jsp">Inicio</a>
                <a href="clubs.jsp">Clubs</a>
                <a href="inscripcion.jsp">Inscripcion de Club</a>
                <a href="consultar.jsp">Consultar Club</a>
            </nav>
        </div>
        <div class="hero"></div>
    </body>
</html>
