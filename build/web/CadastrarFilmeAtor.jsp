<%-- 
    Document   : CadastrarRealizador
    Created on : Jan 1, 2022, 8:29:30 AM
    Author     : Yuri Domingos
--%>

<%@page import="ucan.modelo.FilmeModelo"%>
<%@page import="ucan.dao.FilmeDAO"%>
<%@page import="ucan.modelo.ActorModelo"%>
<%@page import="ucan.dao.ActorDAO"%>
<%@page import="ucan.modelo.SocioCategoriaModelo"%>
<%@page import="ucan.dao.SocioCategoriaDAO"%>
<%@page import="ucan.modelo.NacionalidadeModelo"%>
<%@page import="ucan.dao.NacionalidadeDAO"%>
<%@page import="ucan.modelo.SexoModelo"%>
<%@page import="ucan.dao.SexoDAO"%>
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
     <!-- Icons font CSS-->

    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/cadastrarPessoa.css"/>
    <link rel="stylesheet" href="_css/Form_cadastro.css"/>
    <link rel="stylesheet" type="text/css" href="_css/montserrat-font.css">
    <link rel="stylesheet" type="text/css" href="_css/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
    

    
    <!-- Vamos adicionar um awesome basico  do cdn do texto-->
    
    <title> Cadastro realizador </title>
    

</head>

<body>

    <div class="sidebar">
        
        <%@include  file="HeaderTitle.jsp" %>
         <%@include file="MenuLateral.jsp" %>

    </div>

    <div class="container-principal">

        <%@include file="header.jsp" %>

        <main>
        

 
                                      
            <div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="CadastrarSocio" method="post" id="myform">
				
                            <table>
                                
                                <div class="form-right">
                                    <h2 style="text-align: center"> Cadastrar actor ao filme </h2>
					
                                        <tr>
                                            <td>
                                               <div class="form-row">
						<select name="fk_pessoa">
                                                    <option class="own"  disabled="disabled" selected="selected">Selecione um ator </option>
                                                     <%
                                                           ActorDAO actorDAO = new ActorDAO();
                               
                                    
                                                           List<ActorModelo> actores = actorDAO.listar_Atores();
                                    
                                                          for ( ActorModelo actor : actores)
                                                          {
                                                            %>
                                                             <option value=<%=actor.getPk_actor() %>> <%= actor.getPrimeiro_nome() +"  "+ actor.getUltimo_nome() %> </option>
                                                      
                                                      <%}

                                                     %>   
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					  </div>
                                            </td>
                                              <td>
                                               <div class="form-row">
						<select name="fk_categoria">
                                                    <option   disabled="disabled" selected="selected"> Selecione o filme </option>
                                                    
                                                    <%
                                                          FilmeDAO filmeDAO = new FilmeDAO();
                                                          List<FilmeModelo> listaF = filmeDAO.listagem_principal();
                                                          for(FilmeModelo filme : listaF)
                                                          {
                                                               %>
                                                    
                                                               <option value=<%=filme.getPk_filme() %>> <%= filme.getTitulo_portugues()  %>  </option>
                                                         <%}
                                                   
                                                     %>
                                                   
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					  </div>
                                            </td>
                                            
                                        </tr>
					
                                                
		
					
				</div>
                                              
                            </table>
                                                  
                                           <div class="form-row-last" >
                                                    <input type="submit" name="register" class="register" value="Cadastrar "
                                                     style="background: #3498db;
                                                            color:white;
                                                            font-weight: bold; 
                                                            margin-top: 205px;
                                                            margin-left: -540px; 
                                                            width: 220px; 
                                                            border: none">
					     </div>
                                                
                                               
				
			</form>
		</div>
	</div>

  </main> 
                                     
 </div>            
     
    
    
                                
    </body>
</html>
