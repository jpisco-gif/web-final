<%-- 
    Document   : index
    Created on : 26/10/2020, 07:40:42 PM
    Author     : V330
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Administración</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' href='../../css/estilo.css'>
    </head>
    <body class="body">

        <!--Contenedor-->
        <div class="contenedor informe">
            <!--headermain-->
            <div class="headermain">
                <!--Header-->
                <header>
                    <a href="index.html" class="logo"><img src="img/logo2.svg" alt="" /></a>
                    <!--logo-->
                </header>

                <!--Nav-->
                <nav class="menu-lateral">
                    <ul>
                        <li class="reporte">
                            <h4>Reportes</h4>
                        </li>
                        <li class="usuarios"><a href="../../../U03_Controlador?accion=listar" onclick="" target="cabecera" >Usuarios</a></li>
                        <li class="viajes "><a href="user02-viajes.html">Viajes</a></li>
                        <li class="encomiendas"><a href="../../../U03_Controlador?accion=listarEn" target="cabecera">Encomiendas</a></li>
                        <li class="reporte detallado"><a href="user02-perfil.html">Perfil</a></li>
                    </ul>
                </nav><!--  
                  Main
                --><main>    
                    <section class="reporte-grafico">
                        
                            
                            <h1> HOLA ADMINISTRADOR :D</h1>
                            <iframe name="cabecera" id="cabecera" src="vistas/u03_listar.jsp" width="850" height="420" frameborder="0"></iframe>
                            
                            
                        
                        
                    </section>
                </main>
                <div class="stickyfooter">

                </div>
            </div><!--headermain-->
            <!--Footer-->
            <footer>

            </footer>
        </div><!--Contenedor-->
    </body>    
</html>
