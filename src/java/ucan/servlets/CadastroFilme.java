/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ucan.dao.FilmeDAO;
import ucan.modelo.FilmeModelo;

/**
 *
 * @author Yuri Domingos
 * Data   : 02 - 01 - 2021
 * Objectivo : Cadastro de filme 
 * 
 */
@WebServlet(name = "CadastroFilme", urlPatterns = {"/CadastroFilme"})

public class CadastroFilme extends HttpServlet 
{

   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
System.out.println("Entrou agora ");
        
        
        FilmeModelo filmeModelo = new FilmeModelo();
        
        filmeModelo.setTitulo_portugues(request.getParameter("TituloPortu").trim());
        filmeModelo.setTitulo_original(request.getParameter("TituloOriginal").trim());
        filmeModelo.setSinopse(request.getParameter("sinopse").trim());
        filmeModelo.setFk_genero(Integer.parseInt(request.getParameter("GeneroFilme").trim()));
        filmeModelo.setDuracao(request.getParameter("duracao").trim());
        filmeModelo.setFk_classificacao(Integer.parseInt( request.getParameter("classificacao").trim()));
        filmeModelo.setFk_realizador(Integer.parseInt(request.getParameter("Realizador").trim()));
        
        
                
        System.out.println(filmeModelo.getSinopse());
        try {
            
            FilmeDAO.cadastrarFilme(filmeModelo);
        } catch (ParseException ex) {
            Logger.getLogger(CadastroFilme.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.getRequestDispatcher("listaFilmes.jsp").forward(request, response);

    }

   

}
