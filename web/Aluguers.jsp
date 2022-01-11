<%-- 
    Document   : Aluguers
    Created on : Jan 4, 2022, 8:17:51 PM
    Author     : Yuri Domingos 
--%>

<%@page import="java.util.List"%>
<%@page import="ucan.modelo.AluguerModelo"%>
<%@page import="ucan.dao.AluguerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/pessoa.css"/>
    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    <title>Administrador</title>
</head>

<body>

    <div class="sidebar">
        
  <%@include  file="HeaderTitle.jsp" %>
    <%@include file="MenuLateral.jsp" %>

    </div>

    <div class="container-principal">

        <header>
            <h2>
                <label for="">
                    <span class="las la-bars"> </span>
                </label>

                Dashboard
            </h2>

            <div class="persquisar-wrapper">

                <span class="las la-search"></span>
                <input type="search" placeholder="pesquisar aqui">

            </div>
            <div class="user-wrapper">
                <img src="_assets/YuriDomingos.jpg" alt="Error, picture not found " width="40px" height="40px" />
                <div>

                    <h4> Yuri Domingos</h4>
                    <small> Administrador</small>
                </div>
            </div>
        </header>

        <main>
        
        
            <!-- Recent grids-->

            <div class="primer-grid">
                <div class="projects">
                    <div class="primer-card">
                        <div class="primer-card-header">
                            <h3> Lista de empréstimos </h3>
                            <button onclick="window.location.href=''"> Novo emprestimo  <span class="las la-arrow-right"></span> </button>
                         
                        </div>
                        <div class="primer-card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td> Id Aluguer </td>
                                        <td> Titulo do Filme  </td>
                                        <td> Nome do sócio  </td>
                                        <td> Data de aluguer </td>
                                        <td> Data de devolução</td>
                                       
                                    </tr>
                                </thead>
                                
                                <% 
                                    AluguerDAO aluguer = new AluguerDAO();
                                    List<AluguerModelo> listaAluguer = aluguer.listarAluguerModelo();
                                    
                                    for ( AluguerModelo aluguerTmp : listaAluguer)
                                    {
                                    
                                    %>
  
                                <tbody>
                                    <tr>
                                        
                                        <td><%= aluguerTmp.getPk_AluguerFilme() %>  </td>
                                        <td><%= aluguerTmp.getTitulo_portugues() %> </td>
                                        <td><%= aluguerTmp.getPrimeiro_nome() + " "+ aluguerTmp.getUltimo_nome() %> </td>
                                        <td><%= aluguerTmp.getData_aluguer() %> </td>
                                        <td><%= aluguerTmp.getData_devolucao() %> </td>                                   
                                        <td>
                                            <a class="icon1" > <img  src="_assets/editar.png"  class="icon" alt="Error while was loading"> </a> 
                                        </td>
                                        <td> 
                                            <a class="icon2"> <img src="_assets/eliminar.png" alt="Error While was loading"> </a> 
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