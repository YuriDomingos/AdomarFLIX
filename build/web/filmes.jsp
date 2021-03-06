<%-- 
    Document   : filmes.jsp
    Created on : Dec 24, 2021, 10:56:41 AM
    Author     : yuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="_css/index.css" />
    <link rel="stylesheet" href="_css/filme.css" />
    
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
        
         <section class="dishes" id="dishes">

      
        <h1 class="heading"> Nossos filmes   </h1>
        <div class="card-header">
               <h3>  </h3>
                 <button onclick="window.window.location.href='listaFilmes.jsp'" > Ver todos filmes  <span class="las la-arrow-right"></span> </button>
               <button onclick="window.window.location.href='CadastrarFime.jsp'" > Novo filme <span class="las la-arrow-right"></span> </button>
         </div>

        <div class="box-container">

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="_assets/filmes/filme1.jpg" alt="Erro imagem n??o encontrada">
                <h4> Avegaia  nan</h4>

                <div class="stars">

                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-helf-alt"></i>
                </div>
              
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="_assets/filmes/filme2.jpg" alt="Erro imagem n??o encontrada">
                <h4> Gfart gitreer </h4>

                <div class="stars">

                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-helf-alt"></i>
                </div>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="_assets/filmes/filme3.jpg" alt="Erro imagem n??o encontrada">
                <h4> Frango chovoir </h4>

                <div class="stars">

                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-helf-alt"></i>
                </div>
            </div>


            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="_assets/filmes/filme4.jpg" alt="Erro imagem n??o encontrada">
                <h4> Geprit lavon </h4>

                <div class="stars">

                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-helf-alt"></i>
                </div>
            </div>


            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="_assets/filmes/filme5.jpg" alt="Erro imagem n??o encontrada">
                <h4> bjing pingyo </h4>

                <div class="stars">

                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-helf-alt"></i>
                </div>
            </div>


            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="_assets/filmes/filme8.jpg" alt="Erro imagem n??o encontrada">
                <h4> Crov??nner tri </h4>

                <div class="stars">

                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-helf-alt"></i>
                </div>
            </div>

        </div>
    </section>

        </main>

    </div>
            
       
</body>

</html>
