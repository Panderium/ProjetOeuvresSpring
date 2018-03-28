<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!-- Tester valeur du param "active", actuellement contient le nom de la page -->

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand">Médiathèque de Polytech Lyon</a>
        </div>
        <ul class="nav navbar-nav">
            <li <c:if test="${param.active == 'home'}">class="active"</c:if> ><a href="/">Home</a></li>
            <li <c:if test="${param.active == 'addAdherent'}">class="active"</c:if> ><a href="/addAdherent" >Ajout un adhérent</a></li>
            <li <c:if test="${param.active == 'listAdherent'}">class="active"</c:if> ><a href="/listAdherent">Lister les adhérents</a></li>
            <li <c:if test="${param.active == 'addOeuvre'}">class="active"</c:if> ><a href="/addOeuvre">Ajouter une oeuvre</a></li>
            <li <c:if test="${param.active == 'catalogue'}">class="active"</c:if> ><a href="/catalogue">Consulter le catalogue</a></li>
            <li <c:if test="${param.active == 'confirm'}">class="active"</c:if> ><a href="#">Confirmer les réservations</a></li>
            <li <c:if test="${param.active == 'quit'}">class="active"</c:if> ><a href="#">Quitter</a></li>
        </ul>
    </div>
</nav>