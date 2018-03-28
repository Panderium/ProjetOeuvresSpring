<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Réservation d'une oeuvre"/>
</jsp:include>

<SCRIPT language="Javascript" type="text/javascript">
    <
    script
    type = "text/javascript"
    src = "js/foncControle.js" ></script>

<body>

<jsp:include page="navbar.jsp">
    <jsp:param name="active" value="bookOeuvre"/>
</jsp:include>

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
