<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Ajouter un adhérent"/>
</jsp:include>

<SCRIPT language="Javascript" type="text/javascript">
    <
    script
    type = "text/javascript"
    src = "js/foncControle.js" ></script>

<body>
<jsp:include page="navbar.jsp">
    <jsp:param name="active" value="addAdherent"/>
</jsp:include>

<br>
<br>

<div class="container">
    <form:form method="POST" action="insertAdherent" modelAttribute="adherent">
        <div class="form-group">
            <form:label path="nomAdherent">Nom de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="nomAdherent" id="nom" placeholder="Nom adhérent"/>
        </div>
        <div class="form-group">
            <form:label path="prenomAdherent">Prenom de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="prenomAdherent" id="prenom"
                        placeholder="Prénom adhérent"/>
        </div>
        <div class="form-group">
            <form:label path="villeAdherent">Ville de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="villeAdherent" id="ville" placeholder="Ville adhérent"/>
        </div>
        <button type="submit" class="btn btn-default">Ajouter</button>
    </form:form>

</div>
</body>
</html>