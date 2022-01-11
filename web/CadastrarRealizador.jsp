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
    <link rel="stylesheet" type="text/css" href="_css/montserrat-font.css">
    <link rel="stylesheet" type="text/css" href="_css/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    
    <title>Administrador</title>
    
    <style>
        
        .form-v10-content  {
    
	background: #fff;
	width: 1100px;
	border-radius: 10px;
	-o-border-radius: 10px;
	-ms-border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-o-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-ms-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	margin: 95px 0;
	position: relative;
	font-family: 'Montserrat', sans-serif;
}
        
.form-v10-content .form-detail {
	position: relative;
	width: 100%;
	display: flex;
	display: -webkit-flex;
}


.form-v10-content .form-detail h2 {
	font-weight: 500;
	font-size: 25px;
	margin-bottom: 34px;
	padding: 33px 50px 0px 60px;
                    
  }


.form-v10-content .form-detail select,
.form-v10-content .form-detail input {
    
    width: 100%;
    padding: 11.5px 15px 15px 15px;
    border: 1px solid #12192c;
    margin-left: 40px;
    border-radius: 5px;
    background: transparent;
    color : #1D2231;
    
    outline: none;
    -moz-outline: none;
    -webkit-outline: none;
    -o-outline: none;
    -ms-outline: none;
    font-family: 'Montserrat', sans-serif;
    font-size: 16px;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -o-box-sizing: border-box;
    -ms-box-sizing: border-box;
}

.form-v10-content .form-detail .form-right .form-row-last {
    padding-left: 60px;
    margin: 44px 0 10px;
}
.form-v10-content .form-detail .form-right .register {

	background: #3498db;
	border-radius: 12px;
	
	box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-o-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-ms-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);
	width: 180px;
	border: none;
	margin: 6px 0 50px 0px;
	cursor: pointer;
	color: white;
	font-weight: 700;
	font-size: 14px;
}
.form-v10-content .form-detail .form-right .register:hover {
	background: #12192c;
}
.form-v10-content .form-detail .form-right .form-row-last input {
	padding: 12.5px;
}

    </style>
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
			<form class="form-detail" action="#" method="post" id="myform">
				
				<div class="form-right">
					<h2> Cadastro Realizador </h2>
					
				
					<div class="form-row">
						<select name="pais">
                                                    <option class="own"  disabled="disabled" selected="selected">Genero do filme</option>
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
