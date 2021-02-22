package model;

public class Pacote {

    private Cliente cliente;
    private Funcionario funcionario;
    private int id;
    private String cpfFuncionario;
    private String cpfCliente;
  
    
      public Pacote(Cliente cliente, Funcionario funcionario) {
     
        this.cliente = cliente;
        this.funcionario = funcionario;       
    }

    @Override
    public String toString() {
        return "Pacote{" + "cliente=" + cliente + ", id=" + id + '}';
    }

    
      

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.setCpfCliente(cliente.getCpf());
        this.cliente = cliente;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.setCpfFuncionario(funcionario.getCpf());
        this.funcionario = funcionario;
    }

    public String getCpfFuncionario() {
        return cpfFuncionario;
    }

    public void setCpfFuncionario(String cpfFuncionario) {
        this.cpfFuncionario = cpfFuncionario;
    }

    public String getCpfCliente() {
        return cpfCliente;
    }

    public void setCpfCliente(String cpfCliente) {
        this.cpfCliente = cpfCliente;
    }
}
