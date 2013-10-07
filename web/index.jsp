<%@page import="java.util.List"%>
<%@page import="com.fpmislata.daw2.banco.negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.daw2.banco.negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.daw2.banco.datos.EntidadBancariaDAO"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAO();
    
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findAll();
    
%>
<html>
    <head>
        <title>Entidades Bancarias</title>
    </head>
    <body>
        
        <table style="border:1px solid red;">
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