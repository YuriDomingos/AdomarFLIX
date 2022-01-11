<%-- 
    Document   : CadastrarPessoa
    Created on : Dec 25, 2021, 6:04:39 AM
    Author     : Yuri Domingos 
--%>

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
        <div class="sidebar-logotipo">
            <!-- No momento estamos com falta de icones então, depois vamos adinicionar   -->
            <h2> <span class="icon mencionado "></span> AdomarFlix </h2>
        </div>

    <%@include file="MenuLateral.jsp" %>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
        
          
<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
              
                <div class="card-body">
                    <h3 class="title">Cadastrar Pessoa </h3>
                    
                    <form action="CadastroPessoaServlet" method="post">
                        <div class="input-group">
                            <input class="input--style-2" type="text" required="true" placeholder="Primeiro Nome" name="Pnome">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" required="true" placeholder="Último Nome" name="Unome">
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2 js-datepicker" type="text" required="true" name="Dnascimento" placeholder="Data de nascimento" name="birthday">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="sexo">
                                            
                                            <%
                                                SexoDAO sexo_lista = new SexoDAO();
                                                List<SexoModelo> lista = sexo_lista.listar_sexo();
                                                for (SexoModelo sexo : lista)
                                                {
                                                
                                                   %>
                                                
                                                   <option value=<%= sexo.getPk_sexo()%>> <%= sexo.getDescricao() %> </option> 
                                                   
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
                                    <input class="input--style-2" type="text" required="true" placeholder="Nº Bilhete" name="Nbilhete">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="estado_civil">
                                            
                                            <%
                                                EstadoCivilDAO estado_civil = new EstadoCivilDAO();
                                                List<EstadoCivilModelo> listaESTC = estado_civil.listarEstadoCivil();
                                                for ( EstadoCivilModelo estd : listaESTC)
                                                {
                                            %>
                                            
                                            <option value=<%= estd.getPk_estado_civil()%>><%= estd.getDescricao() %> </option>
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
                                    <input class="input--style-2" type="email" required="true" placeholder="Email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-2" type="number" required="true" placeholder="+244 " maxlength="9" name="numero">
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      <div class="row row-space">
                            <div class="col-2">
                                <div class="rs-select2 js-select-simple select--no-search">
                                <select name="Nacionalidade">
                                    <option disabled="disabled" selected="selected">Nacionalidade</option>
                                    <%
                                        NacionalidadeDAO nacioAO = new NacionalidadeDAO();
                                        List<NacionalidadeModelo>  listaNacio = nacioAO.listarNacionalidade();
                                        for (NacionalidadeModelo nacionalidade : listaNacio)
                                        {
                                        %>
                                        <option value=<%= nacionalidade.getPk_Nacionalidade() %>>  <%= nacionalidade.getDescricao()  %> </option>
                                        
                                        <%}
                                            
                                           

                                        %>
                                        
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                            </div>
                            <div class="col-2">
                             <div class="rs-select2 js-select-simple select--no-search">
                                <select name="comuna">
                                    <option disabled="disabled" selected="selected">Morada</option>
                                    
                                    <%
                                        
                                     ComunaDAO comunaDAO = new ComunaDAO();
                                     List<ComunaModelo> listaR = comunaDAO.listarComunas();
                                     for ( ComunaModelo comuna : listaR)
                                     {
                                        
                                     %>
                                     
                                     <option value=<%= comuna.getPk_comuna() %>> <%= comuna.getDescricao() %> </option>
                                     
                                     <%}

                                  %>
                                        
                                </select>
                                <div class="select-dropdown"></div>
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