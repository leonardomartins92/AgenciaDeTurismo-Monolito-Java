
package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Destino;

public class DestinoDAO extends DAO {
    private static DestinoDAO instancia = new DestinoDAO();
    public static DestinoDAO getInstancia(){
        return instancia;
    }
    
    private DestinoDAO(){}
    
    public void gravar(Destino destino) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        ResultSet rs;
       try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement(
                "insert into destino(dataInicial, dataFinal, Pacote_idPacote, Empresa_cnpj)" +
                 " values(?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            comando.setString(1, destino.getDataInicial());
            comando.setString(2, destino.getDataFinal());
            comando.setInt(3, destino.getPacote().getId());
            comando.setString(4, destino.getEmpresa().getCnpj());
            
            comando.executeUpdate();
            
            rs = comando.getGeneratedKeys();
            if (rs.next()) {
           destino.setId(rs.getInt(1));
           }
       }finally{
           fecharConexao(conexao, comando);
       }
    }
    
    public void alterar(Destino destino) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getInstancia().getConexao();
            comando = (PreparedStatement) conexao.prepareStatement(
                   "update destino set (dataInicial, dataFinal, Pacote_idPacote, Empresa_cnpj)"
                    + "values (?, ?, ?, ?) where idDestino = ?"
           );
            comando.setString(1, destino.getDataInicial());
            comando.setString(2, destino.getDataFinal());
            comando.setInt(3, destino.getPacote().getId());
            comando.setString(4, destino.getEmpresa().getCnpj());
            
            comando.setInt(3, destino.getId());
            
            comando.executeUpdate();
            
            
        }finally{
           fecharConexao(conexao, comando);
       }
    }
        
        
        public Destino obterDestino(int id) throws ClassNotFoundException, SQLException{
            Connection conexao = null;
            PreparedStatement comando = null;
            Destino destino;
            
            try {
                conexao = BD.getInstancia().getConexao();
                comando = (PreparedStatement) conexao.prepareStatement("select * from destino where idDestino = ?");
                
                comando.setInt(1, id);
            
                ResultSet rs = comando.executeQuery();
                rs.next();
                
                destino = instanciarDestino(rs);
                        
                return destino;
                
            }finally{
            fecharConexao(conexao, comando);
            }
            
        }
        
        public List<Destino> obterDestinos() throws ClassNotFoundException, SQLException{
            Connection conexao = null;
            Statement comando = null;
            List<Destino> destinos = new ArrayList();
            Destino destino;
            try{
                conexao = BD.getInstancia().getConexao();
                comando = (Statement) conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from destino");
                while(rs.next()){
                    destino = instanciarDestino(rs);
                    destinos.add(destino);
                }
            }finally{
                fecharConexao(conexao, comando); 
            }
            return destinos;
        }
        
        public void deletarDestino(int id) throws ClassNotFoundException, SQLException{
            Connection conexao = null;
            PreparedStatement comando = null;
            
            try {
                conexao = BD.getInstancia().getConexao();
                comando = (PreparedStatement) conexao.prepareStatement("delete from pacote where idDestino = ?");
                comando.setInt(1, id); 
                comando.executeUpdate();
            } finally{
                fecharConexao(conexao, comando);
            }
        }
        
        public Destino instanciarDestino(ResultSet rs) throws SQLException {
            Destino destino = new Destino(rs.getString("dataInicial"),
                rs.getString("dataFinal"),
                null,
                null);
            destino.setCnpjEmpresa(rs.getString("Empresa_cnpj"));
            destino.setIdPacote(rs.getInt("Pacote_idPacote"));
    
            return destino;
    }
        
}
