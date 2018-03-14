<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ajouter un adhérent</title>
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
    <form:form method="POST" action="insertAdherent" modelAttribute="adherent">
        <div class="form-group">
            <form:label path="nomAdherent">Nom de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="nomAdherent" id="nom" placeholder="Nom Adhérent"/>
        </div>
        <div class="form-group">
            <form:label path="prenomAdherent">Prenom de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="prenomAdherent" id="prenom"
                        placeholder="Prénom Adhérent"/>
        </div>
        <div class="form-group">
            <form:label path="villeAdherent">Ville de l'adherent :</form:label>
            <form:input class="form-control" type="text" path="villeAdherent" id="ville" placeholder="Ville Adhérent"/>
        </div>
        <button type="submit" class="btn btn-default">Ajouter</button>
    </form:form>

</div>
</body>
</html>