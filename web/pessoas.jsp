<%-- 
    Document   : pessoas.jsp
    Created on : Dec 24, 2021, 10:11:45 AM
    Author     : Yuri Domingos
--%>

<%@page import="java.util.List"%>
<%@page import="ucan.modelo.PessoaModelo"%>
<%@page import="ucan.dao.PessoaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

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
    <%@include  file="MenuLateral.jsp" %>

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
                            <h3> Pessoas Cadastradas </h3>
                            <button onclick="window.location.href='CadastrarPessoa.jsp'"> Nova Pessoa <span class="las la-arrow-right"></span> </button>
                         
                        </div>
                        <div class="primer-card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td> Id Pessoa </td>
                                        <td>Nome completo </td>
                                        <td> Nº Bilhete </td>
                                        <td> Data nasc </td>
                                        <td> sexo </td>
                                        <td> Estado Civil </td>
                                         <td> Email </td>
                                        <td> Telefone</td>
                                        <td> Nacionalidade </td>
                                        <td> Morada </td>
                                         
                                    </tr>
                                </thead>
                                
                                <%
                                 
                                   PessoaDAO pessoaDAO = new PessoaDAO();
                                   List<PessoaModelo> lista = pessoaDAO.listagem_principal();
                                   for (PessoaModelo pessoa : lista)
                                   {
                                       System.out.println(pessoa.getPk_pessoa());
                                 %>
  
                                <tbody>
                                    <tr>
                                        <td> <%= pessoa.getPk_pessoa() %> </td>
                                        <td> <%= pessoa.getPrimeiro_nome() +" " +pessoa.getUltimo_nome() %> </td>
                                        <td> <%= pessoa.getNumero_bi() %> </td>
                                        <td> <%= pessoa.getData_nasc() %></td>
                                        <td> <%= pessoa.getSexo_descricao() %> </td>
                                        <td> <%= pessoa.getEstado_civil_desc() %> </td>
                                        <td> <%= pessoa.getEmail() %> </td>
                                        <td> <%= pessoa.getTelefone() %> </td>                                    
                                         <td> <%= pessoa.getNacionalidade() %> </td>
                                         <td> <%= pessoa.getComuna_descr() %></td>
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