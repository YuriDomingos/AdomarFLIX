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
import ucan.dao.ActorDAO;

/**
 *
 * @author Yuri Domingos 
 * Data    : 31-12-2021
 * Objectivo : Construir a servlet que faz o cadastro do filme 
 */
@WebServlet(name = "CadastrarActor", urlPatterns = {"/CadastrarActor"})
public class CadastrarActor extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    
         
        ActorDAO.cadastrarActor(Integer.parseInt(request.getParameter("fk_pessoa")));     
        request.getRequestDispatcher("actor.jsp").forward(request, response);
        
      }

  }