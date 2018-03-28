<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Catalogue"/>
</jsp:include>

<body>

<jsp:include page="navbar.jsp">
    <jsp:param name="active" value="catalogue.jsp"/>
</jsp:include>

<div class="container">
    <h2>Catalogue des Œuvres</h2>
    <table class="table table-hover table-stripped">
        <thead>
        <tr>
            <th>Titre</th>
            <th>État</th>
            <th>Prix</th>
            <th>Nom propriétaire</th>
            <th>Prénom propriétaire</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${oeuvres}" var="oeuvre">
            <tr>
                <td>${oeuvre.titreOeuvrevente}</td>
                <td>${oeuvre.etatOeuvrevente}</td>
                <td>${oeuvre.prixOeuvrevente}€</td>
                <td>${oeuvre.proprietaire.nomProprietaire}</td>
                <td>${oeuvre.proprietaire.prenomProprietaire}</td>
                <td>
                    <a href="#" class="btn btn-primary" role="button">Modifier</a>
                    <c:choose>
                        <c:when test="${oeuvre.etatOeuvrevente == 'L'}">
                            <a href="/bookOeuvre?id=${oeuvre.idOeuvrevente}" class="btn btn-success active" role="button">Réserver</a>
                        </c:when>
                        <c:otherwise>
                            <a href="#" class="btn disabled" role="button">Réserver</a>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
