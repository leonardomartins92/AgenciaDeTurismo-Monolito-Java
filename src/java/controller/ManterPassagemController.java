/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Empresa;
import model.Pacote;

import model.Passagem;

/**
 *
 * @author Leo
 */
public class ManterPassagemController extends HttpServlet {

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
            
            throws ServletException, IOException {
        
            String acao = request.getParameter("acao");
            
            if(acao.equals("preparaOperacao")){
            prepararOperacao(request,response);
            }
            else if(acao.equals("confirmaOperacao")){
            confirmaOperacao(request,response);
            }
            
    }

    public void prepararOperacao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    try{
           
            String operacao = request.getParameter("operacao");
            request.setAttribute("operacao", operacao);
                        
            if(!operacao.equals("Adicionar")){
                int id = Integer.parseInt(request.getParameter("cod")); 
                request.setAttribute("passagem", Passagem.obterPassagem(id));
                request.setAttribute("nomeEmpresa",Passagem.nomeEmpresa(Passagem.obterPassagem(id).getCnpjEmpresa()));
                
            }
            request.setAttribute("pacotes", Pacote.obterPacotes());
            request.setAttribute("empresas", Empresa.obterEmpresas());
            
            RequestDispatcher view = 
                    request.getRequestDispatcher("/manterPassagem.jsp");
            view.forward(request, response);
        
    }catch (ClassNotFoundException | SQLException e){
            throw new ServletException(e);
        }
    
    }
    
    public void confirmaOperacao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            
            int  id; 
            Passagem p;
            String operacao = request.getParameter("operacao");
            
            
            if("Excluir".equals(operacao)){
                id = Integer.parseInt(request.getParameter("cod"));
                Passagem.deletarPassagem(id);
                
            }
            
            else{
                int idPacote = Integer.parseInt(request.getParameter("idPacote"));
                String cnpjEmpresa = request.getParameter("cnpjEmpresa");
                String origem = request.getParameter("origem");
                String destino = request.getParameter("destino");
                String dataIda = request.getParameter("dataIda");
                String dataVolta = request.getParameter("dataVolta");
                Pacote pacote = Pacote.obterPacote(idPacote);
                Empresa empresa = Empresa.obterEmpresa(cnpjEmpresa);
                
                 if("Adicionar".equals(operacao)){
                     p = new Passagem(0, origem, destino, dataIda, dataVolta, pacote, empresa);
                     Passagem.gravar(p);
                 }    
                     
                 if("Editar".equals(operacao)){
                     id = Integer.parseInt(request.getParameter("cod"));
                     p = new Passagem(id, origem, destino, dataIda, dataVolta, pacote, empresa);
                     Passagem.alterar(p);
                 }    
            }
                     
            RequestDispatcher view = 
                    request.getRequestDispatcher("PesquisaPassagemController");
            view.forward(request, response);
          
        }
        
       catch (ClassNotFoundException | SQLException e){
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
        processRequest(request, response);
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
        processRequest(request, response);
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
