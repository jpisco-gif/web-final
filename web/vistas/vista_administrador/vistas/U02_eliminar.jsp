<%@page import="Modelo.U02_Persona"%>
<%@page import="ModeloDao.U02_PersonaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        U02_PersonaDao end=new U02_PersonaDao();
        int ruta_id=Integer.parseInt((String)request.getAttribute("idel"));
        end.eliminar(ruta_id);
        request.getRequestDispatcher("U02-Viajes2.jsp").forward(request, response);
        %>
            
    </body>
</html>