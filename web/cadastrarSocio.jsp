<%-- 
    Document   : cadastrarSocio
    Created on : Dec 30, 2021, 4:39:08 PM
    Author     : yuri
--%>

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
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="_assets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="_assets/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/cadastrarPessoa.css"/>
    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    <title>Administrador</title>
</head>

<body>

    <div class="sidebar">
        <div class="sidebar-logotipo">
            <!-- No momento estamos com falta de icones então, depois vamos adinicionar   -->
            <h2> <span class="icon mencionado "></span> AdomarMovies </h2>
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
                <li> <a href=""> <span> </span class="las la-igloo">
                        <span> Funcionarios </span> </a>
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
                <li> <a href="realizador.jsp"> <span> </span class="las la-igloo">
                        <span> Realizadores </span> </a>
                </li>
            </ul>
        </div>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
        
          <div class="primer-card-header">
                           
            <button onclick="window.location.href='actor.jsp'"> Ver lista de actores <span class="las la-arrow-right"></span> </button>
                         
          </div>
          
      <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
              
                <div class="card-body">
                    <h3 class="title">Cadastrar Socio  </h3>
                    
                    <form action="CadastrarSocio" method="post">
                  
                              
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="fk_pessoa" method="post">
                                    
                                    <option disabled="disabled" selected="selected">Selecione uma pessoa </option>
                                    <%
                                        PessoaDAO pessoaDAO = new PessoaDAO();
                                        List<PessoaModelo> lista_pessoa = pessoaDAO.listar_pessoa();
                                        
                                        for ( PessoaModelo pessoaModelo : lista_pessoa)
                                        {                                                                         
                                        %>
                                        
                                        <option value=<%= pessoaModelo.getPk_pessoa()%>> <%=pessoaModelo.getPrimeiro_nome()  +  pessoaModelo.getUltimo_nome()%>
                                        
                                        </option>   
                                        <%}
                                        
                                     %>
                                     
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                                       
                                       <button type="submit" class="button" onload="salvou()">
	                   <span class="submit">Cadastrar</span>
	                   <span class="loading"><i class="fa fa-refresh"></i></span>
	                   <span class="check"><i class="fa fa-check"></i></span>
                           
                       </button>
                                       
                                       
                                       
                    </form>
                </div>
            </div>
        </div>
    </div>

  </main> 
                                     
 </div>            
     <!-- Jquery JS-->
     <script src="_assets/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="_assets/vendor/select2/select2.min.js"></script>
    <script src="_assets/vendor//datepicker/moment.min.js"></script>
    <script src="_assets/vendor//datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="_js/global.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <script>
        
        function salvou(){
            swal({
                  title: "Cadastrado com sucesso !",
                  text: "Nova pessoa cadastrada!!",
                   icon: "success",
                   button: "Fechar!",
                    onBeforeOpen: () => {
                    Swal.showLoading()
                },
});
        }
   
    </script>   
    
    
                                
    </body>
</html>
