package model;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.BD;
import dao.FuncionarioDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Funcionario extends Pessoa{
    private String senha;
    private TipoFuncionario tipo;

     public Funcionario(String senha, TipoFuncionario tipo, String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String cep) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade, cep);
        this.senha = senha;
        this.tipo = tipo;
    }    

    @Override
    public String toString() {
        return "Funcionario{" + "tipo=" + tipo + " nome="+name+'}';
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public TipoFuncionario getTipo() {
        return tipo;
    }

    public void setTipo(TipoFuncionario tipo) {
        this.tipo = tipo;
    }
     public static void gravar(Funcionario funcionario) throws SQLException, ClassNotFoundException{
       FuncionarioDAO.getInstancia().gravar(funcionario);
    }
    
    public static void alterar(Funcionario funcionario) throws SQLException, ClassNotFoundException{
      FuncionarioDAO.getInstancia().alterar(funcionario);
    }
    
    public static Funcionario obterFuncionario(String cpf) throws ClassNotFoundException, SQLException{
    return FuncionarioDAO.getInstancia().obterFuncionario(cpf);
       
    }
    
    public static List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException{
        return FuncionarioDAO.getInstancia().obterFuncionarios();
    }
    
    public static void deletarFuncionario(String cpf) throws ClassNotFoundException, SQLException{
    FuncionarioDAO.getInstancia().deletarFuncionario(cpf);
        
    }
    
    
    
}
