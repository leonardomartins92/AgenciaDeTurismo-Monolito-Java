public class Destino {
    private String pais;
    private String uf;
    private String cidade;

    public Destino(String pais, String uf, String cidade) {
        this.pais = pais;
        this.uf = uf;
        this.cidade = cidade;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
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

}
