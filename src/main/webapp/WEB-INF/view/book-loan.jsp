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

<t:template title="Emprestar Livro">
    <jsp:body>
        <h1 class="mt-5">Emprestar Livros</h1>
        <form class="mt-5" method="post" action="emprestar-livro">
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
                    <input name="phone" type="text" class="form-control telefone" id="telefone">
                </div>

                <div class="col-6 form-group">
                    <label for="book_id">Livros</label>
                        <select name="book_id" class="form-control" id="book_id">
                            <c:forEach var="book" items="${books}">
                            <option value="${book.id}">
                                    ${book.title}
                            </option>
                            </c:forEach>
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


        <script>
            window.onload = function (){
                $(document).ready(function () {
                    // formatação telefone
                    var cellAndLandMaskBehavior = function (val) {
                            return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
                        },
                        options = {
                            onKeyPress: function (val, e, field, options) {
                                field.mask(cellAndLandMaskBehavior.apply({}, arguments), options);
                            }
                        };
                    $("#telefone").mask(cellAndLandMaskBehavior, options);
                });
            }
        </script>


    </jsp:body>
</t:template>