package test;

import dao.EmpresaDAO;
import java.sql.SQLException;
import model.Empresa;
import model.TipoEmpresa;

public class TestEmpresa {
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
       Empresa empresa = new Empresa("1012", "Azul", "azul@gmail.com", "123", "Rua da Azul", "0", null, "MG", "Juiz de Fora", TipoEmpresa.AEREA, "36080001");
       EmpresaDAO.getInstancia().gravar(empresa);
       //System.out.println(EmpresaDAO.getInstancia().obterEmpresas());
       //System.out.println(EmpresaDAO.getInstancia().obterEmpresa("1012"));
       //EmpresaDAO.getInstancia().deletarEmpresa("1012");
    }
    
}
