<%-- 
    Document   : u01-comprarPasaje
    Created on : 26-oct-2020, 21:39:34
    Author     : Manuel
--%>
<%@page import="Modelo.U01_Ruta"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.U01_RutasDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../../css/estilo.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

        <title>Comprar pasaje</title>
    </head>
    <body>
        <nav class="menu">
            <ul>
                <li>Inicio</li>
                <li>Nosotros</li>
                <li>Servicios</li>
                <li>Atención al cliente</li>
            </ul>
        </nav>
        <section class="info-rutas">
            <h3>Horarios disponibles</h3>
            <table border="1">
                <tr>
                    <td>Cod. itinerario</td>
                    <td>Duración</td>
                    <td>Fecha</td>
                    <td>Precio</td>
                    <td>Asientos</td>
                </tr>
                <%
                    U01_RutasDao dao = new U01_RutasDao();
                    List<U01_Ruta> list = dao.consultar_ruta();
                    Iterator<U01_Ruta> iter = list.iterator();
                    U01_Ruta ruta = null;
                    while (iter.hasNext()) {
                        ruta = iter.next();
                %>
                <tr>
                    <td><%=ruta.getItinerarios_id()%></td>
                    <td><%=ruta.getDuracion()%></td>
                    <td><%=ruta.getFecha()%></td>
                    <td><%=ruta.getPrecio()%></td>
                    <td>
                        <a class="btnAsiento"  name="btnAsiento" onclick="EscoAsiento(<%=ruta.getItinerarios_id()%>,<%=ruta.getPrecio()%>)"><input type="button" value="Ver asientos"></a>
                    </td>
                </tr>
                <% }%>
            </table>
        </section>
        <section class="asiento-form">
            <div id="contenido">

            </div>
            <div id="contenido2">

            </div>
        </section>

    </body>
    <script>
        function EscoAsiento(val, val2) {
            $.post("u01-verAsientos.jsp", {val: val,val2: val2})
                    .done(function (data) {
                        $('#contenido').html(data);
//                console.log(data);
                    });
        }
        function ingresaDatos(val, val2, val3) {
            $.post("u01-ingresarDatos.jsp", {val: val, val2: val2, val3: val3})
                    .done(function (data) {
                        $('#contenido2').html(data);
//                console.log(data);
                    });
        }
    </script>
</html>
