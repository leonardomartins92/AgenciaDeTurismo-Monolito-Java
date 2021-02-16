/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;



import dao.PassagemDAO;
import java.sql.SQLException;


import model.Cliente;
import model.Empresa;
import model.Funcionario;
import model.Pacote;
import model.Passagem;
import model.TipoEmpresa;
import model.TipoFuncionario;


/**
 *
 * @author Leo
 */
public class TestPassagem {
    public static void main(String[] args) throws SQLException, ClassNotFoundException  {
    Empresa empresa = new Empresa("1012", "Azul", "azul@gmail.com", "123", "Rua da Azul", "0", null, "MG", "Juiz de Fora", TipoEmpresa.AEREA, "36080001");
    Cliente cliente = new Cliente("Mario","123","leo@","1012","R ABC", "100","nada","MG","JF","a");
    Funcionario funcionario = new Funcionario("12345",TipoFuncionario.VENDEDOR,"Mario","123","leo@","1012","R ABC", "100","nada","MG","JF","a");
    Pacote pacote = new Pacote(cliente,funcionario);   
    Passagem passagem = new Passagem("São Paulo","Londres","janeiro","fevereiro",pacote,empresa);
    //PassagemDAO.getInstancia().gravar(passagem);
    //System.out.println(PassagemDAO.getInstancia().obterPassagens());
    //System.out.println(PassagemDAO.getInstancia().obterPassagem(1));
    PassagemDAO.getInstancia().deletarPassagem(1);
    
       
    }
   }
