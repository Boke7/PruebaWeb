<%@page import="com.fpmislata.daw2.banco.datos.EntidadBancariaDAOImpJDBC"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.daw2.banco.negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.daw2.banco.negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.daw2.banco.datos.EntidadBancariaDAO"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>


       
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImpJDBC();
    String nombre = request.getParameter("nombre");
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findByNombre(nombre);
    
%>
 
<html>
    <head>
        <title>Entidades Bancarias</title>
        <link href="bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet"> 
    </head>
    <body>
         <form name="Formulario" method="GET" action="index.jsp">
            <p>Introduce el nombre de una entidad
            <input type="text" name="nombre">
            </p>
            <input type="submit" value="Enviar" name="enviar">
        </form>
        <table class="btn-warning">
            <tr>
                <td>ID</td><td>Codigo</td><td>Nombre</td><td>CIF</td><td>Tipo</td>
            </tr>
<%
    for(EntidadBancaria entidadBancaria:entidadesBancarias){
%>
            <tr>
                <td><%= entidadBancaria.getIdEntidadBancaria() %></td><td><%=entidadBancaria.getCodigoEntidad()%></td><td><%=entidadBancaria.getNombre()%></td><td><%=entidadBancaria.getCif()%></td><td><%=entidadBancaria.getTipoEntidadBancaria()%></td>
            </tr>
<%
} 
%>           
        </table>       
    </body>

</html>