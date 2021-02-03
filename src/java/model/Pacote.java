package model;

import java.time.LocalDate;
import java.util.ArrayList;

public class Pacote {
    private static int cont=1;
    private int id;
    private LocalDate dataIda;
    private LocalDate dataVolta;
    private Cliente cliente;
    private Funcionario funcionario;
    private ArrayList<Passagem> listaPassagens;
    private ArrayList<Empresa> listaEmpresas;
    private ArrayList<Destino> listaDestinos;

    public Pacote(LocalDate dataIda, LocalDate dataVolta, Cliente cliente, Funcionario funcionario, ArrayList<Passagem> listaPassagens, ArrayList<Empresa> listaEmpresas, ArrayList<Destino> listaDestinos) {
        this.id=cont;
        cont++;
        this.dataIda = dataIda;
        this.dataVolta = dataVolta;
        this.cliente = cliente;
        this.funcionario = funcionario;
        this.listaPassagens = listaPassagens;
        this.listaEmpresas = listaEmpresas;
        this.listaDestinos = listaDestinos;
    }

    @Override
    public String toString() {
        return "Pacote{" +
                "id=" + id +
                ", cliente=" + cliente +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getDataIda() {
        return dataIda;
    }

    public void setDataIda(LocalDate dataIda) {
        this.dataIda = dataIda;
    }

    public LocalDate getDataVolta() {
        return dataVolta;
    }

    public void setDataVolta(LocalDate dataVolta) {
        this.dataVolta = dataVolta;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    public ArrayList<Passagem> getListaPassagens() {
        return (ArrayList<Passagem>) listaPassagens.clone();
    }

    public void setListaPassagens(ArrayList<Passagem> listaPassagens) {
        this.listaPassagens = listaPassagens;
    }

    public ArrayList<Empresa> getListaEmpresas() {
        return (ArrayList<Empresa>) listaEmpresas.clone();
    }

    public void setListaEmpresas(ArrayList<Empresa> listaEmpresas) {
        this.listaEmpresas = listaEmpresas;
    }

    public ArrayList<Destino> getListaDestinos() {
        return (ArrayList<Destino>) listaDestinos.clone();
    }

    public void setListaDestinos(ArrayList<Destino> listaDestinos) {
        this.listaDestinos = listaDestinos;
    }
}
