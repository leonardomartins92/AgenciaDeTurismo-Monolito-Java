package model;

import java.time.LocalDate;

public class Passagem {
    private String origem;
    private String destino;
    private LocalDate dataIda;
    private LocalDate dataVolta;
    private Cliente cliente;
    private Empresa empresa;

    public Passagem(String origem, String destino , LocalDate dataIda, LocalDate dataVolta, Cliente cliente, Empresa empresa) {
        this.origem = origem;
        this.destino = destino;
        this.dataIda = dataIda;
        this.dataVolta = dataVolta;
        this.cliente = cliente;
        this.empresa = empresa;
    }

    public Passagem(String origem, String destino, LocalDate dataIda, Cliente cliente, Empresa empresa) {
        this.origem = origem;
        this.destino= destino;
        this.dataIda = dataIda;
        this.cliente = cliente;
        this.empresa = empresa;
    }

    @Override
    public String toString() {
        return "model.Passagem{" +
                "origem='" + origem + '\'' +
                ", cliente=" + cliente +
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

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }
}
