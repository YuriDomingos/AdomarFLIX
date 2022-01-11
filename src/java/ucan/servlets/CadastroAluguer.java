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
 * @author : Yuri Domingos 
 * Data    : 11 - 01 - 2021
 * Objectivo : Construir o cadastro de aluguer 
 */
@WebServlet(name = "CadastroAluguer", urlPatterns = {"/CadastroAluguer"})
public class CadastroAluguer extends HttpServlet {

  

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException         
    {
       
    }

  
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException        
    {
        

         request.getRequestDispatcher("Aluguers.jsp").forward(request, response);
    }

   
    
}
