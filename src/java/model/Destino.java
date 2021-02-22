/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Leo
 */
public class Destino {
    
    private  String dataInicial;
    private String dataFinal;
    private  Pacote pacote;
    private  Empresa empresa;
    private int id;
    private String cnpjEmpresa;
    private int idPacote;
    

    public Destino(String dataInicial, String dataFinal, Pacote pacote, Empresa empresa) {
        this.dataInicial = dataInicial;
        this.dataFinal = dataFinal;
        this.pacote = pacote;
        this.empresa = empresa;
        
    }

    @Override
    public String toString() {
        return "Destino{" + "id=" + id + ", idPacote=" + idPacote + '}';
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
   
    
    public String getDataInicial() {
        return dataInicial;
    }

    public void setDataInicial(String dataInicio) {
        this.dataInicial = dataInicio;
    }

    public String getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(String dataFinal) {
        this.dataFinal = dataFinal;
    }

    public Pacote getPacote() {
        return pacote;
    }

    public void setPacote(Pacote pacote) {
        this.setIdPacote(pacote.getId());
        this.pacote = pacote;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.setCnpjEmpresa(empresa.getCnpj());
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
}
