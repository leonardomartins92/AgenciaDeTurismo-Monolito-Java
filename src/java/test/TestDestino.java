/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.DestinoDAO;
import dao.PacoteDAO;
import java.sql.SQLException;
import model.Cliente;
import model.Destino;
import model.Empresa;
import model.Funcionario;
import model.Pacote;
import model.TipoEmpresa;
import model.TipoFuncionario;

/**
 *
 * @author Leo
 */
public class TestDestino {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Empresa empresa = new Empresa("1012", "Azul", "azul@gmail.com", "123", "Rua da Azul", "0", null, "MG", "Juiz de Fora", TipoEmpresa.AEREA, "36080001");
        Cliente cliente = new Cliente("Mario","123","leo@","1018","R ABC", "100","nada","MG","JF","a");
        Funcionario funcionario = new Funcionario("12345",TipoFuncionario.VENDEDOR,"Mario","123","leo@","1012","R ABC", "100","nada","MG","JF","a");
        Pacote pacote = new Pacote (200,cliente,funcionario);
        PacoteDAO.getInstancia().gravar(pacote);
        Destino destino = new Destino(789, "2021-02-10","2021-02-10", pacote,empresa);
        DestinoDAO.getInstancia().gravar(destino);
        System.out.println(destino);
       System.out.println(DestinoDAO.getInstancia().obterDestinos());
      // System.out.println(DestinoDAO.getInstancia().obterDestino(1));
      // DestinoDAO.getInstancia().deletarDestino(2);
        
    }
}
