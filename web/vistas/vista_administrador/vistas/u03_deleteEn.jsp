<%-- 
    Document   : delete
    Created on : 26/10/2020, 07:38:12 PM
    Author     : V330
--%>

<%@page import="modelo.U03_Encomienda"%>
<%@page import="modeloDao.U03_EncomiendaDao"%>
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
        int id=Integer.parseInt((String)request.getAttribute("idel"));
        end.delete(id);
        request.getRequestDispatcher("u03_listarEn.jsp").forward(request, response);
        %>
            
    </body>
</html>
