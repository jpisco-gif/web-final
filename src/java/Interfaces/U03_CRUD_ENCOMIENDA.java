/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import java.util.List;
import Modelo.U03_Encomienda;
/**
 *
 * @author V330
 */
public interface U03_CRUD_ENCOMIENDA {
    public List listar();
    public U03_Encomienda list(int id);
    public boolean add(U03_Encomienda u);
    public boolean edit(U03_Encomienda en);
    public boolean delete(int id);
}
