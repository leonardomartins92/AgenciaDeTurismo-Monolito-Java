package model;

public class Funcionario extends Pessoa{
    private String senha;
    private int tipo;

     public Funcionario(String senha, int tipo, String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String cep) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade, cep);
        this.senha = senha;
        this.tipo = tipo;
    }    

    @Override
    public String toString() {
        return "Funcionario{" + "tipo=" + tipo + " nome="+name+'}';
    }

    

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
    
}
