<%-- 
    Document   : compra
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

         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/tiendaStyle.css"/>
        <title>Gracias por tu compra.</title>
    </head>
    <body>
        <h1 id="contenido">Resumen de la compra</h1>
        <div id="contenido">
            <p>${compra}</p>
            <p><button class="btn btn-info" onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">Gracias por confiar en nuestra tienda</button></p>
        </div>
    </body>
</html>
