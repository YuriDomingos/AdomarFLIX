/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        
        String tituloPort = request.getParameter("TituloPortu").trim();
        String tituloOriginal = request.getParameter("TituloOriginal").trim();
        String sinopse   = request.getParameter("sinopse").trim();
        String idGenero = request.getParameter("GeneroFilme").trim();
        String duracao = request.getParameter("duracao").trim();
        String idClassificacao = request.getParameter("classificacao").trim();
        
        System.out.println("Os dados introduzidos foram ------------------");
        System.out.println(" Titulo Portugues "+tituloPort);
        System.out.println("Titulo Original " + tituloOriginal);
        System.out.println("Sinopse "+sinopse);
        System.out.println("idGenero  "+idGenero);
        System.out.println("duracao "+duracao);
        System.out.println("idClassificacao "+idClassificacao);
        
        request.getRequestDispatcher("listaFilmes.jsp").forward(request, response);
        System.out.println("Entrou agora ");
    }

   

}
