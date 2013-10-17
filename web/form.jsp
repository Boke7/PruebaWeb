<%-- 
    Document   : form
    Created on : 17-oct-2013, 10:38:33
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="Formulario" method="GET" action="index.jsp">
            <p>Introduce el nombre de una entidad
            <input type="text" name="nombre">
            </p>
            <input type="submit" value="Enviar" name="enviar">
        </form>
    </body>
</html>
