package test;

import dao.EmpresaDAO;
import java.sql.SQLException;
import model.Empresa;
import model.TipoEmpresa;

public class TestEmpresa {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Empresa empresa = new Empresa("1", "Hotel Transylvania", "hotelTransylvania@gmail.com", "505", "Rua do Hotel", "5", null, "MG", "Juiz de Fora", TipoEmpresa.ACOMODACAO, "36080001");
        EmpresaDAO.getInstancia().gravar(empresa);
       //System.out.println(EmpresaDAO.getInstancia().obterEmpresas());
        //System.out.println(EmpresaDAO.getInstancia().obterEmpresa("1012"));
        //EmpresaDAO.getInstancia().deletarEmpresa("1012");
    }

}
