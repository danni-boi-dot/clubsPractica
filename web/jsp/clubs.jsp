<%-- 
    Document   : clubs
    Created on : 19/01/2023, 06:52:24 AM
    Author     : ark_d
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>CLUBS</title>
        <link rel="stylesheet" href="../css/normalize.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Kurale&family=Playfair+Display:wght@700&display=swap"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="../css/app.css" />
    </head>
    <body>
        <h4>Hola <%=request.getSession().getAttribute("nombre")%></h4><p></p>
        <form metho="post" action="../cerrarSesion">
            ${txtUseri}<input type="submit" value="CerrarSesion">
        </form>
        <header>
            <div class="">
                <h1 class="nombreSitio">CLUBS</h1>
            </div>
        </header>
        <div class="containerNav">
            <div class="containerNav">
                <nav class="navPrincipal container">
                    <a href="menu.jsp">Inicio</a>
                    <a href="clubs.jsp">Clubs</a>
                    <a href="inscripcion.jsp">Inscripcion de Club</a>
                    <a href="consultar.jsp">Consultar Club</a>
                </nav>
            </div>
        </div>
        <section class="container">
            <h2>Consultar Clubs</h2>
            <div class="categorias">
                <div class="clubes">
                    <img src="../img/baile.jpeg" alt="Baile" />
                    <a href="clubs/baile.jsp">Baile</a>
                </div>
                <div class="clubes">
                    <img src="../img/volleyball.jpg" alt="Volleyball" />
                    <a href="clubs/volleyball.jsp">Volleyball</a>
                </div>
                <div class="clubes">
                    <img src="../img/tocho.jpg" alt="Tocho" />
                    <a href="clubs/tocho.jsp">Tocho</a>
                </div>
            </div>
            <div class="categorias2">
                <div class="clubes">
                    <img src="../img/futbol.jpg" alt="Futbol" />
                    <a href="clubs/futbol.jsp">Futbol</a>
                </div>
                <div class="clubes">
                    <img src="../img/ajedrez.jpg" alt="Ajedrez" />
                    <a href="clubs/ajedrez.jsp">Ajedrez</a>
                </div>
            </div>
        </section>
    </body>
</html>
