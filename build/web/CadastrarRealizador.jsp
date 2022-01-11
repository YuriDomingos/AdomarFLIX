<%-- 
    Document   : CadastrarRealizador
    Created on : Jan 1, 2022, 8:29:30 AM
    Author     : Yuri Domingos
--%>

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

    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/cadastrarPessoa.css"/>
    <link rel="stylesheet" href="_css/Form_cadastro.css"/>
    <link rel="stylesheet" type="text/css" href="_css/montserrat-font.css">
    <link rel="stylesheet" type="text/css" href="_css/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
    

    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    
    <title> Cadastro realizador </title>
    

</head>

<body>

    <div class="sidebar">
        <div class="sidebar-logotipo">
            <!-- No momento estamos com falta de icones então, depois vamos adinicionar   -->
            <h2> <span class="icon mencionado "></span> AdomarFlix </h2>
        </div>

        <!-- Falta adicionar os icones  para cada options -->

        <div class="sidebar-menu">
            <ul>
                <li> <a href="index.jsp" class="active"> <span> </span class="las la-igloo">
                        <span> Dashboard </span> </a>
                </li>
                <li> <a href="pessoas.jsp"> <span> </span class="las la-igloo">
                    <span> Pessoas </span> </a>
                </li>
                <li> <a href="filmes.jsp"> <span> </span class="las la-igloo">
                        <span> Filmes </span> </a>
                </li>
                <li> <a href="actor.jsp"> <span> </span class="las la-igloo">
                        <span> Actores </span> </a>
                </li>
                <li> <a href="socios.jsp"> <span> </span class="las la-igloo">
                        <span> Sócios </span> </a>
                </li>
                <li> <a href=""> <span> </span class="las la-igloo">
                        <span> Realizadores </span> </a>
                </li>
            </ul>
        </div>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
        

 
                                      
            <div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="CadastrarRealizador" method="post" id="myform">
				
				<div class="form-right">
					<h2> Cadastro Realizador </h2>
					
				
					<div class="form-row">
						<select name="pais">
                                                    <option class="own"  disabled="disabled" selected="selected">Selecione uma pessoa</option>
                                                    <%
                                                        PessoaDAO pessoaDAO = new PessoaDAO();
                                                        List<PessoaModelo> listaP = pessoaDAO.listar_pessoa();
                                                        for ( PessoaModelo pessoa : listaP)
                                                        {
                                                      %> 
                                                      
                                                      <option value=<%=pessoa.getPk_pessoa()%>> <%= pessoa.getPrimeiro_nome() +"  "+ pessoa.getUltimo_nome() %> </option>
                                                      
                                                      <%}

                                                     %>   
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
                                                
		
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="Cadastrar realizador ">
					</div>
				</div>
			</form>
		</div>
	</div>

  </main> 
                                     
 </div>            
     
    
    
                                
    </body>
</html>
