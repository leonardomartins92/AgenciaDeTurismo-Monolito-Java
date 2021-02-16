package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import model.Pacote;
import model.Passagem;



public class PassagemDAO extends DAO{
    private static PassagemDAO instancia = new PassagemDAO();
    public static PassagemDAO getInstancia(){
        return instancia;
    }
    private PassagemDAO(){}
    
    
    
    public void gravar(Passagem passagem) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "insert into passagem (idPassagem, origem, destino, dataIda, "
                   + "dataVolta, Pacote_idPacote, Empresa_cnpj)"
            + "values(?,?,?,?,?,?,?)"
           );
           comando.setInt(1, passagem.getId());
           comando.setString(2, passagem.getOrigem());
           comando.setString(3, passagem.getDestino());
           comando.setString(4, passagem.getDataIda());
           comando.setString(5, passagem.getDataVolta());
           comando.setInt(6, passagem.getPacote().getId());
           comando.setString(7, passagem.getEmpresa().getCnpj());
                   
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public void alterar(Passagem passagem) throws SQLException, ClassNotFoundException{
       Connection conexao = null;
       PreparedStatement comando = null;
       try {
           conexao = BD.getInstancia().getConexao();
           comando = (PreparedStatement) conexao.prepareStatement(
           "update passagem set (origem, destino, dataIda, "
                   + "dataVolta, pacote_idPacote, Empresa_cnpj)"
            + "values(?,?,?,?,?,?) where idPassagem = ?"
           );
           comando.setString(1, passagem.getOrigem());
           comando.setString(2, passagem.getDestino());
           comando.setString(3, passagem.getDataIda());
           if (passagem.getDataVolta() == null){
           comando.setNull(4, Types.CHAR);
           }
           else{
           comando.setString(4, passagem.getDataVolta());
           }
           comando.setInt(5, passagem.getPacote().getId());
           comando.setString(6, passagem.getEmpresa().getCnpj());
            
           comando.setInt(7,passagem.getId());
           comando.executeUpdate();
       } finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public Passagem obterPassagem(int id) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        Passagem passagem = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("select * from passagem where idPassagem = ?");
            comando.setInt(1, id);
            
            ResultSet rs = comando.executeQuery();
            rs.next();
           
            passagem = instanciarPassagem(rs);
            return passagem;  
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public List<Passagem> obterPassagens() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Passagem> passagens = new ArrayList<Passagem>();
        Passagem passagem = null;
        
        try{
            conexao = BD.getInstancia().getConexao();
            comando = (Statement) conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from passagem");
            while(rs.next()){
            passagem = instanciarPassagem(rs);
            passagens.add(passagem);
            }
        }
        finally{
            fecharConexao(conexao, comando); 
        }
        return passagens;
    }
    
    public void deletarPassagem(int id) throws ClassNotFoundException, SQLException{
    
        Connection conexao = null;
        PreparedStatement comando = null;
        
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement("delete from passagem where idPassagem = ?");
            comando.setInt(1, id); 
            comando.executeUpdate();
        } finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public Passagem instanciarPassagem(ResultSet rs) throws SQLException {
    Passagem passagem = new Passagem(rs.getString("origem"),
            rs.getString("destino"),
            rs.getString("dataIda"),
            rs.getString("dataVolta"),
            null,
            null
    );
      passagem.setCnpjEmpresa(rs.getString("Empresa_cnpj"));
      passagem.setIdPacote(rs.getInt("Pacote_idPacote"));
    
    return passagem;
    }
    
       
}