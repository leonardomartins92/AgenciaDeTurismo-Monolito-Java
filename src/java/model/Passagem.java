package model;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.BD;
import dao.PassagemDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

public class Passagem {
    
    private int id;
    private String origem;
    private String destino;
    private String dataIda;
    private String dataVolta;
    private Pacote pacote;
    private Empresa empresa;
    
  
    private String cnpjEmpresa;
    private int idPacote;

    public Passagem(String origem, String destino , String dataIda, String dataVolta, Pacote pacote, Empresa empresa) {
       
        this.origem = origem;
        this.destino = destino;
        this.dataIda = dataIda;
        this.dataVolta = dataVolta;
        this.pacote= pacote;
        this.empresa = empresa;
        
    }

    public Passagem(String origem, String destino, String dataIda,Pacote pacote, Empresa empresa) {
       
        this.origem = origem;
        this.destino= destino;
        this.dataIda = dataIda;
        this.pacote= pacote;
        this.empresa = empresa;
        
    }

    @Override
    public String toString() {
        return "model.Passagem{" +
                
                "origem='" + origem + '\'' +
                ", destino=" + destino +
                '}';
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getDataIda() {
        return dataIda;
    }

    public void setDataIda(String dataIda) {
        this.dataIda = dataIda;
    }

    public String getDataVolta() {
        return dataVolta;
    }

    public void setDataVolta(String dataVolta) {
        this.dataVolta = dataVolta;
    }

    public Pacote getPacote() {
        return pacote;
    }

   
    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

   
    public String getCnpjEmpresa() {
        return cnpjEmpresa;
    }

    public void setCnpjEmpresa(String cnpjEmpresa) {
        this.cnpjEmpresa = cnpjEmpresa;
    }

    public int getIdPacote() {
        return idPacote;
    }

    public void setIdPacote(int idPacote) {
        this.idPacote = idPacote;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public static void gravar(Passagem passagem) throws SQLException, ClassNotFoundException{
       PassagemDAO.getInstancia().gravar(passagem);
    }
    
    public static void alterar(Passagem passagem) throws SQLException, ClassNotFoundException{
       PassagemDAO.getInstancia().alterar(passagem);
    }
    
    public static Passagem obterPassagem(int id) throws ClassNotFoundException, SQLException{
    return PassagemDAO.getInstancia().obterPassagem(id);
       
    }
    
    public static List<Passagem> obterPassagens() throws ClassNotFoundException, SQLException{
        return PassagemDAO.getInstancia().obterPassagens();
    }
    
    public static void deletarPassagem(int id) throws ClassNotFoundException, SQLException{
    PassagemDAO.getInstancia().deletarPassagem(id);
    }
    
}
