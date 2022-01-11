<%-- 
    Document   : CadastrarRealizador
    Created on : Jan 1, 2022, 8:29:30 AM
    Author     : Yuri Domingos
--%>

<%@page import="ucan.modelo.SocioModelo"%>
<%@page import="ucan.dao.SocioDAO"%>
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
                                    <h2 style="text-align: center"> Cadastro ALuguer  </h2>
					
                                        <tr>
                                            <td>
                                               <div class="form-row">
						<select name="fk_pessoa">
                                                    <option class="own"  disabled="disabled" selected="selected">Selecione o Sócio</option>
                                                    <%
                                                        SocioDAO listaSocio = new SocioDAO();
                                                        List<SocioModelo> lista_tm = listaSocio.listar_socio();
                                                        for ( SocioModelo socio : lista_tm)
                                                        {
                                                      %> 
                                                      
                                                      <option value=<%=socio.getPk_socio() %>> <%= socio.getPrimeiro_nome() +"  "+  socio.getUltimo_nome() %> </option>
                                                      
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
                                                    <option   disabled="disabled" selected="selected"> Selecione o filme  </option>
                                                    
                                                    <%
                                                        SocioCategoriaDAO lista_tmp = new SocioCategoriaDAO();
                                                        List<SocioCategoriaModelo> lista_socios = lista_tmp.listarCategoriaSocio();
                                                        for ( SocioCategoriaModelo socio : lista_socios)
                                                        {
                                                        
                                                    %>
                                                    
                                                    <option value=<%=socio.getPk_socio_categoria() %>> <%= socio.getDescricao() %>  </option>
                                                    <%}
                                                   
                                                     %>
                                                   
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					  </div>
                                            </td>
                                            
                                        </tr>
                                        
                                        <tr>
                                            
                                            <td>
                                                
                                              <div class="input-group">
                                                  <p style=" font-size: 16px;
                                                              margin-left: 40px;
                                                              color : gray;"> Data Aluguer </p>
                                                  <input class="input--style-2 js-datepicker" type="date" required="true" name="Dnascimento" placeholder="Data de nascimento" name="birthday">
                                                   
                                               </div>
                                            </td>
                                            
                                             <td>
                                                
                                              <div class="input-group">
                                                  <p style=" font-size: 16px;
                                                              margin-left: 40px;
                                                              color : gray;"> Data Devolução  </p>
                                                  <input class="input--style-2 js-datepicker" type="date" required="true" name="Dnascimento" placeholder="Data de nascimento" name="birthday">
                                                   
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
                                                            margin-top: 235px;
                                                            margin-left: -470px; 
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

