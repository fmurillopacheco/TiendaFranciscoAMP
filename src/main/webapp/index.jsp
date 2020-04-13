<%-- 
    Document   : index
    Created on : 16 oct. 2019, 19:43:04
    Author     : franciscoantonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Tienda de libros online.</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/tiendaStyle.css"/>
        
    </head>
    <body>
        <h1 id="index">La Chabola del libro</h1>
        <div id="contenido">
            <a href="${pageContext.request.contextPath}/JSP/tienda.jsp">
                <img src="${pageContext.request.contextPath}/IMG/logo_tienda.png" alt="tienda online"/>
            </a>
        </div>
    </body>
</html>
