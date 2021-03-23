/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.EmpresaDAO;
import dao.PacoteDAO;
import java.sql.SQLException;
import model.Cliente;
import model.Funcionario;
import model.Pacote;
import model.TipoFuncionario;

/**
 *
 * @author Leo
 */
public class TestPacote {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cliente cliente = new Cliente("Mario","123","leo@","1018","R ABC", "100","nada","MG","JF","a");
        Funcionario funcionario = new Funcionario("12345",TipoFuncionario.VENDEDOR,"Mario","123","leo@","1012","R ABC", "100","nada","MG","JF","a");
        Pacote pacote = new Pacote (15, cliente,funcionario);
        PacoteDAO.getInstancia().gravar(pacote);
        
      System.out.println(PacoteDAO.getInstancia().obterPacotes());
       //System.out.println(PacoteDAO.getInstancia().obterPacote(1));
       //PacoteDAO.getInstancia().deletarPacote(2);
    }
}
