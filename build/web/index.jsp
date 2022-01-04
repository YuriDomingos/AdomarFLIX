<%@page import="ucan.utils.Conexao"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="_css/index.css" />
    
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
                <li> <a href="filmes.jsp"> <span> </span class="las la-igloo">
                        <span> Alugueres </span> </a>
                </li>
                  <li> <a href=""> <span> </span class="las la-igloo">
                        <span> Alugures </span> </a>
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
        
 
            <div class="cards">

                <div class="card-single">
                    <div>
                        <h3> Filmes explosivos </h2>
                        <span> Drenalina gerada com ação </span>
                        <video class="apresentation-movies" autoplay=""  muted="" loop="" src="_assets/MOVIE.mp4"> </video>
                    </div>
                    <div>
                        <span class="las la-user"> </span>
                    </div>
                </div>
                <div class="card-single">
                    <div>
                        <h3> Drama e terror </h3>
                        <span> estórias arrepiantes </span>
                        <video class="apresentation-movies" autoplay=""  muted="" loop="" src="_assets/mov2.mp4"> </video>
                    </div>
                    <div>
                        <span class="las la-user"> </span>
                    </div>
                </div>
             
            

            </div>

            <!-- Recent grids-->

            <div class="recent-grid">
                <div class="projects">
                    <div class="card">
                        <div class="card-header">
                            <h3> Filmes recentes</h3>
                            <button onclick="window.location.href='filmes.jsp'"> Ver todos <span class="las la-arrow-right"></span> </button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td> Titulo do filme </td>
                                        <td> Categoria</td>
                                        <td> Classificação</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td> Mercenários </td>
                                        <td> Ação</td>
                                        <td>
                                            <span class="status"> </span> Disponível
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> Desde que chegaste </td>
                                        <td> Romance </td>
                                        <td>
                                            <span class="status"> </span> Indisponível
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> Todo poderoso </td>
                                        <td> Comédia </td>
                                        <td>
                                            <span class="status"> </span> Comédia
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            <div class="socios">
                <div class="card">
                    <div class="card-header">
                        <h3> Novos sócios </h3>
                        <button> Ver todos <span class="las la-arrow-right"></span> </button>
                    </div>
                    <div class="card-body">

                        <div class="socio">
                            <div>
                                <img src="_assets/YuriDomingos.jpg" alt="Error image not found " width="40px" height="40px">

                                <div>
                                    <H4> Félix Manuel </H4>
                                    <small> C.O excerpt</small>

                                </div>
                            </div>
                            <span class="las la-user-circle"></span>
                            <span class="las la-comment"></span>
                            <span class="las la-phone"></span>
                        </div>
                    </div>

                </div>
                <div class="socios">
                    <div class="card">
                    
                        <div class="card-body">

                            <div class="socio">
                                <div>
                                    <img src="_assets/uriDomingos.jpg" alt="Error image not found " width="40px" height="40px">

                                    <div>
                                        <H4> Félix Manuel </H4>
                                        <small> C.O excerpt</small>

                                    </div>
                                </div>
                                <span class="las la-user-circle"></span>
                                <span class="las la-comment"></span>
                                <span class="las la-phone"></span>
                            </div>
                        </div>

                    </div>
                </div>
                    <div class="socios">
                        <div class="card">
                          
                            <div class="card-body">

                                <div class="socio">
                                    <div>
                                        <img src="_assets/YuriDomingos.jpg" alt="Error image not found " width="40px" height="40px">

                                        <div>
                                            <H4> Félix Manuel </H4>
                                            <small> C.O excerpt</small>

                                        </div>
                                    </div>
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                            </div>

                        </div>
                    </div>
                        <div class="socios">
                            <div class="card">
                            
                                <div class="card-body">

                                    <div class="socio">
                                        <div>
                                            <img src="_assets/YuriDomingos.jpg" alt="Error image not found " width="40px" height="40px">

                                            <div>
                                                <H4> Félix Manuel </H4>
                                                <small> C.O excerpt</small>

                                            </div>
                                        </div>
                                        <span class="las la-user-circle"></span>
                                        <span class="las la-comment"></span>
                                        <span class="las la-phone"></span>
                                    </div>
                                </div>

                            </div>
                        </div>
            </div>

        </main>

    </div>
            
            <%
                if ( Conexao.abrirConexao() != null )
                {
                    System.out.println(" Conectado com sucesso ");
                }
                else
                {
                    System.out.println("Erro ao conectar ");
                }
                %>
</body>

</html>
