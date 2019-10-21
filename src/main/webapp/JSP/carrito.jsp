<%-- 
    Document   : carrito
    Created on : 20-oct-2019, 21:27:20
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/tiendaStyle.css"/>
    </head>
    <body>
        <h1>Tu Carrito de la compra:</h1>
        <div id="contenido">
            <p>${compra}</p>
        <p><button onclick="window.location.href='${pageContext.request.contextPath}/JSP/tienda.jsp'">Seguir comprando</button></p>
        <form action="JSP/compra.jsp" method="post">
            <input type="submit" name="comprar" value="Comprar"/>
        </form>
        </div>
    </body>
</html>
