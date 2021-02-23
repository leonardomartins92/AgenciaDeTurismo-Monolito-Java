package model;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import dao.BD;
import dao.EmpresaDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Empresa {
    private String cnpj;
    private String nome;
    private String email;
    private String telefone;
    private String logradouro;
    private String numero;
    private String complemento;
    private String uf;
    private String localidade;
    private TipoEmpresa tipo;
    private String cep;

    public Empresa(String cnpj, String nome, String email, String telefone, String logradouro, String numero, String complemento, String uf, String localidade, TipoEmpresa tipo, String cep) {
        this.cnpj = cnpj;
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.uf = uf;
        this.localidade = localidade;
        this.tipo = tipo;
        this.cep = cep;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getLocalidade() {
        return localidade;
    }

    public void setLocalidade(String localidade) {
        this.localidade = localidade;
    }

    public TipoEmpresa getTipo() {
        return tipo;
    }

    public void setTipo(TipoEmpresa tipo) {
        this.tipo = tipo;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public static void gravar(Empresa empresa) throws SQLException, ClassNotFoundException{
       EmpresaDAO.getInstancia().gravar(empresa);
    }
    
    public static void alterar(Empresa empresa) throws SQLException, ClassNotFoundException{
     EmpresaDAO.getInstancia().alterar(empresa);
    }
    
    public static Empresa obterEmpresa(String cnpj) throws ClassNotFoundException, SQLException{
    return EmpresaDAO.getInstancia().obterEmpresa(cnpj);
       
    }
    
    public static List<Empresa> obterEmpresas() throws ClassNotFoundException, SQLException{
      return EmpresaDAO.getInstancia().obterEmpresas();
    }
    
    public static void deletarEmpresa(String cnpj) throws ClassNotFoundException, SQLException{
     EmpresaDAO.getInstancia().deletarEmpresa(cnpj);
        
    }
      

    @Override
    public String toString() {
        return "Empresa{" + "nome=" + nome + ", tipo=" + tipo + '}';
    }
}
