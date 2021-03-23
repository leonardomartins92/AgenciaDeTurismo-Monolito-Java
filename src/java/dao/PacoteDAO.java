package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Pacote;

public class PacoteDAO extends DAO{
    private static PacoteDAO instancia = new PacoteDAO();
    public static PacoteDAO getInstancia(){
        return instancia;
    }
    private PacoteDAO(){}
    
    public void gravar(Pacote pacote) throws SQLException, ClassNotFoundException{
     
        Connection conexao=null;
        PreparedStatement comando=null;
        ResultSet rs ;
        
        try{
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement( "insert into pacote (Cliente_cpf, Funcionario_cpf) values (?, ?)"
            ,Statement.RETURN_GENERATED_KEYS);
            
            comando.setString(1, pacote.getCliente().getCpf());
            comando.setString(2, pacote.getFuncionario().getCpf());
            
            comando.executeUpdate();
            
           rs = comando.getGeneratedKeys();
           if (rs.next()) {
           pacote.setId(rs.getInt(1));
           }
        }
           finally{
        fecharConexao(conexao, comando);
        }   
    }
    
    public void alterar(Pacote pacote) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
                   "update passagem set Cliente_cpf=?, Funcionario_cpf=?"
                    + " where idPacote = ?"
           );
           
           comando.setString(1, pacote.getCliente().getCpf());
           comando.setString(2, pacote.getFuncionario().getCpf());
           
           comando.setInt(3, pacote.getId());
            
            comando.executeUpdate();
           
       }finally{
           fecharConexao(conexao, comando);
       } 
    }
    
    public Pacote obterPacote(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Pacote pacote;
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("select * from pacote where idPacote = ?");
            comando.setInt(1, id);
            
            ResultSet rs = comando.executeQuery();
            rs.next();
            
            pacote = instanciarPacote(rs);
            
            return pacote;
        }finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public List<Pacote> obterPacotes() throws ClassNotFoundException, SQLException{
       Connection conexao = null;
        Statement comando = null;
        List<Pacote> pacotes = new ArrayList();
        Pacote pacote; 
        
        try{
            conexao = BD.getInstancia().getConexao();
            comando = (Statement) conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from pacote");
            while(rs.next()){
                pacote = instanciarPacote(rs);
                pacotes.add(pacote);
            }
        }finally{
            fecharConexao(conexao, comando); 
        }
        return pacotes;
    }
        
    public void deletarPacote(int id) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("delete from pacote where idPacote = ?");
            comando.setInt(1, id); 
            comando.executeUpdate();
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public Pacote instanciarPacote(ResultSet rs) throws SQLException {
        Pacote pacote = new Pacote(rs.getInt("idPacote"),null, null);
        pacote.setCpfCliente(rs.getString("Cliente_cpf"));
        pacote.setCpfFuncionario(rs.getString("Funcionario_cpf"));

    
    return pacote;
    }
    
}
