
<%@page import="controlador.PersonaDao"%>
<% 
HttpSession sesion= request.getSession();
String usuario;
String rol_id;

if (sesion.getAttribute("usuario")!=null && sesion.getAttribute("rol_id")!=null) {
        usuario=sesion.getAttribute("usuario").toString();
        rol_id=sesion.getAttribute("rol_id").toString();
        out.print("<a href='U04-Login/U04-login.jsp?cerrar=true'><h5>Cerrar Sesion"+usuario+"</h5></a>");
    }else{
    out.print("<script> location.replace('U04-Login/U04-login.jsp');</script>");
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! admin</h1>
        
    </body>
</html>
