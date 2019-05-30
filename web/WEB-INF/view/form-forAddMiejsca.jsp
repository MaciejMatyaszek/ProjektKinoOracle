<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Dodaj rezerwacje</title>
    <link href="${pageContext.request.contextPath}/resources/css/freelancer.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <link href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap4.min.css" rel="stylesheet">

    <script type="text/javascript">
        function hiddenDisabled() {
            if (document.getElementById("edit").value == 0) {
                document.getElementById("edit").disabled = true;
                document.getElementById("edit").hidden = true;
                document.getElementById("add").selected=true;
                document.getElementById("editClient").disabled = true;
                document.getElementById("editClient").hidden = true;
                document.getElementById("addClient").selected=true;

            }else{
                document.getElementById("edit").selected=true;
                document.getElementById("editClient").selected=true;
                document.getElementById("butt").value="Zapisz";
            }



        }

    </script>

</head >
<body class="bg-gradient-primary" onload="hiddenDisabled()">
<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav" style="background-color: #343a40 !important">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#">Dodaj rezerwacje</a>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/showReservations?getId=${pickHotelId}">Wróć
                    </a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<br>
<div class="container">
    <div class="card o-hidden border-0 shadow-lg my-5" >
        <div class="card-body p-0" >
            <div class="row">
                <div class="col-sm-3">

                </div>
                <div class="col-sm-6">
                    <br>
                    <div class="text-center">

                        <font class="text-gray-900 mb-4" size="8">Dodaj Bilet</font>
                    </div>
                    <br>
        <form:form   action="saveMiejsca">

                        <form class="user">
                            <div class="form-group row">

                                <div class="col-sm-2">
                                </div>
                                <div class="col-sm-8">
                                <p> Rzad/Fotel: </p>
                                    <select name="idrzadfotel" >
                                        <c:forEach items="${rzad_fotel}" var="a">
                                            <option value="${a.rzad_fotel_id}" > Rząd: ${a.rzedy.numer} Fotel: ${a.fotele.numer}</option>
                                        </c:forEach>

                                    </select>

                                </div>

                                <div class="col-sm-2">
                                </div>
                            </div>

                            <div class="form-group row">

                                <div class="col-sm-2">
                                </div>
                                <div class="col-sm-8">


                                    <select name="idseansu" >
                                        <c:forEach var="b" items="${seans}">
                                            <option value="${b.id_seansu}" >${b.data} ${b.godzina} ${b.film.tytul}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-sm-2">
                                </div>
                            </div>
                            <div class="form-group row">

                                <div class="col-sm-2">
                                </div>
                                <div class="col-sm-8">


                                    <select name="idsali" >
                                        <c:forEach var="d" items="${sala}">
                                            <option value="${d.id_sali}" >${d.id_sali}} ${d.nazwa} </option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-sm-2">
                                </div>
                            </div>

                            <div class="form-group row">

                                <div class="col-sm-2">
                                </div>
                                <div class="col-sm-8">
                                    <select name="status" >

                                            <option value="1">Zajęte</option>
                                            <option value="2">Wolne</option>

                                    </select>
                                </div>

                                <div class="col-sm-2">
                                </div>
                            </div>




                            <div class="form-group row">

                                <div class="col-sm-1">
                                </div>
                                <div class="col-sm-10">
                                    <hr>
                                </div>
                                <div class="col-sm-1">
                                </div>
                            </div>
                            <br>

                            <div class="form-group row">

                                <div class="col-sm-2">
                                </div>
                                <div class="col-sm-8">
                                    <input id="butt"  type="submit" value="Dodaj Bilet" class="btn btn-success btn-user btn-block"/>
                                    <a href="${pageContext.request.contextPath}/showMiejsca" class="btn btn-secondary btn-user btn-block">
                                        Anuluj
                                    </a>
                                </div>
                                <div class="col-sm-2">
                                </div>
                            </div>


                            <br>

                        </form>
        </form:form>

                </div>
                <div class="col-sm-2">
                </div>
            </div>
        </div>
    </div>
</div>
<link href="${pageContext.request.contextPath}/resources/js/jquery.min.js" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/js/jquery.easing.min.js" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/freelancer.min.js"></script>
</body>
</html>