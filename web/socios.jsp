<%-- 
    Document   : socios
    Created on : Dec 26, 2021, 5:01:52 PM
    Author     : Yuri Domingos 
--%>

<%@page import="ucan.modelo.SocioModelo"%>
<%@page import="ucan.dao.SocioDAO"%>
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

    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/Form_cadastro.css"/>
    <link rel="stylesheet" href="_css/pessoa.css"/>
    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    <title>AdomarFlix</title>
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
                                        <td> Categoria do Sócio</td>
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
                                        <td><%= socio.getCategoria_desc() %> </td>
                                        <td><%= socio.getData_inicio() %> </td>
                                       
                                        <td>
                                         <a class="icon1"> <img  src="_assets/editar.png"  class="icon" style="width: 20px; height: 20px;" alt="Error while was loading"> </a> 
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
            
    

</body>
</html>
