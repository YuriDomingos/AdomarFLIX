<%-- 
    Document   : CadastrarPessoa
    Created on : Dec 25, 2021, 6:04:39 AM
    Author     : Yuri Domingos 
--%>

<%@page import="ucan.modelo.FilmeModelo"%>
<%@page import="ucan.dao.FilmeDAO"%>
<%@page import="ucan.modelo.SocioModelo"%>
<%@page import="ucan.dao.SocioDAO"%>
<%@page import="ucan.dao.ComunaDAO"%>
<%@page import="ucan.modelo.ComunaModelo"%>
<%@page import="ucan.modelo.NacionalidadeModelo"%>
<%@page import="ucan.dao.NacionalidadeDAO"%>

<%@page import="ucan.modelo.EstadoCivilModelo"%>
<%@page import="ucan.dao.EstadoCivilDAO"%>
<%@page import="java.util.List"%>
<%@page import="ucan.modelo.SexoModelo"%>
<%@page import="ucan.dao.SexoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

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
    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    <title>Administrador</title>
</head>

<body>

    <div class="sidebar">
        
    <%@include  file="HeaderTitle.jsp" %>
    <%@include file="MenuLateral.jsp" %>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
        
          
<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
              
                <div class="card-body">
                    <h3 class="title">Cadastrar Aluguer </h3>
                    
                    <form action="CadastroAluguer" method="post">
                        
                       <div class="row row-space">
                            <div class="col-2">
                                <div class="rs-select2 js-select-simple select--no-search">
                                <select name="fk_socio">
                                            
                                                 <option class="own"  disabled="disabled" selected="selected">Selecione o Sócio</option>
                                                    <%
                                                        SocioDAO listaSocio = new SocioDAO();
                                                        List<SocioModelo> lista_tm = listaSocio.listar_socio();
                                                        for ( SocioModelo socio : lista_tm)
                                                        {
                                                      %> 
                                                      
                                                      <option value=<%=socio.getPk_socio() %>> <%= socio.getPrimeiro_nome() +"    "+socio.getUltimo_nome() %>    
                                                                                              
                                                       </option>
                                                      
                                                      <%}

                                                     %>   
				              </select>

                                <div class="select-dropdown"></div>
                            </div>
                            </div>
                            <div class="col-2">
                             <div class="rs-select2 js-select-simple select--no-search">
                                <select name="fk_filme">
                                     
                                                    <option   disabled="disabled" selected="selected"> Selecione o filme  </option>
                                                    
                                                    <%
                                                        FilmeDAO filmeDAO = new FilmeDAO();
                                                        
                                                        List<FilmeModelo> lista_filme = filmeDAO.listagem_principal();
                                                        for ( FilmeModelo filme : lista_filme )
                                                        {
                                                        
                                                    %>
                                                    
                                                    <option value=<%= filme.getPk_filme() %>> <%= filme.getTitulo_portugues() %>  <option>
                                                    <%}
                                                   
                                                     %>
                                                   
				      </select>
                                <div class="select-dropdown"></div>
                            </div>
                            </div>
                        </div>
                                  <br>
                                  <br>
                                  <br>
                                  <br>
                                
                                  
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2 js-datepicker" type="text" required="true" name="DEntrega" placeholder="Data de aluguer">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2 js-datepicker" type="text" required="true" name="DataDevolucao" placeholder="Data de entrega">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>

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