<%-- 
    Document   : listaFilmes
    Created on : Jan 2, 2022, 12:21:07 PM
    Author     : Yuri Domingos
--%>

<%@page import="ucan.modelo.FilmeModelo"%>
<%@page import="ucan.dao.FilmeDAO"%>
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

 
    <%@include  file="MenuLateral.jsp" %>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
            <div class="primer-grid">
                <div class="projects">
                    <div class="primer-card">
                        <div class="primer-card-header">
                            <h3> Filmes  Cadastrados  </h3>
                            <button onclick="window.location.href='CadastrarFime.jsp'"> Novo filme  <span class="las la-arrow-right"></span> </button>
                         
                        </div>
                        <div class="primer-card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        
                                        <td> Id Filme </td>
                                        <td> Titulo português </td>
                                        <td> Titulo original </td>
                                        <td> Sinopse </td>
                                        <td> Genero </td>       
                                        <td> Classificação </td>       
                                        <td> Realizador</td>       
                                        <td> Duracao </td>       
                                        <td> Imagem </td>       
                                        
                                    </tr>
                                </thead>
                                
                                <%
                                     FilmeDAO filmeDAO = new FilmeDAO();
                                     List<FilmeModelo> listaF = filmeDAO.listagem_principal();
                                     for(FilmeModelo filme : listaF)
                                     {
                                 %>
  
                                <tbody>
                                    <tr>
                                        
                                        <td><%= filme.getPk_filme() %></td>
                                        <td><%= filme.getTitulo_portugues() %> </td>
                                        <td><%= filme.getTitulo_original() %> </td>
                                        <td><%= filme.getSinopse() %> </td>
                                        <td><%= filme.getGenero() %> </td>
                                        <td><%= filme.getClassificacao() %> </td>
                                        <td><%= filme.getFn()+ " " + filme.getLn() %> </td>
                                        <td><%= filme.getDuracao()%> </td>
                                        <td><img src='_assets/filmes/'<%=filme.getUrl_imagem() %>/> </td>
                                        
                                       
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
            
       
</body>
</html>
