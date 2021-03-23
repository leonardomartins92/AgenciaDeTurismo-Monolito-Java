package model;

public abstract class Pessoa {
    protected String name;
    protected String telefone;
    protected String email;
    protected String cpf;
    protected String logradouro;
    protected String numero;
    protected String complemento;
    protected String uf;
    protected String cidade;
    protected String cep;

    public Pessoa(String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String cep) {
        this.name = name;
        this.telefone = telefone;
        this.email = email;
        this.cpf = cpf;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.uf = uf;
        this.cidade = cidade;
        this.cep = cep;
    }

    @Override
    public String toString() {
        return "model.Pessoa{" +
                "name='" + name + '\'' +
                ", cpf='" + cpf + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    
        public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }
}
