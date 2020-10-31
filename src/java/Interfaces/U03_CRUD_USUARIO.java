/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import java.util.List;
import Modelo.U03_Usuario;
/**
 *
 * @author V330
 */
public interface U03_CRUD_USUARIO {
    public List listar();
    public U03_Usuario list(int id);
    public boolean add(U03_Usuario u);
    public boolean edit(U03_Usuario per);
    public boolean delete(int id);
}
