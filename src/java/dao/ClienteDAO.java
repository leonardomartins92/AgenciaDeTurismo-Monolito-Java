package dao;


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Cliente;

public class ClienteDAO extends DAO{
    private static ClienteDAO instancia = new ClienteDAO();
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
           "insert into cliente (nomeCliente, telefoneCliente, emailCliente, "
                   + "cpfCliente, logradouroCliente, numeroCliente,"
            + " complementoCliente, ufCliente, cidadeCliente) values(?,?,?,?,?,?,?,?,?)"
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
           "update cliente set (nomeCliente, telefoneCliente, emailCliente, "
                   + "logradouroCliente, numeroCliente,"
            + " complementoCliente, ufCliente, cidadeCliente) "
                   + "values(?,?,?,?,?,?,?,?) where cpfCliente = ?"
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
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("select * from cliente where cpfCliente = ?");
            comando.setString(1, cpf);
            return (Cliente) executeResultSet(comando);  
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Cliente> clientes = new ArrayList<Cliente>();
        Cliente cliente = null;
        
        try{
            conexao = BD.getInstancia().getConexao();
            comando = (Statement) conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from cliente");
            while(rs.next()){
            cliente = instaciarCliente(rs);
            clientes.add(cliente);
            }
        }
        finally{
            fecharConexao(conexao, comando); 
        }
        return clientes;
    }
    
    public Cliente instaciarCliente(ResultSet rs) throws SQLException {
    Cliente cliente = new Cliente(rs.getString("nomeCliente"),
            rs.getString("telefoneCliente"),
            rs.getString("emailCliente"),
            rs.getString("cpfCliente"),
            rs.getString("logradouroCliente"),
            rs.getString("numeroCliente"),
            rs.getString("complementoCliente"),
            rs.getString("ufCliente"),
            rs.getString("cidadeCliente"));
    
    return cliente;
    }
    
     private Object executeResultSet(PreparedStatement stmt) {
        try (ResultSet rs = stmt.getResultSet()) {
            rs.next();
            return rs;
        } finally {
            return null;
        }
    }
}