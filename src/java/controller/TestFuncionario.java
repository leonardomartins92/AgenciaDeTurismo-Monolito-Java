package controller;

import model.Funcionario;
import dao.FuncionarioDAO;
import java.sql.SQLException;

public class TestFuncionario {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
       Funcionario funcionario = new Funcionario("12345",1,"Mario","123","leo@","1012","R ABC", "100","nada","MG","JF","a");
       FuncionarioDAO.getInstancia().gravar(funcionario);
       System.out.println(FuncionarioDAO.getInstancia().obterFuncionarios());
       System.out.println(FuncionarioDAO.getInstancia().obterFuncionario("1012"));
       FuncionarioDAO.getInstancia().deletarFuncionario("1012");
    }
}
