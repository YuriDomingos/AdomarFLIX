<%-- 
    Document   : realizador
    Created on : Jan 1, 2022, 7:30:20 AM
    Author     : Yuri Domingos
--%>

<%@page import="ucan.modelo.RealizadorModelo"%>
<%@page import="ucan.dao.RealizadorDAO"%>
<%@page import="java.util.List"%>
<%@page import="ucan.modelo.SocioModelo"%>
<%@page import="ucan.dao.SocioDAO"%>
<%@page import="ucan.dao.SocioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
       <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- Icons font CSS-->
   
    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/pessoa.css"/>
    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    <title>Administrador</title>
</head>

<body>

    <div class="sidebar">
  
      <%@include  file="HeaderTitle.jsp" %>
      <%@include  file="MenuLateral.jsp" %>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
            <div class="primer-grid">
                <div class="projects">
                    <div class="primer-card">
                        <div class="primer-card-header">
                            <h3> Realizadores Cadastrados  </h3>
                            <button onclick="window.location.href='CadastrarRealizador.jsp'"> Novo Realizador <span class="las la-arrow-right"></span> </button>
                         
                        </div>
                        <div class="primer-card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        
                                        <td> Id Realizador </td>
                                        <td> Primeiro Nome </td>
                                        <td> Ultimo Nome</td>
                                        <td> Data de inicio  </td>       
                                        
                                    </tr>
                                </thead>
                                
                                <%
                                    RealizadorDAO listaRealizadores = new RealizadorDAO();
                                    List<RealizadorModelo> listaReal = listaRealizadores.listaRealizadoresComNome();
                                    for (RealizadorModelo realizaor : listaReal)
                                    {
                                        
                                    
                                 %>
  
                                <tbody>
                                    <tr>
                                        <td><%=realizaor.getPk_Realizador() %> </td>
                                        <td><%=realizaor.getPrimeiro_nome() %> </td>
                                        <td><%= realizaor.getUltimo_nome() %> </td>
                                        <td><%= realizaor.getData_inico() %> </td>
                                       
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
