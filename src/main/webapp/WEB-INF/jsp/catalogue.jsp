<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: panderium
  Date: 07/03/18
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Catalogue</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container">
    <h2>Catalogue des Œuvres</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Titre</th>
            <th>État</th>
            <th>Prix</th>
            <th>Nom Propriétaire</th>
            <th>Prénom Propriétaire</th>
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
