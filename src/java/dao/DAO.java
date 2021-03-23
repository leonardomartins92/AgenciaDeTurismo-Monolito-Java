package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.SQLException;

public class DAO {
    public void fecharConexao(Connection conexao, Statement comando)
            throws SQLException {
        if (comando != null){
            comando.close();
        }
        if (conexao != null){
            conexao.close();
        }
    }
}
