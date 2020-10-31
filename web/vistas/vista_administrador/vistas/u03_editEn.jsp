<%-- 
    Document   : editEn
    Created on : 29/10/2020, 03:46:03 PM
    Author     : V330
--%>

<%@page import="modeloDao.U03_EncomiendaDao"%>
<%@page import="modelo.U03_Encomienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        U03_EncomiendaDao end=new U03_EncomiendaDao();
        int id=Integer.parseInt((String)request.getAttribute("iden"));
        U03_Encomienda en=(U03_Encomienda)end.list(id);
        %>
         <form action="Controlador">
                <table border="1">
                    <tbody>
                        <tbody>
                        <tr>
                            <td colspan="2">EMISOR </td>                        
                            <td colspan="2">RECEPTOR </td>
                        </tr>
                        <tr>
                            <td>Nombres:</td>
                            <td><input type="text" name="txtNomE" value="<%=en.getEnvia_nom() %>"/></td>
                            <td>Nombres:</td>
                            <td><input type="text" name="txtNomR" value="<%=en.getRecoge_nom() %>"/></td>
                        </tr>
                        <tr>
                            <td>Apellidos:</td>
                            <td><input type="text" name="txtApeE" value="<%=en.getRecoge_nom() %>"/></td>
                            <td>Apellidos:</td>
                            <td><input type="text" name="txtApeR" value="<%=en.getRecoge_ape() %>"/></td>
                        </tr>
                        <tr>
                            <td>DNI:</td>
                            <td><input type="text" name="txtDniE" value="<%=en.getEnvia_dni() %>"/></td>
                            <td>DNI:</td>
                            <td><input type="text" name="txtDniR" value="<%=en.getRecoge_dni() %>"/></td>
                        </tr>
                        
                        <tr>
                            <td>Lugar de Envio</td>
                            <td><input type="text" name="txtLug" value="<%=en.getLugar_recojo() %>"/></td>
                            <input type="hidden" name="txtId" value="<%=en.getId()%>"/>
                            <td colspan="2"> <input type="submit" value="Actualizar" name="accion" /> </td>
                        </tr>
                    </tbody>                        
                </table>
                            <a href="Controlador?accion=listarEn">Regresar</a>
            </form> 
    </body>
</html>
