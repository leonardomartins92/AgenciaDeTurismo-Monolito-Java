package model;

public abstract class Funcionario extends Pessoa{
    protected String password;

    public Funcionario(String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String password) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade);
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
