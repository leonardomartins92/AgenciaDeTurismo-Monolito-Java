package model;

public class Gerente extends Pessoa {

    private String chaveDeAcesso;

    public Gerente(String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String chaveDeAcesso) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade);
        this.chaveDeAcesso = chaveDeAcesso;
    }

    public String getChaveDeAcesso() {
        return chaveDeAcesso;
    }

    public void setChaveDeAcesso(String chaveDeAcesso) {
        this.chaveDeAcesso = chaveDeAcesso;
    }
}
