<%-- 
    Document   : compra
    Created on : 20-oct-2019, 23:00:12
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/tiendaStyle.css"/>
        <title>Gracias por tu compra.</title>
    </head>
    <body>
        <h1>Resumen de la compra</h1>
        <div id="contenido">
            <p>${compra}</p>
            <p><button onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">Gracias por confiar en nuestra tienda</button></p>
        </div>
    </body>
</html>
