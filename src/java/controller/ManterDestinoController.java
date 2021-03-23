/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.EmpresaDAO;
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
import model.Destino;
import model.Empresa;
import model.Pacote;


/**
 *
 * @author Leo
 */
public class ManterDestinoController extends HttpServlet {

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
            
            if(acao.equals("preparaOperacao")){
            prepararOperacao(request,response);
            }
            else if(acao.equals("confirmaOperacao")){
            confirmarOperacao(request,response);
            }
        
    }
    
     public void prepararOperacao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
    
         String operacao = request.getParameter("operacao");
         request.setAttribute("operacao", operacao);
         request.setAttribute("empresas", Empresa.obterEmpresas());
         request.setAttribute("pacotes", Pacote.obterPacotes());
        
         
         if(!operacao.equals("Adicionar")){          
                 int id = Integer.parseInt(request.getParameter("cod"));
                 request.setAttribute("destino", Destino.obterDestino(id));
                 request.setAttribute("nomeEmpresa",Destino.nomeEmpresa(Destino.obterDestino(id).getCnpjEmpresa()));
                 request.setAttribute("empresas", EmpresaDAO.getInstancia().obterEmpresas());
         }
         
         
         
         RequestDispatcher view = 
                    request.getRequestDispatcher("/manterDestino.jsp");
            view.forward(request, response);
                      
         }catch (ClassNotFoundException | SQLException e){
            throw new ServletException(e);
        }
         
    
    
    }
     
     public void confirmarOperacao (HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException{
        int id=0;
        String operacao = request.getParameter("operacao");
        int idPacote = Integer.parseInt(request.getParameter("idPacote"));
        String dataInicial = request.getParameter("dataInicial");
        String dataFinal = request.getParameter("dataFinal");
        String cnpj = request.getParameter("cnpj");
        
        
        Destino destino = new Destino(1, dataInicial, dataFinal, Pacote.obterPacote(idPacote), Empresa.obterEmpresa(cnpj));
        
        switch(operacao){
                case "Adicionar":
                    Destino.gravar(destino);
                    break;
                case "Editar":
                    Destino.alterar(destino);
                    break;
                case "Excluir":
                    id = destino.getId();
                    Destino.deletarDestino(id);
                    break;
            }
        RequestDispatcher view = request.getRequestDispatcher("PesquisaDestinoController");
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
            Logger.getLogger(ManterDestinoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterDestinoController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ManterDestinoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterDestinoController.class.getName()).log(Level.SEVERE, null, ex);
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
