<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Ajouter un adhérent"/>
</jsp:include>

<SCRIPT language="Javascript" type="text/javascript">
    <
    script
    type = "text/javascript"
    src = "js/foncControle.js" ></script>
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


<body>
<jsp:include page="navbar.jsp">
    <jsp:param name="active" value="addAdherent.jsp"/>
</jsp:include>

<br>
<br>

<div class="container">
    <form:form method="POST" action="insertAdherent" modelAttribute="adherent">
        <div class="form-group">
            <form:label path="nomAdherent">Nom de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="nomAdherent" id="nom" placeholder="Nom Adh�rent"/>
        </div>
        <div class="form-group">
            <form:label path="prenomAdherent">Prenom de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="prenomAdherent" id="prenom"
                        placeholder="Pr�nom Adh�rent"/>
        </div>
        <div class="form-group">
            <form:label path="villeAdherent">Ville de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="villeAdherent" id="ville" placeholder="Ville Adh�rent"/>
        </div>
        <button type="submit" class="btn btn-default">Ajouter</button>
    </form:form>

</div>
</body>
</html>