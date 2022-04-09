<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 24/03/2022
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="Template principal" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title"%>
<html>
<head>
    <title>${title}</title></head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="assets/resources/images/livro.png"/>
    <!--Icons-->
    <script src="https://kit.fontawesome.com/826671e166.js" crossorigin="anonymous"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="assets/libraries/bootstrap-4.0.0/css/bootstrap.css"></link>
    <link rel="stylesheet" href="assets/resources/styles/template.css">
<%--    <link rel="stylesheet" href="assets/resources/styles/main.css">--%>

<body>

<header>
    <div class="navbar-fixed" style="z-index: 999">
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="assets/resources/images/book.png" alt="" class="logo-navbar"></a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">BIBLIOTECH <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <div class="form-inline">
                    <ul class="navbar-nav mr-lg-5">
                        <li class="nav-item dropdown options">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                                Opções
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="register-book">Cadastrar Livro</a>
                                <a class="dropdown-item" href="book-loan">Emprestar Livro</a>
                                <div class="dropdown-divider"></div>
                                <form class="" action="logout" method="post">
                                    <input class="btn dropdown-item" type="submit" value="Sair do Sistema">
                                </form>
<%--                                <a class="dropdown-item" href="/library">Sair do Sistema</a>--%>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<main id="content" class="container">
    <jsp:doBody></jsp:doBody>
</main>

<!-- rodape-->
<footer class="page-footer font-small special-color-dark pt-4" style="background-color: #fc573b">
    <div class="container">
        <ul class="list-unstyled list-inline text-center">
            <li class="list-inline-item">
                <a class="btn-floating btn-li mx-1 text-dark" href="https://www.linkedin.com/in/tais-michele-hryssai-da-luz-2a750310a/">
                    <i class="fab fa-linkedin-in"> </i>
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-github mx-1 text-dark" href="https://github.com/TaisHryssai">
                    <i class="fab fa-github"> </i>
                </a>
            </li>
        </ul>
    </div>
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2022 Copyright:
        <a href="#" class="text-dark"> Tais Michele Hryssai da Luz</a>
    </div>
    <!-- Copyright -->
</footer>

<script src="assets/libraries/jquery/jquery-3.6.0.min.js"></script>

<script src="assets/libraries/jquery.mask.min.js"></script>
<script src="assets/libraries/bootstrap-4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
