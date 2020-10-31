<%-- 
    Document   : listarEn
    Created on : 28/10/2020, 05:00:25 PM
    Author     : V330
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.U03_Encomienda"%>
<%@page import="java.util.List"%>
<%@page import="modeloDao.U03_EncomiendaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <div>

            <h1>Encomiendas</h1>
            <h1><a href="Controlador?accion=addEn">Agregar nueva encomienda</a></h1>
            <table border="1" class="user">
                <thead>
                    <tr>                            
                        <th>ID</th>
                        <th>Nombre del Emisor</th>
                        <th>Apellido del Emisor</th>
                        <th>Dni del Emisor</th>
                        <th>Nombre del Receptor</th>
                        <th>Apellido del Receptor</th>
                        <th>Dni del Receptor</th>
                        <th>Lugar</th>
                        <th colspan="2" >ESTADO</th>
                    </tr>
                </thead>
                <%

                    U03_EncomiendaDao dao = new U03_EncomiendaDao();
                    List<U03_Encomienda> list = dao.listar();
                    Iterator<U03_Encomienda> iter = list.iterator();
                    U03_Encomienda en = null;
                    while (iter.hasNext()) {
                        en = iter.next();
                %>
                <tbody>
                    <tr>

                        <td><%=en.getId()%></td>
                        <td><%=en.getEnvia_nom()%></td>
                        <td><%=en.getEnvia_ape()%></td>
                        <td><%=en.getEnvia_dni()%></td>
                        <td><%=en.getRecoge_nom()%></td>
                        <td><%=en.getRecoge_ape()%></td>
                        <td><%=en.getRecoge_dni()%></td>
                        <td><%=en.getLugar_recojo()%></td>
                        <td><a href="Controlador?accion=editar&id=<%=en.getId()%> " >editar</a> </td>
                        <td><a href="Controlador?accion=eliminar&id=<%=en.getId()%>" onclick="return mensaje();" >Eliminar</a> </td>                            
                    </tr>
                    <% }%>

                </tbody>
            </table>

        </div>
        <script type="text/javascript">
            function mensaje(e) {
                if (confirm("¿Estás seguro que deseas eliminiar el registro?")) {
                    return true;
                } else {
                    return false; //cancela el evento por defecto de ir a la pagina
                }
            }
        </script>

    </body>
</html>
