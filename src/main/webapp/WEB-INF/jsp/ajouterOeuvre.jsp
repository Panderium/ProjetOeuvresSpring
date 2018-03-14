<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ajouter une oeuvre</title>
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
    <form:form method="POST" action="/insertOeuvre" modelAttribute="oeuvre">
        <div class="form-group">
            <form:label path="titreOeuvrevente">Titre de l'oeuvre :</form:label>
            <form:input class="form-control" type="text" path="titreOeuvrevente" id="titre"
                        placeholder="Titre de l'oeuvre"/>
        </div>
        <div class="form-group">
            <form:label path="prixOeuvrevente">Prix de l'oeuvre :</form:label>
            <form:input class="form-control" type="text" path="prixOeuvrevente" id="prix"
                        placeholder="Prix de l'oeuvre"/>
        </div>
        <div class="form-group">
            <form:label path="Proprietaire">Proprietaire :</form:label>
            <select class="form-control" id="idProprietaire">
                <c:forEach items="${proprietaires}" var="proprietaire">
                    <option value="${proprietaire}">${proprietaire.prenomProprietaire} ${proprietaire.nomProprietaire}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-default">Ajouter</button>
    </form:form>

</div>
</body>
</html>