<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 29/03/2022
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Cadastrar Livro">
    <jsp:body>
        <h1 class="mt-5">Cadastro de Livros</h1>
        <form class="mt-5" action="register-book" method="post">
            <div class="row">
                <div class="col-6 form-group">
                    <label for="exampleInputEmail1">Titulo</label>
                    <input name="title" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>

                <div class="col-6 form-group">
                    <label for="editora">Editora</label>
                    <input name="publishing_company" type="text" class="form-control" id="editora">
                </div>

                <div class="col-6 form-group">
                    <label for="ano">Ano</label>
                    <input name="year" type="date" class="form-control" id="ano">
                </div>

                <div class="col-6 form-group">
                    <label for="qtd">Quantidade</label>
                    <input name="qtd" type="number" class="form-control" id="qtd">
                </div>

                <div class="col-12 form-group">
                    <label for="sinopse">Sinopse</label>
                    <textarea name="sinopse" rows="6" class="form-control" id="sinopse" placeholder=""></textarea>
                </div>
            </div>

            <a href="lista" class="btn btn-back">Voltar</a>
            <button type="submit" class="btn btn-register">Cadastrar</button>

        </form>
    </jsp:body>
</t:template>