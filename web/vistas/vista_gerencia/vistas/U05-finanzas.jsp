<%-- 
    Document   : U05-finanzas
    Created on : 26/10/2020, 12:21:52 AM
    Author     : Anthony Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Finanzas</title>
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
                          <h1>FINANZAS</h1>

                        
                        
                        </div>

                        <div class="finanzas">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo"><h3>Ventas</h3><hr></div>
                            <div class="finanzas_parrafo"><br>
                            
                              <label for="cars">Seleccione una opcion de agrupacion:</label>

                              <select name="opcionesa" id="opciones_ventas">
                                <option value="ciudad">Por ciudad</option>
                                <option value="servicio">Por servicio</option>
                                <option value="mes">Por mes</option>
                                <option value="año">Por año</option>
                              </select>

                              <br>
                              <br>
                  
                              <label for="cars">Seleccione una opcion de orden:</label>
                  
                              <select name="opcionesb" id="opciones_orden">
                                <option value="ascendente">Ascendente</option>
                                <option value="descendente">Descendente</option>
                              </select>

                              <br>
                              <br>
                  
                            <table class="tftable" border="1">
                              <tr><th>CIUDAD</th><th>INGRESOS</th><th>EGRESOS</th><th>GANANCIA BRUTA</th><th>GANANCIA NETA</th></tr>
                              <tr><td>CUZCO</td><td>140.000 SOLES</td><td>50.000</td><td>90.000</td><td>70.000</td></tr>
                              <tr><td>LIMA</td><td>200.000 SOLES</td><td>50.000</td><td>150.000</td><td>120.000</td></tr>
                              <tr><td>HUANCAYO</td><td>130.000 SOLES</td><td>50.000</td><td>80.000</td><td>60.000</td></tr>
                              <tr><td>ICA</td><td>108.000 SOLES</td><td>50.000</td><td>58.000</td><td>48.000</td></tr>
                              </table>
                            
                            </div>
                          </div>
                        </div>

                        <br>
                        
                        

                        <div class="finanzas2">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo"><h3>Graficas</h3><hr></div>
                            <div class="finanzas_imagen"><img src="D:\PLATZI\U05-Gerencia\imagenes\finanzas.png" alt="finanzas"></div>
                            <div class="finanzas_imagen2"><img src="D:\PLATZI\U05-Gerencia\imagenes\finanzas.png" alt="finanzas2"></div>
                            
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