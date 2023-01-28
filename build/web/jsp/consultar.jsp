<%-- 
    Document   : consultar
    Created on : 19/01/2023, 05:19:47 PM
    Author     : ark_d
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>INSCRIPCION</title>
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
        <section>
            <h1>Clubs Registrados</h1>
            <p><%=request.getSession().getAttribute("club")%></p>
        </section>
    </body>
</html>
