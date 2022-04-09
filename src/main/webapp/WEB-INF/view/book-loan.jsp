<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 29/03/2022
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Empréstimo de Livro">
    <jsp:body>
        <h1 class="mt-5">Empréstimo de Livros</h1>
        <form class="mt-5" method="post" action="book-loan">
            <div class="row">
                <div class="col-12 form-group">
                    <label for="nome">Nome</label>
                    <input name="name" type="text" class="form-control" id="nome" aria-describedby="emailHelp">
                </div>

                <div class="col-6 form-group">
                    <label for="email">Email</label>
                    <input name="email" type="email" class="form-control" id="email">
                </div>

                <div class="col-6 form-group">
                    <label for="telefone">Telefone</label>
                    <input name="phone" type="text" class="form-control" id="telefone">
                </div>

                <div class="col-6 form-group">
                    <label for="livros">Sinopse</label>
                    <select class="form-control" id="livros">
                        <option>Livro 1</option>
                        <option>Livro 2</option>
                    </select>
                </div>

                <div class="col-6 form-group">
                    <label for="data">Data do Empréstimo</label>
                    <input name="date" type="date" class="form-control" id="data">
                </div>
            </div>

            <a href="lista" class="btn btn-back">Voltar</a>
            <button type="submit" class="btn btn-register">Empréstimo</button>

        </form>
    </jsp:body>
</t:template>