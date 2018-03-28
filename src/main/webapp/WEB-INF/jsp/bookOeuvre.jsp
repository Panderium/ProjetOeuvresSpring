<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Alexis
  Date: 26/03/2018
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Réservation d'une oeuvre</title>
</head>
<SCRIPT language="Javascript" type="text/javascript">
    <
    script
    type = "text/javascript"
    src = "js/foncControle.js" ></script>
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<body>
<jsp:include page="navbar.jsp"/>

<br>
<br>

<div class="container">
    <form:form method="POST" action="/doBooking?id=${oeuvre.idOeuvrevente}" modelAttribute="reservation">
        <div class="form-group">
            <label>Titre de l'oeuvre :</label>
            <input class="form-control" type="text" id="titre"
                        placeholder="${oeuvre.titreOeuvrevente}" disabled="true"/>
        </div>
        <div class="form-group">
            <label >Prix de l'oeuvre :</label>
            <input class="form-control" type="text" id="prix"
                        placeholder="${oeuvre.prixOeuvrevente}" disabled="true"/>
        </div>
        <div class="form-group">
            <form:label path="date">Date de réservation :</form:label>
            <form:input class="form-control" type="date" path="date" id="date"
                        placeholder="Date de réservation"/>
        </div>
        <div class="form-group">
            <form:label path="idAdherent">Adhérent :</form:label>
            <select class="form-control" id="idAdherent">
                <c:forEach items="${adherents}" var="adherent">
                    <option value="${adherent.idAdherent}">${adherent.prenomAdherent} ${adherent.nomAdherent}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-default">Réserver</button>
    </form:form>

</div>

</body>
</html>
