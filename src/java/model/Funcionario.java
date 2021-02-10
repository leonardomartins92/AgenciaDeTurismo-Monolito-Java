package model;

public class Funcionario extends Pessoa{
    private String password;
    private int tipo;

     public Funcionario(String password, int tipo, String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String cep) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade, cep);
        this.password = password;
        this.tipo = tipo;
    }    

    @Override
    public String toString() {
        return "Funcionario{" + "tipo=" + tipo + " nome="+name+'}';
    }

    

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
    
}
