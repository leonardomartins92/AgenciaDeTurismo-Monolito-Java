package model;

public class Pacote {
    private static int cont=1;
    private final int id;
    private Cliente cliente;
    private Funcionario funcionario;
    
      public Pacote(Cliente cliente, Funcionario funcionario) {
        this.id=cont;
        cont++;
        this.cliente = cliente;
        this.funcionario = funcionario;
        
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
      
}
