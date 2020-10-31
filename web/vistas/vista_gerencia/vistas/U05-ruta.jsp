<%-- 
    Document   : U05-ruta
    Created on : 26/10/2020, 12:22:39 AM
    Author     : Anthony Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ruta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="U05-estilos.css">
    
</head>
<body>
      
        <!--Contenedor-->
          <div class="contenedor informe">
            <!--headermain-->
              <div class="headermain">
                <!--Header-->
                  <header>
                    <a href="index.html" class="logo"><img src="U02.png" alt="" /></a>
                      <!--logo-->
                  </header>
  
                  <!--Nav-->
                    <nav class="menu-lateral">
                      <ul>
                        <li class="reporte">
                          <h4>Gerencia</h4>
                        </li>
                        <li class="Home"><a href="U05-index.jsp">Home</a></li>
                        <li class="Reuniones"><a href="U05-cuentas.jsp">Cuentas</a></li>
                        <li class="Reuniones"><a href="U05-ruta.jsp">Rutas</a></li>
                        <li class="Finanzas"><a href="U05-finanzas.jsp">Finanzas</a></li>
                        <li class="Personal"><a href="#">Perfil</a></li>
                        <li class="Personal"><a href="#">Cerrar sesion</a></li>
                      </ul>
                    </nav><!--  
                      Main
                    --><main>    
                      <section class="reporte-grafico">
                        <div class="head_title">
                          <h1>RUTAS</h1>

                        
                        
                        </div>

                        <div class="finanzas">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo"><h3>Programacion de salidas</h3><hr></div>
                            <div class="finanzas_parrafo"><br><br>
                  
                              <label for="cars">Seleccione una opcion de orden:</label>
                  
                              <select name="opcionesb" id="opciones_orden">
                                <option value="ascendente">Ascendente</option>
                                <option value="descendente">Descendente</option>
                              </select>

                                <br>
                                <br>
                                <br>

                              <table class="tftable" border="1">
                                <tr><th>id</th><th>bus_id</th><th>Origen</th><th>Destino</th><th>Fecha</th><th>Duracion(hrs)</th></tr>
                                <tr><td>1</td><td>1</td><td>Lima</td><td>Huancayo</td><td>30/09/2020</td><td>8</td></tr>
                                <tr><td>2</td><td>2</td><td>Huancayo</td><td>Lima</td><td>30/09/2020</td><td>8</td></tr>
                                <tr><td>3</td><td>3</td><td>Lima</td><td>Cuzco</td><td>02/10/2020</td><td>23</td></tr>
                                <tr><td>4</td><td>4</td><td>Lima</td><td>Ica</td><td>03/10/2020</td><td>6</td></tr>
                                </table>

                                <br>
                                <br>
                                <br>
                            
                              <form action="D:\PLATZI\U05-Gerencia\form_ruta\form.html">
                                  <input type="submit" value="Crear nueva ruta" />
                              </form>
                            
                            </div>
                          </div>
                        </div>

                        

                        

                        

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
