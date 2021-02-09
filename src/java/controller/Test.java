/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Cliente;
import dao.ClienteDAO;
import java.sql.SQLException;
/**
 *
 * @author Leo
 */
public class Test {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cliente cliente = new Cliente("Mario","123","leo@","1012","R ABC", "100","nada","MG","JF");
       // ClienteDAO.getInstancia().gravar(cliente);
       // System.out.println(ClienteDAO.getInstancia().obterClientes());
        System.out.println(ClienteDAO.getInstancia().obterCliente("1012"));
    }
}
