<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Affichage de tous les adhérents</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container">
<h2>Tableau des Adhérents</h2>
<table class="table table-hover">
    <thead>
    <tr>
        <th>Numero</th>
        <th>Nom</th>
        <th>Prénom</th>
        <th>Ville</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${adherents}" var="adherent">
        <tr>
            <td>${adherent.idAdherent}</td>
            <td>${adherent.nomAdherent}</td>
            <td>${adherent.prenomAdherent}</td>
            <td>${adherent.villeAdherent}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>

</body>
</html>