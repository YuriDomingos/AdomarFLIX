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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ucan.dao.PessoaDAO;
import ucan.modelo.PessoaModelo;
import ucan.utils.TratamentoDeDatas;

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
        
        
       
       
        PessoaModelo pessoa = new PessoaModelo();
        
        
        pessoa.setPrimeiro_nome(request.getParameter("Pnome").trim());    
        pessoa.setUltimo_nome( request.getParameter("Unome").trim());     
        pessoa.setNumero_bi(request.getParameter("Nbilhete").trim());      
        pessoa.setFk_sexo(Integer.parseInt(request.getParameter("sexo").trim()));       
        pessoa.setFk_estado_civil(Integer.parseInt(request.getParameter("estado_civil").trim()));       
        pessoa.setEmail(request.getParameter("email").trim());      
        pessoa.setTelefone(Integer.parseInt(request.getParameter("numero").trim()));     
        pessoa.setFk_morada(Integer.parseInt(request.getParameter("Morada").trim()));       
        pessoa.setData_nasc(TratamentoDeDatas.converterDataNormalParaDataSQL(request.getParameter("Dnascimento").trim()));
        pessoa.setFk_nacionalidade(Integer.parseInt(request.getParameter("Nacionalidade")));
        
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
