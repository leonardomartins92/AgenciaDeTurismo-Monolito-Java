package model;

import java.util.ArrayList;

public class Pacote {
    private int id;
    private int duracao;
    private Cliente cliente;
    private Vendedor vendedor;
    private ArrayList<Passagem> listaPassagens;
    private ArrayList<Empresa> listaEmpresas;
    private ArrayList<Destino> listaDestinos;

    public Pacote(int id, int duracao, Cliente cliente, Vendedor vendedor, ArrayList<Passagem> listaPassagens, ArrayList<Empresa> listaEmpresas, ArrayList<Destino> listaDestinos) {
        this.id = id;
        this.duracao = duracao;
        this.cliente = cliente;
        this.vendedor = vendedor;
        this.listaPassagens = listaPassagens;
        this.listaEmpresas = listaEmpresas;
        this.listaDestinos = listaDestinos;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Vendedor getVendedor() {
        return vendedor;
    }

    public void setVendedor(Vendedor vendedor) {
        this.vendedor = vendedor;
    }

    public ArrayList<Passagem> getListaPassagens() {
        return listaPassagens;
    }

    public void setListaPassagens(ArrayList<Passagem> listaPassagens) {
        this.listaPassagens = listaPassagens;
    }

    public ArrayList<Empresa> getListaEmpresas() {
        return listaEmpresas;
    }

    public void setListaEmpresas(ArrayList<Empresa> listaEmpresas) {
        this.listaEmpresas = listaEmpresas;
    }

    public ArrayList<Destino> getListaDestinos() {
        return listaDestinos;
    }

    public void setListaDestinos(ArrayList<Destino> listaDestinos) {
        this.listaDestinos = listaDestinos;
    }

    public void adicionaPassagem(Passagem passagem){
        this.listaPassagens.add(passagem);
    }

    public void adicionaEmpresa(Empresa empresa){
        this.listaEmpresas.add(empresa);
    }

    public void adicionaDestino(Destino destino){
        this.listaDestinos.add(destino);
    }
}
