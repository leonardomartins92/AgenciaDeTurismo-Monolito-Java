package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Cliente;

public class ClienteDAO extends DAO{
    private static final ClienteDAO instancia = new ClienteDAO();
    public static ClienteDAO getInstancia(){
        return instancia;
    }
    private ClienteDAO(){}
    
    public void gravar(Cliente cliente) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "insert into cliente (nome, telefone, email, "
                   + "cpf, logradouro, numero,"
            + " complemento, uf, localidade, cep) values(?,?,?,?,?,?,?,?,?,?)"
           );
           comando.setString(1, cliente.getName());
           comando.setString(2, cliente.getTelefone());
           comando.setString(3, cliente.getEmail());
           comando.setString(4, cliente.getCpf());
           comando.setString(5, cliente.getLogradouro());
           comando.setString(6, cliente.getNumero());
           comando.setString(7, cliente.getComplemento());
           comando.setString(8, cliente.getUf());
           comando.setString(9, cliente.getCidade());
           comando.setString(10, cliente.getCep());
           
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public void alterar(Cliente cliente) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "update cliente set nome=?, telefone=?, email=?, "
                   + "logradouro=?, numero=?,"
                   + " complemento=?, uf=?, localidade=? "
                   + "where cpf = ?"
           );
           comando.setString(1, cliente.getName());
           comando.setString(2, cliente.getTelefone());
           comando.setString(3, cliente.getEmail());
           comando.setString(4, cliente.getLogradouro());
           comando.setString(5, cliente.getNumero());
           comando.setString(6, cliente.getComplemento());
           comando.setString(7, cliente.getUf());
           comando.setString(8, cliente.getCidade());
           comando.setString(9, cliente.getCpf());
           
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public Cliente obterCliente(String cpf) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        Cliente cliente ;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("select * from cliente where cpf = ?");
            comando.setString(1, cpf);
            
            ResultSet rs = comando.executeQuery();
            rs.next();
           
            cliente = instanciarCliente(rs);
            return cliente;  
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Cliente> clientes = new ArrayList();
        Cliente cliente;
        
        try{
            conexao = BD.getInstancia().getConexao();
            comando = (Statement) conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from cliente");
            while(rs.next()){
            cliente = instanciarCliente(rs);
            clientes.add(cliente);
            }
        }
        finally{
            fecharConexao(conexao, comando); 
        }
        return clientes;
    }
    
    public void deletarCliente(String cpf) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("delete from cliente where cpf = ?");
            comando.setString(1, cpf); 
            comando.executeUpdate();
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public Cliente instanciarCliente(ResultSet rs) throws SQLException {
    Cliente cliente = new Cliente(rs.getString("nome"),
            rs.getString("telefone"),
            rs.getString("email"),
            rs.getString("cpf"),
            rs.getString("logradouro"),
            rs.getString("numero"),
            rs.getString("complemento"),
            rs.getString("uf"),
            rs.getString("localidade"),
            rs.getString("cep"));
    
    return cliente;
    }
}