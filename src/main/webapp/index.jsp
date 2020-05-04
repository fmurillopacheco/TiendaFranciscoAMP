<%-- 
    Document   : index
    Created on : 16 oct. 2019, 19:43:04
    Author     : franciscoantonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="INC/metas.inc" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Tienda de libros online.</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/tiendaStyle.css"/>
        
    </head>
    <body>
        <a href="JSP/tienda.jsp"><h1 id="index">The old town Bookshop</h1></a>
        <div id="contenido">
            <a href="${pageContext.request.contextPath}/JSP/tienda.jsp"></a>
            <img src="https://live.staticflickr.com/7262/7048256155_0254816a4d_h.jpg" width="640" height="526">
            <p>Old & news books, maps & prints.</p>
        </div>
    </body>
</html>
