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
        <h3>Seja bem-vind@ ${user}</h3>
        <h1 class="text-center font-weight-bold mt-5">Lista de Livros</h1>
        <c:if test="${empty books}">
            Nao há livros cadastrados
        </c:if>


        <c:forEach var="address" items="${books}">
            <p>${address}</p>
            <p>${address.id}</p>
            <p>${address.publishing_company}</p>
            <p>${address.year}</p>
            <p>${address.sinopse}</p>
        </c:forEach>
    </jsp:body>
</t:template>