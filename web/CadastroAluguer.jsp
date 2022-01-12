<%-- 
    Document   : CadastrarRealizador
    Created on : Jan 1, 2022, 8:29:30 AM
    Author     : Yuri Domingos
--%>

<%@page import="ucan.modelo.FilmeModelo"%>
<%@page import="ucan.dao.FilmeDAO"%>
<%@page import="ucan.modelo.SocioModelo"%>
<%@page import="ucan.dao.SocioDAO"%>
<%@page import="ucan.modelo.SocioCategoriaModelo"%>
<%@page import="ucan.dao.SocioCategoriaDAO"%>
<%@page import="ucan.modelo.NacionalidadeModelo"%>
<%@page import="ucan.dao.NacionalidadeDAO"%>
<%@page import="ucan.modelo.SexoModelo"%>
<%@page import="ucan.dao.SexoDAO"%>
<%@page import="java.util.List"%>
<%@page import="ucan.modelo.PessoaModelo"%>
<%@page import="ucan.dao.PessoaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- Icons font CSS-->

   <link href="_assets/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="_assets/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="_assets/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/cadastrarPessoa.css"/>
    <link rel="stylesheet" href="_css/Form_cadastro.css"/>
    
    

    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    
    <title> Cadastro realizador </title>
    

</head>

<body>

    <div class="sidebar">
        
        <%@include  file="HeaderTitle.jsp" %>
         <%@include file="MenuLateral.jsp" %>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
        

 
                                      
            <div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="CadastroAluguer" method="post" id="myform">
				
                            <table>
                                
                                <div class="form-right">
                                    <h2 style="text-align: center"> Cadastro ALuguer  </h2>
					
                                        <tr>
                                            <td>
                                               <div class="form-row">
						<select name="fk_socio">
                                                    <option class="own"  disabled="disabled" selected="selected">Selecione o Sócio</option>
                                                    <%
                                                        SocioDAO listaSocio = new SocioDAO();
                                                        List<SocioModelo> lista_tm = listaSocio.listar_socio();
                                                        for ( SocioModelo socio : lista_tm)
                                                        {
                                                      %> 
                                                      
                                                      <option value=<%=socio.getPk_socio() %>> <%= socio.getPrimeiro_nome() +"  "+  socio.getUltimo_nome() %> </option>
                                                      
                                                      <%}

                                                     %>   
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					  </div>
                                            </td>
                                              <td>
                                               <div class="form-row">
						<select name="fk_filme">
                                                    <option   disabled="disabled" selected="selected"> Selecione o filme  </option>
                                                    
                                                    <%
                                                        FilmeDAO filmeDAO = new FilmeDAO();
                                                        
                                                        List<FilmeModelo> lista_filme = filmeDAO.listagem_principal();
                                                        for ( FilmeModelo filme : lista_filme )
                                                        {
                                                        
                                                    %>
                                                    
                                                    <option value=<%= filme.getPk_filme() %>> <%= filme.getTitulo_portugues() %>  </option>
                                                    <%}
                                                   
                                                     %>
                                                   
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					  </div>
                                            </td>
                                            
                                        </tr>
                                        
                                        <tr>
                                            
                                            <td>
                                                
                                                   <div class="input-group">
                                                       <input class="input--style-2 js-datepicker" type="text" required="true" name="Dnascimento" placeholder="Data de nascimento" name="birthday">
                                                       <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                                    </div>
                                            </td>
                                            
                                             <td>
                                                
                                              <div class="input-group">
                                                  <p style=" font-size: 16px;
                                                              margin-left: 40px;
                                                              color : gray;"> Data Devolução  </p>
                                                  <input class="input--style-2 js-datepicker" type="date" required="true" name="DataDevolucao">
                                                   
                                               </div>
                                            </td>
                                        </tr>
					
                                                
		
					
				</div>
                                              
                            </table>
                                                  
                                           <div class="form-row-last" >
                                                    <input type="submit" name="register" class="register" value="Cadastrar "
                                                     style="background: #3498db;
                                                            color:white;
                                                            font-weight: bold; 
                                                            margin-top: 235px;
                                                            margin-left: -470px; 
                                                            width: 220px; 
                                                            border: none">
					     </div>  
			</form>
		</div>
	</div>

  </main> 
                                     
 </div>      
                                                     
                                                     
                                                     
    <script src="_assets/vendor/jquery/jquery.min.js"></script> 
    <script src="_assets/vendor//datepicker/moment.min.js"></script>
    <script src="_assets/vendor//datepicker/daterangepicker.js"></script>
                                   
    </body>
</html>

