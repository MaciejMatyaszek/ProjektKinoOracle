<%--
  Created by IntelliJ IDEA.
  User: Maciej
  Date: 2019-05-28
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>

        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">
            <title>SB Admin 2 - Tables</title>
            <link href="${pageContext.request.contextPath}/resources/css/all.min.css" rel="stylesheet" type="text/css">
            <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
            <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
            <link href="${pageContext.request.contextPath}/resources/css/freelancer.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap4.min.css" rel="stylesheet">
        </head>
<body id="page-top">
<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav" style="background-color: #343a40 !important">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Kino Fenix</a>
        <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="${pageContext.request.contextPath}/showSeans">Seans</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="${pageContext.request.contextPath}/showFilm">Film</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="${pageContext.request.contextPath}/showRezerwacje">Rezerwacje</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="${pageContext.request.contextPath}/showDaneOsobowe">Dane Osobowe</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="${pageContext.request.contextPath}/showSala">Sala</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="${pageContext.request.contextPath}/showBilety">Strona</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact</a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<br>
<br>
<br>
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">

                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>ID Biletu</th>
                        <th>Typ</th>
                        <th>Cena</th>


                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="sea" items="${miejsca}">
                        <tr>

                            <c:url var="deleteLink" value="/deleteMiejsca">
                                <c:param name="id_miejsca" value="${sea.id_miejsca}" />
                            </c:url>
                            <c:url var="showFormForAdd" value="/showFormForAddMiejsca">

                            </c:url>
                            <c:url var="showFormForUpdate" value="/showFormForAddMiejsca?idmiejsca=${sea.id_miejsca}" >
                                <c:param name="id_miejsca" value="${sea.id_miejsca}" />
                            </c:url>
                            <td>${sea.id_miejsca}</td>
                            <td>${sea.sala.id_sali}</td>
                            <td>${sea.seans.film.tytul}</td>
                            <td>${sea.status}</td>


                            <td>
                                <a class="btn btn-dark" href="${showFormForAdd}"  role="button"/>Add</a>
                                <a class="btn btn-facebook" href="${showFormForUpdate}"  role="button"/>Update</a>
                                <a  class="btn btn-success" href="${deleteLink}"
                                    onclick="if (!(confirm('Czy na pewno chcesz usunąć ten seans?'))) return false">Delete</a>
                            </td>

                        </tr>

                    </c:forEach>


                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/freelancer.min.js"></script>
</body>

</html>

