/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import java.util.List;
import Modelo.U05_Admin;
/**
 *
 * @author V330
 */
public interface U05_CRUD_ADMIN {
   public List listar();
   public U05_Admin list(int cuenta_id);
   public boolean add(U05_Admin per);
   public boolean add2(U05_Admin per);
   public boolean edit(U05_Admin per);
   public boolean edit2(U05_Admin per);
   public boolean eliminar(int cuenta_id); 
}
