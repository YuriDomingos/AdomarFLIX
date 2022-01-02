<%-- 
    Document   : listaFilmes
    Created on : Jan 2, 2022, 12:21:07 PM
    Author     : Yuri Domingos
--%>

<%@page import="java.util.List"%>
<%@page import="ucan.modelo.SocioModelo"%>
<%@page import="ucan.dao.SocioDAO"%>
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
    <link rel="stylesheet" href="_css/pessoa.css"/>
    
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
            <div class="primer-grid">
                <div class="projects">
                    <div class="primer-card">
                        <div class="primer-card-header">
                            <h3> Socios Cadastrados  </h3>
                            <button onclick="window.location.href='cadastrarSocio.jsp'"> Novo Socio <span class="las la-arrow-right"></span> </button>
                         
                        </div>
                        <div class="primer-card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        
                                        <td> Id Socio </td>
                                        <td> Primeiro Nome </td>
                                        <td> Ultimo Nome</td>
                                        <td> Data de inicio  </td>       
                                        
                                    </tr>
                                </thead>
                                
                                <%
                                    SocioDAO socioDAO = new SocioDAO();

                                    List<SocioModelo> socios = socioDAO.listar_socio();
                                    
                                    for ( SocioModelo socio : socios)
                                    {
                                 %>
  
                                <tbody>
                                    <tr>
                                        <td><%=socio.getPk_socio()  %> </td>
                                        <td><%=socio.getPrimeiro_nome() %> </td>
                                        <td><%= socio.getUltimo_nome()%> </td>
                                        <td><%= socio.getData_inicio() %> </td>
                                       
                                        <td>
                                         <a class="icon1" > <img  src="_assets/editar.png"  class="icon" style="width: 20px; height: 20px;" alt="Error while was loading"> </a> 
                                        </td>
                                        <td> 
                                            <a class="icon2"> <img src="_assets/eliminar.png" alt="Error While was loading" style="width: 20px; height: 20px;"> </a> 
                                        </td>                
                                    </tr>
                                    
                                </tbody>
                                
                               <%}
                               
                                    
                                %>
                            </table>
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
