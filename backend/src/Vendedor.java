import java.util.ArrayList;

public class Vendedor extends Pessoa {
    private String chaveDeAcesso;
    private static ArrayList<Vendedor> listaVendedores;

    public Vendedor(String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String chaveDeAcesso) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade);
        this.chaveDeAcesso = chaveDeAcesso;
        listaVendedores.add(this);
    }

    public String getChaveDeAcesso() {
        return chaveDeAcesso;
    }

    public void setChaveDeAcesso(String chaveDeAcesso) {
        this.chaveDeAcesso = chaveDeAcesso;
    }

    public static ArrayList<Vendedor> getListaVendedores() {
        return listaVendedores;
    }

    public static void setListaVendedores(ArrayList<Vendedor> listaVendedores) {
        Vendedor.listaVendedores = listaVendedores;
    }
}
