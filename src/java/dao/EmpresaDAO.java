package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Empresa;
import model.Tipo;

public class EmpresaDAO extends DAO{
    private static EmpresaDAO instancia = new EmpresaDAO();
    public static EmpresaDAO getInstancia(){
        return instancia;
    }
    private EmpresaDAO(){}
    
    public void gravar(Empresa empresa) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "insert into empresa (nome, cnpj, telefone, email, tipo, cep, uf,"
                   + "localidade, logradouro, numero, complemento)"
                   + "values(?,?,?,?,?,?,?,?,?,?,?)"
           );
           comando.setString(1, empresa.getNome());
           comando.setString(2, empresa.getCnpj());
           comando.setString(3, empresa.getTelefone());
           comando.setString(4, empresa.getEmail());
           comando.setString(5, empresa.getTipo().name());
           comando.setString(6, empresa.getCep());
           comando.setString(7, empresa.getUf());
           comando.setString(8, empresa.getLocalidade());
           comando.setString(9, empresa.getLogradouro());
           comando.setString(10, empresa.getNumero());
           comando.setString(11, empresa.getComplemento());
           
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public void alterar(Empresa empresa) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "update empresa set ((nome, telefone, email, tipo, cep, uf,"
                   + "localidade, logradouro, numero, complemento)"
                   + "values(?,?,?,?,?,?,?,?,?,?,?) where cnpj = ?"
           );
           comando.setString(1, empresa.getNome());
           comando.setString(2, empresa.getTelefone());
           comando.setString(3, empresa.getEmail());
           comando.setString(4, empresa.getTipo().name());
           comando.setString(5, empresa.getCep());
           comando.setString(6, empresa.getUf());
           comando.setString(7, empresa.getLocalidade());
           comando.setString(8, empresa.getLogradouro());
           comando.setString(9, empresa.getNumero());
           comando.setString(10, empresa.getComplemento());
           
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public Empresa obterEmpresa(String cnpj) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        Empresa empresa = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("select * from empresa where cnpj = ?");
            comando.setString(1, cnpj);
            
            ResultSet rs = comando.executeQuery();
            rs.next();
           
            empresa = instanciarEmpresa(rs);
            return empresa;  
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public List<Empresa> obterEmpresas() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Empresa> empresas = new ArrayList<Empresa>();
        Empresa empresa = null;
        
        try{
            conexao = BD.getInstancia().getConexao();
            comando = (Statement) conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from empresa");
            while(rs.next()){
            empresa = instanciarEmpresa(rs);
            empresas.add(empresa);
            }
        }
        finally{
            fecharConexao(conexao, comando); 
        }
        return empresas;
    }
    
    public void deletarEmpresa(String cnpj) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("delete from empresa where cnpj = ?");
            comando.setString(1, cnpj); 
            comando.executeUpdate();
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public Empresa instanciarEmpresa(ResultSet rs) throws SQLException {
    Empresa empresa;
        empresa = new Empresa(rs.getString("cnpj"),
                rs.getString("nome"),
                rs.getString("email"),
                rs.getString("telefone"),
                rs.getString("logradouro"),
                rs.getString("numero"),
                rs.getString("complemento"),
                rs.getString("uf"),
                rs.getString("localidade"),
                Tipo.valueOf(rs.getString("tipo")),
                rs.getString("cep"));
    
    return empresa;
    }
}