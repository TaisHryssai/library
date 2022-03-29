<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Biblioteca</title></head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="assets/resources/images/livro.png"/>
    <!--Icons-->
    <script src="https://kit.fontawesome.com/826671e166.js" crossorigin="anonymous"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="assets/libraries/bootstrap-4.0.0/css/bootstrap.css"></link>

    <link rel="stylesheet" href="assets/resources/styles/main.css">

<body style="background-color: #f66b53">

<main id="content" class="container">
    <div class="">
        <div class="card-bibliotech">
            <h3>BIBLIOTECH</h3>
            <img class="img-fluid img-home" src="assets/resources/images/book3.png" alt="Card image cap">
                <div class="form">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Digite seu Nome</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>

                    <a href="lista" class="btn  btn-access">Acessar Biblioteca</a>
                </div>

        </div>
    </div>
</main>

</body>
</html>
<%--<t:template title="Biblioteca">--%>
<%--    <jsp:body>--%>
<%--        <div class="card">--%>
<%--            <p>teste</p>--%>
<%--        </div>--%>
<%--&lt;%&ndash;        <a href="lista-contatos"> <img class="mt-5 rounded mx-auto d-block img-fluid" src="assets/resources/images/agenda-contatos.png" alt="Card image cap"> </a>&ndash;%&gt;--%>

<%--    </jsp:body>--%>
<%--</t:template>--%>
