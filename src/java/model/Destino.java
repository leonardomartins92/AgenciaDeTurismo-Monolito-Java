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
    private static int cont=1;
    private final int id;
    private  String dataInicio;
    private String dataFinal;
    private  Pacote pacote;
    private  Empresa empresa;

    public Destino(String dataInicio, String dataFinal, Pacote pacote, Empresa empresa) {
        this.dataInicio = dataInicio;
        this.dataFinal = dataFinal;
        this.pacote = pacote;
        this.empresa = empresa;
        this.id=cont;
        cont++;
    }

    public String getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(String dataInicio) {
        this.dataInicio = dataInicio;
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
        this.pacote = pacote;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public int getId() {
        return id;
    }
    
    
    
    
    
    
}
