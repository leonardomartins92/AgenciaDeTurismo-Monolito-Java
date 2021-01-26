package model;

import java.util.ArrayList;

public class Vendedor extends Funcionario {
    private static ArrayList<Vendedor> listaVendedores;

    public Vendedor(String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String password) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade, password);
        listaVendedores.add(this);
    }

    public static ArrayList<Vendedor> getListaVendedores() {
        return (ArrayList<Vendedor>) listaVendedores.clone();
    }

    public static void setListaVendedores(ArrayList<Vendedor> listaVendedores) {
        Vendedor.listaVendedores = listaVendedores;
    }
}
