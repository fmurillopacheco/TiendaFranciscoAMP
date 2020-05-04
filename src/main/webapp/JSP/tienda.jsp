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
        <title>Tienda</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/tiendaStyle.css"/>
    </head>
    <body>
<%--       <h1>La Chabola del libro</h1> --%>
        <div id="contenido">
            
            <h3>${mensaje}</h3>
            <form action="${pageContext.request.contextPath}/Compra" method="post">

                <legend>Selecciona un libro:</legend>
                <select name="titulo" size="5">
                    <option value="Juego de Tronos">Juego de Tronos</option>
                    <option value="Mass Effect">Mass Effect</option>
                    <option value="Los Juegos del Hambre">Los Juegos del Hambre</option>
                    <option value="El Codigo da Vinci">El Código da Vinci</option>
                    <option value="Ola de Calor">Ola de Calor</option>
                </select>
                <p>
                    <label>Cantidad</label>
                    <input type="number" name="cantidad" min="0" class="number" value="0"/>
                </p>
                <p>
                    <input type="submit" name="enviar" value="Añadir"/>
                    &nbsp;&nbsp;
                    <input type="reset" name="reset" value="Limpiar"/>
                </p>
            </form>
            <form action="${pageContext.request.contextPath}/Carrito" method="post">
                <input type="submit" name="carrito" value="Ir a carrito"/>
            </form>
        </div>
    </body>
</html>
