<%--
  Created by IntelliJ IDEA.
  User: tais
  Date: 27/03/2022
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Biblioteca">
    <jsp:body>


        <h1 class="text-center font-weight-bold mt-5">Lista de Livros</h1>
        <c:if test="${empty books}">
           <h3 class="empty_books"> Não há livros cadastrados </h3>
        </c:if>

        <c:if test="${not empty book}">
            <div class="table-responsive">
                <table class="table" style="background-color: #d5e8e4">
                    <thead class="thead-dark text-center">
                    <tr>
                        <th>titulo</th>
                        <th>editora</th>
                        <th>ano</th>
                        <th>Livros em Estoque</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${not empty book}">
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.title}</td>
                                <td>${book.publishing_company}</td>
                                <td> ${book.year}</td>
                                <td>${book.qtd}</td>
                            </tr>
                        </c:forEach>

                    </c:if>
                    </tbody>
                </table>
            </div>
        </c:if>
    </jsp:body>
</t:template>