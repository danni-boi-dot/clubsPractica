<%-- 
    Document   : inscripcion
    Created on : 19/01/2023, 02:24:44 PM
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
        <form method="post" action="../cerrarSesion">
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

        <form action="../inscripcion" method="post">
            <fieldset>
                <legend>Inscripcion</legend>
                <div>
                    <label>Club</label>
                    <input name="txtClub" id="txtClub" type="text" placeholder="Club" required="">
                </div>
                <div>
                    <label>Nombre</label>
                    <input name="txtName" id="txtName" type="text" placeholder="Nombre" required="">
                </div>
                <div>
                    <label>Apellidos</label>
                    <input name="txtApe" id="txtApe" type="text" placeholder="Apellidos" required="" >
                </div>
                <div>
                    <label>Email</label>
                    <input name="txtEma" id="txtEma" type="text" placeholder="Email" required="" >
                </div>                
                <div>
                    <label >Número telefónico</label>
                    <input name="txtTel" id="txtTel" type="text" placeholder="Número telefónico" required="">
                </div>
                <div>
                    <label>Fecha de nacimiento</label>
                    <input name="txtNaci" id="txtNaci" type="date" placeholder="Fecha de nacimento" pattern ="\d{10}" required minlength="10" maxlength="10">
                </div>
                <div>
                    <label>Dirección completa</label>
                    <input name="txtDir" id="txtDir" type="text" placeholder="Direccion Completa">
                </div>
                <div>
                    <label>Ciudad</label>
                    <input name="txtCity" id="txtCity" type="text" placeholder="Ciudad" required="">
                </div>
                <div>
                    <label>Delegacion</label>
                    <input name="txtDel" id="txtDel" type="text" placeholder="Delegacion" required="">
                </div>
            </fieldset>
            <button class="button">Registrar</a>
        </form>
    </body>

</html>
