<%-- 
    Document   : tienda
    Created on : 20-oct-2019, 21:29:06
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Tienda</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/tiendaStyle.css"/>
    </head>
    <body>
        <h1 id="contenido">The old town Bookshop</h1>
        <div class="form-group" id="contenido">
            
            <h3>${mensaje}</h3>
            <form action="${pageContext.request.contextPath}/Compra" method="post">

                <legend id="contenido">Selecciona un libro:</legend>
                <select class="form-control-md" name="titulo" size="5">
                    <option value="Juego de Tronos">Juego de Tronos</option>
                    <option value="Mass Effect">Mass Effect</option>
                    <option value="Los Juegos del Hambre">Los Juegos del Hambre</option>
                    <option value="El Codigo da Vinci">El Código da Vinci</option>
                    <option value="Ola de Calor">Ola de Calor</option>
                </select>
                <br>
                <br>
                <p>
                    <label>Cantidad</label>
                    <input type="number" name="cantidad" min="0" class="number" value="0"/>
                </p>
                <p>
                    <input class="btn btn-primary mb-2" type="submit" name="enviar" value="Añadir"/>
                    &nbsp;&nbsp;
                    <input class="btn btn-warning mb-2" type="reset" name="reset" value="Limpiar"/>
                </p>
            </form>
            <form action="${pageContext.request.contextPath}/Carrito" method="post">
                <input class="btn btn-success mb-2" type="submit" name="carrito" value="Ir a carrito"/>
            </form>
        </div>
    </body>
</html>
