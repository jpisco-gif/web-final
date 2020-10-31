/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.U05_Admi;
import ModeloDao.U05_AdmiDao;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author V330
 */
@WebServlet(name = "U05_Controlador", urlPatterns = {"/U05_Controlador"})
public class U05_Controlador extends HttpServlet {
String listar="../../vistas/vista_gerencia/vistas/U05-listar.jsp";
    String add="vistas/vista_gerencia/vistas/U05-add.jsp";
    String add2="vistas/vista_gerencia/vistas/U05-add2.jsp";
    String edit="vistas/vista_gerencia/vistas/U05-edit.jsp";
    String edit2="vistas/vista_gerencia/vistas/U05-edit2.jsp";
    U05_Admi p=new U05_Admi();
    U05_AdmiDao dao=new U05_AdmiDao();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet U05_Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet U05_Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
       String accion=request.getParameter("accion");
       if (accion.equalsIgnoreCase("listar")){
        acceso=listar;
       }
       
       else if(accion.equalsIgnoreCase("add")){
       acceso=add;
       }
       
       
       
       else if(accion.equalsIgnoreCase("Agregar")){
       String usuario=request.getParameter("txtUsuario");
       String contraseña=request.getParameter("txtContrasena");
       String email=request.getParameter("txtEmail");
               
       p.setUsuario(usuario);
       p.setContraseña(contraseña);
       p.setEmail(email);        
       
       System.out.println(usuario);
       System.out.println(contraseña);
       System.out.println(email);
       
       
       dao.add(p);
       acceso=add2;      
               
       }
       
       else if(accion.equalsIgnoreCase("add2")){
       acceso=add2;
       }
       
       else if(accion.equalsIgnoreCase("Agregar2")){
               
       String nombres=request.getParameter("txtNombres");
       String apellido_paterno=request.getParameter("txtApellido_paterno");
       String apellido_materno=request.getParameter("txtApellido_materno");
       String sexo=request.getParameter("txtSexo");
       String telefono=request.getParameter("txtTelefono");
       String edad=request.getParameter("txtEdad");
       String cod_documento=request.getParameter("txtCod_documento");
        
       p.setNombres(nombres);
       p.setApellido_paterno(apellido_paterno);
       p.setApellido_materno(apellido_materno);
       p.setSexo(sexo);
       p.setTelefono(telefono);
       p.setEdad(Integer. parseInt (edad));
       p.setCod_documento(cod_documento);
       
       dao.add2(p);
       acceso=listar;
       
       } 
       
       
       
       else if(accion.equalsIgnoreCase("editar")){
           request.setAttribute("cuenta_idper", request.getParameter("cuenta_id"));
           
           
       acceso=edit;
       }
       
       else if(accion.equalsIgnoreCase("Actualizar")){
          
       String xCuenta_id=request.getParameter("txtCuenta_id");
       int cuenta_id=Integer.parseInt(xCuenta_id);    
           
       String usuario=request.getParameter("txtUsuario");
       String contraseña=request.getParameter("txtContrasena");
       String email=request.getParameter("txtEmail");
       
       
          
       p.setCuenta_id(cuenta_id);
       p.setUsuario(usuario);
       p.setContraseña(contraseña);
       p.setEmail(email);   
       
       
     
       dao.edit(p);
       acceso=listar;
       }
       
       else if(accion.equalsIgnoreCase("editar2")){
           request.setAttribute("cuenta_idper", request.getParameter("cuenta_id"));
           
           
       acceso=edit2;
       }
       
        else if(accion.equalsIgnoreCase("Actualizar2")){
          
       String xCuenta_id=request.getParameter("txtCuenta_id");
       int cuenta_id=Integer.parseInt(xCuenta_id);    
           
       
       String nombres=request.getParameter("txtNombres");
       String apellido_paterno=request.getParameter("txtApellido_paterno");
       String apellido_materno=request.getParameter("txtApellido_materno");
       String sexo=request.getParameter("txtSexo");
       String telefono=request.getParameter("txtTelefono");
       String edad=request.getParameter("txtEdad");
       String cod_documento=request.getParameter("txtCod_documento");
          
       p.setCuenta_id(cuenta_id);
       p.setNombres(nombres);
       p.setApellido_paterno(apellido_paterno);
       p.setApellido_materno(apellido_materno);
       p.setSexo(sexo);
       p.setTelefono(telefono);
       p.setEdad(Integer. parseInt (edad));
       p.setCod_documento(cod_documento);
     
       dao.edit2(p);
       acceso=listar;
       }
       
       
       
       
       
       RequestDispatcher vista=request.getRequestDispatcher(acceso);
       vista.forward(request,response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
