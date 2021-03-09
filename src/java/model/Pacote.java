package model;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.BD;
import dao.PacoteDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Pacote {

    private Cliente cliente;
    private Funcionario funcionario;
    private int id;
    private String cpfFuncionario;
    private String cpfCliente;
  
    
      public Pacote(int id, Cliente cliente, Funcionario funcionario) {
        this.id= id;
        this.cliente = cliente;
        this.funcionario = funcionario;       
    }

    @Override
    public String toString() {
        return "Pacote{" + "cliente=" + cliente + ", id=" + id + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.setCpfCliente(cliente.getCpf());
        this.cliente = cliente;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.setCpfFuncionario(funcionario.getCpf());
        this.funcionario = funcionario;
    }

    public String getCpfFuncionario() {
        return cpfFuncionario;
    }

    public void setCpfFuncionario(String cpfFuncionario) {
        this.cpfFuncionario = cpfFuncionario;
    }

    public String getCpfCliente() {
        return cpfCliente;
    }

    public void setCpfCliente(String cpfCliente) {
        this.cpfCliente = cpfCliente;
    }
    
    public static String nomeCliente(String cpf) throws ClassNotFoundException, SQLException{
     return Cliente.obterCliente(cpf).getName();
    }
    
    public static String nomeFuncionario(String cpf) throws ClassNotFoundException, SQLException{
     return Funcionario.obterFuncionario(cpf).getName();
    }
    
     public static void gravar(Pacote pacote) throws SQLException, ClassNotFoundException{
     PacoteDAO.getInstancia().gravar(pacote);       
    }
    
    public static void alterar(Pacote pacote) throws SQLException, ClassNotFoundException{
       PacoteDAO.getInstancia().alterar(pacote);
    }
    
    public static Pacote obterPacote(int id) throws ClassNotFoundException, SQLException{
     return PacoteDAO.getInstancia().obterPacote(id);
    }
    
    public static List<Pacote> obterPacotes() throws ClassNotFoundException, SQLException{
     return PacoteDAO.getInstancia().obterPacotes();
    }
        
    public static void deletarPacote(int id) throws ClassNotFoundException, SQLException{
        PacoteDAO.getInstancia().deletarPacote(id);
    }
}
