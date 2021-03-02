package dao;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BD {
    private static BD instancia = new BD();
    public static BD getInstancia(){
        return instancia;
    }
    
    private BD(){}
    
    public Connection getConexao() throws ClassNotFoundException, SQLException {
    Connection conexao = null;
    Class.forName("com.mysql.jdbc.Driver");
    conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/vlpt", "root", "root");
    return conexao;
    }
}
