package model;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.BD;
import dao.ClienteDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Cliente extends Pessoa{

    public Cliente(String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String cep) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade, cep);
    }
    
    public void gravar(Cliente cliente) throws SQLException, ClassNotFoundException{
       ClienteDAO.getInstancia().gravar(cliente);
    }
    
    public void alterar(Cliente cliente) throws SQLException, ClassNotFoundException{
       ClienteDAO.getInstancia().alterar(cliente);
    }
    
    public Cliente obterCliente(String cpf) throws ClassNotFoundException, SQLException{
    return ClienteDAO.getInstancia().obterCliente(cpf);
        
    }
    
    public List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        return ClienteDAO.getInstancia().obterClientes();
    }
    
    public void deletarCliente(String cpf) throws ClassNotFoundException, SQLException{
       ClienteDAO.getInstancia().deletarCliente(cpf);
        
    }
        

}
