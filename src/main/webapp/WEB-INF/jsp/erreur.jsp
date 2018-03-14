<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <script>
        function Chargement()
        {
            var obj = document.getElementById("id_erreur");
            if (obj.value!='')
                alert('Erreur signalée  : "'+obj.value+"'");
        }
    </script>
    <link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gestion des erreurs</title>
</head>
<body onLoad="Chargement();" >>
<input type ="hidden" name="uneErreur"  value="${MesErreurs}"  id ="id_erreur" >
<H1>  Une erreur est survenue</H1>
&nbsp;&nbsp;
<p><a href="index.jsp">Retour à la page principale</a></p>
</body>
</html>