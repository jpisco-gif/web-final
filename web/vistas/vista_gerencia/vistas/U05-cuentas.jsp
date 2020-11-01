<%-- 
    Document   : U05-cuentas
    Created on : 26/10/2020, 12:20:37 AM
    Author     : Anthony Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Cuentas</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../../../css/estilo.css">
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
                        <%

                                HttpSession sesion = request.getSession();
                                String usuario;
                                String contraseña;
                                if (sesion.getAttribute("usuario") != null && sesion.getAttribute("contraseña") != null) {
                                    usuario = sesion.getAttribute("usuario").toString();
                                    contraseña = sesion.getAttribute("contraseña").toString();
                                    out.println("<li class='menu__item'>");
                                    out.println("<a class='menu__link' href='/web-final/vistas/vista_usuario/Vistas/u04-logout.jsp'>Logout</a>");
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
                    </nav><!--  
                      Main
                    --><main>    
                      <section class="reporte-grafico">
                        <div class="head_title">
                          <h1>CUENTAS</h1>

                        
                        
                        </div>

                        <div class="finanzas">
                          
                          <div class="finanzas_texto">
                            <div class="finanzas_titulo"><h3>Administradores</h3><hr></div>
                            <div class="finanzas_parrafo">
                                
                              
                              
                              <p><a href="../../../U05_Controlador?accion=listar" target="iframe_a">Listar Administradores</a></p>
                  
                              <iframe src="U05-blanco.jsp" name="iframe_a" height="400px" width="1200px" title="Iframe Example"></iframe>
                  
                            
                                
                                
                              

                              
                            
                            
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
