<%-- 
    Document   : registro
    Created on : 18/01/2023, 11:06:36 PM
    Author     : ark_d
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>REGISTRO</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/normalize.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Kurale&family=Playfair+Display:wght@700&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="../css/app.css" />
    </head>
    <body>
    <center>
        <div>
            <h1>Registro</h1>
            <div>
                <form class="formAlta" id="formAlta" method="post" action="../guardar">
                    <label>Usuario:</label>
                    <input type="texto" id="txtUser" required="" name="txtUser">
                    <br>
                    <label>Nombre:</label>
                    <input type="texto" id="txtName" required="" name="txtName">
                    <br>
                    <label>Apellidos:</label>
                    <input type="texto" id="txtApe" required="" name="txtApe">
                    <br>
                    <label>Contraseña:</label>
                    <input type="password" id="txtPass" required="" onkeyup="coincidirPass()" > 
                    <label>Repite la Contraseña:</label>
                    <input type="password" id="txtRepPass" required="" onkeyup="coincidirPass()" name="txtPass">
                    <br>
                    <label class="avisoPass" id="avisoPass"></label>
                    <br>
                    <input type="submit" class="btn" Value="REGISTRO">
                    <input type="submit" class="btn" Value="BORRAR" onclick="resetearForm()"> 
                </form>
            </div>
        </div>
    </center>
</body>
<script src="../js/funReg.js"></script>
</html>