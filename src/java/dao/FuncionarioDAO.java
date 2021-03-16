package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Funcionario;
import model.TipoFuncionario;

public class FuncionarioDAO extends DAO{
    private static FuncionarioDAO instancia = new FuncionarioDAO();
    public static FuncionarioDAO getInstancia(){
        return instancia;
    }
    private FuncionarioDAO(){}
    
    public void gravar(Funcionario funcionario) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "insert into funcionario (nome, telefone, email, "
                   + "cpf, logradouro, numero,"
            + " complemento, uf, localidade, cep, senha, tipo) values(?,?,?,?,?,?,?,?,?,?,?,?)"
           );
           comando.setString(1, funcionario.getName());
           comando.setString(2, funcionario.getTelefone());
           comando.setString(3, funcionario.getEmail());
           comando.setString(4, funcionario.getCpf());
           comando.setString(5, funcionario.getLogradouro());
           comando.setString(6, funcionario.getNumero());
           comando.setString(7, funcionario.getComplemento());
           comando.setString(8, funcionario.getUf());
           comando.setString(9, funcionario.getCidade());
           comando.setString(10, funcionario.getCep());
           comando.setString(11, funcionario.getSenha());
           comando.setString(12, funcionario.getTipo().name());
           
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public void alterar(Funcionario funcionario) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "update funcionario set (nome, telefone, email, "
                   + "logradouro, numero,"
            + " complemento, uf, localidade, cep, senha, tipo) "
                   + "values(?,?,?,?,?,?,?,?,?,?,?) where cpf = ?"
           );
           comando.setString(1, funcionario.getName());
           comando.setString(2, funcionario.getTelefone());
           comando.setString(3, funcionario.getEmail());
           comando.setString(4, funcionario.getLogradouro());
           comando.setString(5, funcionario.getNumero());
           comando.setString(6, funcionario.getComplemento());
           comando.setString(7, funcionario.getUf());
           comando.setString(8, funcionario.getCidade());
           comando.setString(9, funcionario.getCep());
           comando.setString(10, funcionario.getSenha());
           comando.setString(11, funcionario.getTipo().name());
           comando.setString(12, funcionario.getCpf());
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public boolean autenticarFuncionario(String cpf, String senha) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        Funcionario funcionario = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("select * from funcionario where cpf = ? and senha= ?");
            comando.setString(1, cpf);
            comando.setString(2, senha);
            
            ResultSet rs = comando.executeQuery();
            rs.next();
           
            funcionario = instanciarFuncionario(rs);
            
        return true ; 
            
        }
        catch(Exception e){
            return false;
                
        }  
        
        finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public Funcionario obterFuncionario(String cpf) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        Funcionario funcionario = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("select * from funcionario where cpf = ?");
            comando.setString(1, cpf);
            
            ResultSet rs = comando.executeQuery();
            rs.next();
           
            funcionario = instanciarFuncionario(rs);
            return funcionario;  
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public List<Funcionario> obterFuncionarios() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();
        Funcionario funcionario = null;
        
        try{
            conexao = BD.getInstancia().getConexao();
            comando = (Statement) conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from funcionario");
            while(rs.next()){
            funcionario = instanciarFuncionario(rs);
            funcionarios.add(funcionario);
            }
        }
        finally{
            fecharConexao(conexao, comando); 
        }
        return funcionarios;
    }
    
    public void deletarFuncionario(String cpf) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("delete from funcionario where cpf = ?");
            comando.setString(1, cpf); 
            comando.executeUpdate();
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public Funcionario instanciarFuncionario(ResultSet rs) throws SQLException {
    Funcionario funcionario = new Funcionario(rs.getString("senha"),
            TipoFuncionario.valueOf(rs.getString("tipo")),
            rs.getString("nome"),
            rs.getString("telefone"),
            rs.getString("email"),
            rs.getString("cpf"),
            rs.getString("logradouro"),
            rs.getString("numero"),
            rs.getString("complemento"),
            rs.getString("uf"),
            rs.getString("localidade"),
            rs.getString("cep") 
    );
    
    return funcionario;
    }
}