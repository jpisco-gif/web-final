<%-- 
    Document   : listar
    Created on : 27/10/2020, 05:55:04 PM
    Author     : V330
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.U03_Usuario"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U03_UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .user th td{
                border-spacing: 0;
            }
        </style>
    </head>
    <body>
        <div>
            <h1>Usuarios</h1>
                <table border="1" class="user">
                    <thead>
                        <tr>                            
                            <th>ID</th>
                            <th>USUARIO</th>
                            <th>EMAIL</th>
                        </tr>
                    </thead>
                    <%

                        U03_UsuarioDao dao = new U03_UsuarioDao();
                        List<U03_Usuario> list = dao.listar();
                        Iterator<U03_Usuario> iter = list.iterator();
                        U03_Usuario per = null;
                        while (iter.hasNext()) {
                            per = iter.next();


                    %>
                    <tbody>
                        <tr>

                            <td><%=per.getId()%></td>
                            <td><%=per.getUsuario()%></td>
                            <td><%=per.getEmail()%></td>                            
                        </tr>
                        <% }%>

                    </tbody>
                </table>  

        </div>
    </body>
</html>
