package test;

import model.Cliente;
import dao.ClienteDAO;
import java.sql.SQLException;

public class TestCliente {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
       Cliente cliente = new Cliente("Mario","123","leo@","1234","R ABC", "100","nada","MG","JF","a");
       Cliente.gravar(cliente);
       //System.out.println(ClienteDAO.getInstancia().obterClientes());
     //  System.out.println(ClienteDAO.getInstancia().obterCliente("1012"));
      // ClienteDAO.getInstancia().deletarCliente("1012");
    }
}