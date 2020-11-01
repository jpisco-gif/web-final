<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="ModeloDao.U04_CuentaDao"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimum-scale=1.0" >
    <title>Llama Bus</title>
    <link rel="stylesheet" href="../../../css/estilo1.css">
    <link href="https://file.myfontastic.com/t5tNwfwUapz4yDzK3B6sfe/icons.css" rel="stylesheet">
</head>
<body>
    <header class="header">
        <div class="contenedor">
            <h1 class="logo">Llama bus</h1>
            <span class="icon-menu" id="btn-menu"></span>
            <nav class="nav" id="nav">
                <ul class="menu">
                    <li class="menu__item"><a class="menu__link elect" href="U04-index.jsp">Inicio</a></li>
                    <li class="menu__item"><a class="menu__link" href="#">servicios</a></li>
                    <li class="menu__item"><a class="menu__link" href="U04-Nosotros.jsp">Nosotros</a></li>
                    <li class="menu__item"><a class="menu__link" href="U04-AtencioAlCliente.jsp">Atencion al cliente</a></li>
                    <% 
                         
                         HttpSession sesion= request.getSession();
                         String usuario;
                         String contraseņa;
                         if (sesion.getAttribute("usuario")!=null && sesion.getAttribute("contraseņa")!=null) {
                             usuario=sesion.getAttribute("usuario").toString();
                             contraseņa=sesion.getAttribute("contraseņa").toString();
                             out.println("<li class='menu__item'>");
                           out.println("<a class='menu__link' href='../Vistas/u04-logout.jsp'>Logout</a>");
                           out.println("</li>"); 
                                                         
                     } else {  
                           out.println("<li class='menu__item'>");
                           out.println("<a class='menu__link' href='../Vistas/U04-login.jsp'>Login</a>");
                           out.println("</li>");   
                              
                         }
 {
                            
                         }
                            %> 
                </ul>
            </nav>
        </div>
    </header>
    <div class="banner">
        <ul>
            <li><img src="../U04-img/arequipa.jpg" alt="" class="banner__img"></li>
            <li><img src="../U04-img/Ancash.jpg" alt="" class="banner__img"></li>
            <li><img src="../U04-img/ica.jpg" alt="" class="banner__img"></li>
            <li><img src="../U04-img/cuzco.jpg" alt="" class="banner__img"></li>
            <li><img src="../U04-img/huancayo.jpg" alt="" class="banner__img"></li>
        </ul>
        <div class="contenedor">
            <h2 class="banner__titulo">La mejor seguridad de buses del Peru</h2>
            <p class="banner__txt">Bioseguridad y protocolo</p>
        </div>
    </div>  

    <main class="main">
        <div class="contenedor">
            <section class="info">
                <article class="info__columna">
                    <img src="../U04-img/carro.png" alt="" class="info__img">
                    <h2 class="info__titulo">!No esperes! </h2>
                    <p class="info__txt">Lo que Necesitas saber para viajar con toda seguridad.</p>
                    <p class="infor__txt">!Informate Aqui!</p>
                </article>
                <article class="info__columna">
                    <img src="../U04-img/reconocer.png" alt="" class="info__img">
                    <h2 class="info__titulo">!Excelente!</h2>
                    <p class="info__txt">La excelencia de la calidad con todos los protocolos</p>
                    <p class="infor__txt">!CLIC Aqui!</p>
                </article>
                <article class="info__columna">
                    <img src="../U04-img/compra.png" alt="" class="info__img">
                    <h2 class="info__titulo">!Aprovecha!</h2>
                    <p class="info__txt">Descarga la app muy pronto y con descuentos</p>
                    <p class="infor__txt">!Conoce mas Aqui!</p>
                </article>
            </section>
            <div class="regiones">
                <h2 class="section__titulo">Los servicios de alta calidad</h2>
                <div>
                    <h2 style="text-align: center;">Llamas Bus</h2>
                    <p class="g">Nuestro servicios estan altamente capacitados con una seguridad prometedora en muchos ambitos, se necesitara el cargo de nuestros asesores cuando se necesite.Tenemos siempre los pagos en diferentes bancos, que por el momento estamos con paypal y efecto previo depositos. para cualquier consulta por favor enviarnos un mensaje a nuestros numero 996111651.
                    </p>
                </div>
                <div>
                    <embed src="../U04-img/servicios.mp4" type="" width="700" height="500">
                </div>


            </div>
            </div>
            </main>
           
    <footer class="footer">
        <div class="social">
            <a href="#" class="icon-facebook"></a>
            <a href="#" class="icon-twitter"></a>
            <a href="#" class="icon-gplus"></a>
            <a href="#" class="icon-vine"></a>
        </div>
        <p class="copy">&copy; LLama bus 2020 - Todos los derechos reservados</p>
    </footer>
    <script src="js/menu.js"></script>
</body>
</html>