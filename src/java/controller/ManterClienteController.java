/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cliente;


/**
 *
 * @author Leo
 */
public class ManterClienteController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        String acao = request.getParameter("acao");
        switch (acao) {
            case "confirmaOperacao":
                confirmarOperacao(request, response);
                break;
            case "preparaOperacao":
                prepararOperacao(request, response);
                break; 
        }
    }
    
    void prepararOperacao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    try{

            String operacao = request.getParameter("operacao");
            request.setAttribute("operacao", operacao);
            String cpf = request.getParameter("cod");

            if(!operacao.equals("Adicionar")){
                request.setAttribute("cliente", Cliente.obterCliente(cpf));
            }
            
            RequestDispatcher view = 
                    request.getRequestDispatcher("/manterCliente.jsp");
            view.forward(request, response);
        } catch (ClassNotFoundException | SQLException e){
            throw new ServletException(e);
        }
    
    }
    
    private void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException, SQLException, ClassNotFoundException{
        try{
            String operacao = request.getParameter("operacao");
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");            
            String email = request.getParameter("email");
            String telefone = request.getParameter("telefone");
            String cep = request.getParameter("cep");
            String uf = request.getParameter("uf");
            String localidade = request.getParameter("localidade");
            String logradouro = request.getParameter("logradouro");
            String numero = request.getParameter("numero");
            String complemento = request.getParameter("complemento");
                        
            Cliente cliente = new Cliente(nome,telefone, email, cpf, logradouro, numero, complemento, uf, localidade, cep);
            
            switch(operacao){
                case "Adicionar":
                    Cliente.gravar(cliente);
                    break;
                case "Editar":
                    Cliente.alterar(cliente);
                    break;
                case "Excluir":
                    cpf = cliente.getCpf();
                    Cliente.deletarCliente(cpf);
                    break;
            }
            RequestDispatcher view = 
                    request.getRequestDispatcher("/pesquisaCliente.jsp");
            view.forward(request, response);
        } catch (ClassNotFoundException | SQLException e){
            throw new ServletException(e);
        }
    }
    
    
  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ManterEmpresaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ManterEmpresaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    

}