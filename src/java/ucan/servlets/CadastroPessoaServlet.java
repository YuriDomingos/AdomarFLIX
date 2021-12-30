/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.servlets;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ucan.dao.PessoaDAO;
import ucan.modelo.PessoaModelo;

/**
 *
 * @author  Yuri Domingos 
 * Data   : 30  - 12 - 2021
 * Objectivo : Cadastrar pessoa na base de dados 
 */
@WebServlet(name = "CadastroPessoaServlet", urlPatterns = {"/CadastroPessoaServlet"})
public class CadastroPessoaServlet extends HttpServlet {


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

       @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        
        String primeiroNome           = request.getParameter("Pnome").trim();
        String ultimoNome             = request.getParameter("Unome").trim();
        String datanascimento         = request.getParameter("Dnascimento").trim();
        
        String sexo                   = request.getParameter("sexo").trim();
        String numero_bilhete         = request.getParameter("Nbilhete").trim();
        String estado_civil           = request.getParameter("estado_civil").trim();
        String email                  = request.getParameter("email").trim();
        String numeroTelefone         = request.getParameter("numero").trim();
        String morada                 = request.getParameter("Morada").trim();
        
        
    
        java.util.Date myDate = new java.util.Date(datanascimento);
       java.sql.Date sqlDate = new java.sql.Date(myDate.getTime());
        PessoaModelo pessoa = new PessoaModelo();
        
        pessoa.setPrimeiro_nome(primeiroNome);
        pessoa.setUltimo_nome(ultimoNome);
        pessoa.setNumero_bi(numero_bilhete);
        pessoa.setFk_sexo(Integer.parseInt(sexo));
        pessoa.setFk_estado_civil(Integer.parseInt(estado_civil));
        pessoa.setEmail(email);
        pessoa.setTelefone(Integer.parseInt(numeroTelefone));
        pessoa.setFk_morada(Integer.parseInt(morada));
        pessoa.setData_nasc(sqlDate);
       
        PessoaDAO pessoaDAO = new PessoaDAO();
        pessoaDAO.SalvarPessoa(pessoa);
           System.out.println("Salvou ");
       response.sendRedirect("pessoas.jsp");
        
        
     
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
