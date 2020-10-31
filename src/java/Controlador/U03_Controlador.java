/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.U03_Encomienda;
import ModeloDao.U03_EncomiendaDao;

/**
 *
 * @author V330
 */
public class U03_Controlador extends HttpServlet {
String listarEn="vistas/Administrador/vistas/u03_listarEn.jsp";
   String listar="vistas/Administrador/vistas/u03_listar.jsp";
   String addEn="vistas/Administrador/vistas/u03_addEn.jsp";
   String edit="vistas/Administrador/vistas/u03_editEn.jsp";
   String deleteEn="vistas/Administrador/vistas/u03_deleteEn.jsp";
    U03_Encomienda en=new U03_Encomienda();
    U03_EncomiendaDao end=new U03_EncomiendaDao();
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
            out.println("<title>Servlet U03_Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet U03_Controlador at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);String acceso="";
        String action=request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso=listar;
        }else if(action.equalsIgnoreCase("listarEn")){
            acceso=listarEn;
        }else if(action.equalsIgnoreCase("addEn")){
            acceso=addEn;
        }
        else if(action.equals("Agregar")){
            String Enom=request.getParameter("txtNomE");
            String Eape=request.getParameter("txtApeE");
            int Edni=Integer.parseInt(request.getParameter("txtDniE"));
            String Rnom=request.getParameter("txtNomR");
            String Rape=request.getParameter("txtApeR");
            int Rdni=Integer.parseInt(request.getParameter("txtDniR"));
            int lugar=Integer.parseInt(request.getParameter("txtLug"));
            en.setEnvia_nom(Enom);
            en.setEnvia_ape(Eape);
            en.setEnvia_dni(Edni);
            en.setRecoge_nom(Rnom);
            en.setRecoge_ape(Rape);
            en.setRecoge_dni(Rdni);
            en.setLugar_recojo(lugar);
            end.add(en);
            acceso=listarEn;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("iden", request.getParameter("id"));
            acceso=edit;}
        else if(action.equalsIgnoreCase("Actualizar")){
               String xid=request.getParameter("txtId");
            int id=Integer.parseInt(xid);
            String Enom=request.getParameter("txtNomE");
            String Eape=request.getParameter("txtApeE");
            int Edni=Integer.parseInt(request.getParameter("txtDniE"));
            String Rnom=request.getParameter("txtNomR");
            String Rape=request.getParameter("txtApeR");
            int Rdni=Integer.parseInt(request.getParameter("txtDniR"));
            int lugar=Integer.parseInt(request.getParameter("txtLug"));            
            en.setId(id);
            en.setEnvia_nom(Enom);
            en.setEnvia_ape(Eape);
            en.setEnvia_dni(Edni);
            en.setRecoge_nom(Rnom);
            en.setRecoge_ape(Rape);
            en.setRecoge_dni(Rdni);
            en.setLugar_recojo(lugar);
            end.edit(en);
            acceso=listarEn;
            }else if(action.equalsIgnoreCase("eliminar")){     
                request.setAttribute("idel", request.getParameter("id"));
                 acceso=deleteEn;
            }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
