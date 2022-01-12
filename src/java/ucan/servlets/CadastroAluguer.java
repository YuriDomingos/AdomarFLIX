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
import ucan.dao.AluguerDAO;
import ucan.modelo.AluguerModelo;
import ucan.utils.TratamentoDeDatas;

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
        
        

         AluguerModelo aluguer = new AluguerModelo();
         
         aluguer.setData_aluguer(TratamentoDeDatas.converterDataNormalParaDataSQL(request.getParameter("DEntrega").trim()));
         String recebe = request.getParameter("DataDevolucao");
         System.out.println("A data "+recebe);
         aluguer.setData_devolucao(TratamentoDeDatas.converterDataNormalParaDataSQL(request.getParameter("DataDevolucao")));
        
         aluguer.setFk_filme(Integer.parseInt(request.getParameter("fk_filme").trim()));
         aluguer.setFk_socio(Integer.parseInt(request.getParameter("fk_socio").trim()));
   
         AluguerDAO.cadastrarAluguer(aluguer);
         
         request.getRequestDispatcher("Aluguers.jsp").forward(request, response);
    }

   
    
}
