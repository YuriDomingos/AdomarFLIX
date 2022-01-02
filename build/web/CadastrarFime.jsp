<%-- 
    Document   : CadastroFime
    Created on : Jan 1, 2022, 11:36:57 AM
    Author     : Yuri Domingos
--%>

<%@page import="ucan.modelo.ClassificacaoModelo"%>
<%@page import="ucan.dao.ClassificacaoDAO"%>
<%@page import="ucan.modelo.RealizadorModelo"%>
<%@page import="ucan.dao.RealizadorDAO"%>
<%@page import="ucan.dao.GeneroFilmeDAO"%>
<%@page import="ucan.modelo.GeneroFilmeModelo"%>
<%@page import="ucan.modelo.MoradaModelo"%>
<%@page import="ucan.dao.MoradaDAO"%>
<%@page import="ucan.modelo.EstadoCivilModelo"%>
<%@page import="ucan.modelo.EstadoCivilModelo"%>
<%@page import="ucan.dao.EstadoCivilDAO"%>
<%@page import="java.util.List"%>
<%@page import="ucan.modelo.SexoModelo"%>
<%@page import="ucan.dao.SexoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
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
                <li> <a href="realizador.jsp"> <span> </span class="las la-igloo">
                        <span> Realizadores </span> </a>
                </li>
            </ul>
        </div>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
        
          
<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
              
                <div class="card-body">
                    <h3 class="title">Cadastrar filme </h3>
                    
                 <form action="CadastroFilme" method="post">
                     
                     <div class="input-group">
                        <input class="input--style-2" type="text" required="true" placeholder="Titulo português" name="TituloPortu">
                      </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Titulo original" name="TituloOriginal">
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                               <div class="input-group">
                                    <input class="input--style-2" type="text" placeholder="Sinopse" name="sinopse">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="GeneroFilme">
                                             <option disabled="disabled" selected="selected">Genero do filme</option>
                                            <%
                                                GeneroFilmeDAO generoDAO = new GeneroFilmeDAO();
                                                List<GeneroFilmeModelo> lista_filmes = generoDAO.listarFilmes();
                                                for(GeneroFilmeModelo genero : lista_filmes)
                                                {
                                                   %>
                                                
                                                   <option value=<%= genero.getPk_generoFilme() %>> <%= genero.getDescricao() %> </option> 
                                                   
                                                     <%                                                    
                                                   }
                                               %>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    Duração
                                    <input class="input--style-2" type="time" value="01:00:00" placeholder="Sinopse" name="duracao">
                                </div>
                             
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="classificacao">
                                             <option disabled="disabled" selected="selected">Classificao filme </option>
                                            <%
                                                ClassificacaoDAO classific = new ClassificacaoDAO();
                                                List<ClassificacaoModelo> lista = classific.listaClassificacao();
                                                for ( ClassificacaoModelo classificaaoM : lista)
                                                {
                                            %>
                                            
                                            <option value=<%= classificaaoM.getPk_ClassificaoModelo() %>><%= classificaaoM.getDescricacao() %> </option>
                                            <%
                                           }
                                       %>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2" type="file" placeholder="imagem" name="imagem">
                                </div>
                                
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                <select name="Realizador">
                                    <option disabled="disabled" selected="selected"> Realizador </option>
                                    <%
                                        
                                        RealizadorDAO realizador = new RealizadorDAO();
                                        List<RealizadorModelo> realizadorModelo = realizador.listaRealizadoresComNome();

                                        for ( RealizadorModelo realizadorLista : realizadorModelo)
                                        {
                                        
                                        %>
                                        <option value=<%= realizadorLista.getPk_Realizador()%>> <%= realizadorLista.getPrimeiro_nome() 
                                                                                                    + realizadorLista.getUltimo_nome() %> 
                                        </option>
                                        
                                        <%
                                            
                                           }

                                        %>
                                        
                                </select>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                                        <div>
                                            
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