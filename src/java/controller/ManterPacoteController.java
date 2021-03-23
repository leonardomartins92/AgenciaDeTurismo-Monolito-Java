/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cliente;
import model.Destino;
import model.Funcionario;
import model.Pacote;


/**
 *
 * @author Leo
 */
public class ManterPacoteController extends HttpServlet {

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

    public void prepararOperacao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    try{
        
            String operacao = request.getParameter("operacao");
            request.setAttribute("operacao", operacao);
            request.setAttribute("funcionarios", Funcionario.obterFuncionarios());
            request.setAttribute("clientes", Cliente.obterClientes());
                        
            if(!operacao.equals("Adicionar")){
                int id = Integer.parseInt(request.getParameter("cod"));
                request.setAttribute("idPacote", request.getParameter("cod"));
                request.setAttribute("pacote", Pacote.obterPacote(id));
                request.setAttribute("nomeCliente",Pacote.nomeCliente(Pacote.obterPacote(id).getCpfCliente()));
                request.setAttribute("nomeFuncionario",Pacote.nomeFuncionario(Pacote.obterPacote(id).getCpfFuncionario()));
            }
            
            RequestDispatcher view = 
                    request.getRequestDispatcher("/manterPacote.jsp");
            view.forward(request, response);
            
           
        } catch (ClassNotFoundException | SQLException e){
            throw new ServletException(e);
        }
    
    
    }
    
    public void confirmarOperacao (HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException{
        int id;
        String operacao = request.getParameter("operacao");
        String cpfCliente = request.getParameter("cpfCliente");
        String cpfFuncionario = request.getParameter("cpfFuncionario");
        
        Pacote pacote; 
        
        switch(operacao){
                case "Adicionar":
                    pacote = new Pacote(1, Cliente.obterCliente(cpfCliente), Funcionario.obterFuncionario(cpfFuncionario));
                    Pacote.gravar(pacote);
                    break;
                case "Editar":
                    id = Integer.parseInt(request.getParameter("cod"));
                    pacote = new Pacote(id, Cliente.obterCliente(cpfCliente), Funcionario.obterFuncionario(cpfFuncionario));
                    Pacote.alterar(pacote);
                    break;
                case "Excluir":
                    id = Integer.parseInt(request.getParameter("cod"));
                    Pacote.deletarPacote(id);
                    break;
            }
        RequestDispatcher view = request.getRequestDispatcher("PesquisaPacoteController");
            view.forward(request, response);
        
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
        } catch (SQLException ex) {
            Logger.getLogger(ManterPacoteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterPacoteController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(ManterPacoteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterPacoteController.class.getName()).log(Level.SEVERE, null, ex);
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
