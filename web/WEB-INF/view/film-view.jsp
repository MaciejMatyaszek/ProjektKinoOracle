<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>

<html>

<head>
    <title>List Customers</title>

    <!-- reference our style sheet -->

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style3.css" />

</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <!-- put new button: Add Customer -->


        <table>
            <tr>
                <th>id_filmu</th>
                <th>tytul</th>
                <th>gatunek</th>
                <th>opis</th>
                <th>wymaganywiek</th>
                <th>czastrwania</th>
                <th>id_seansu</th>
            </tr>


            <c:forEach var="tempClient" items="${film}">

            <c:url var="updateLink" value="showFormForUpdateFilm">
                <c:param name="id_filmu" value="${tempClient.id_filmu}" />

            </c:url>

                <c:url var="deleteLink" value="/deleteFilm">
                    <c:param name="id_filmu" value="${tempClient.id_filmu}" />
                    <c:param name="id_seansu" value="${tempClient.seans.id_seansu}"/>
                </c:url>
                <c:url var="saveFilmLink" value="/saveFilm">
                    <c:param name="id_filmu" value="${tempClient.id_filmu}" />
                    <c:param name="id_seansu" value="${tempClient.seans.id_seansu}"/>
                </c:url>
                <c:url var="saveAddFilmLink" value="/showFormForAddFilm">
                    <c:param name="id_filmu" value="${tempClient.id_filmu}" />

                </c:url>
                <tr>


                    <td>${tempClient.id_filmu}</td>
                    <td>${tempClient.tytul}</td>
                    <td>${tempClient.gatunek}</td>
                    <td>${tempClient.opis}</td>
                    <td>${tempClient.wymaganyWiek}</td>
                    <td>${tempClient.czas_trwania}</td>
                    <td>${tempClient.seans.id_seansu}</td>
                    <td></td>


                    <td>
                        <a href="${saveAddFilmLink}">Dodaj</a>
                        <a href="${updateLink}">Update</a>
                        |
                        <a href="${deleteLink}"
                           onclick="if (!(confirm('Czy na pewno chcesz usunąć ten film?'))) return false">Delete</a>
                        |

                    </td>


                </tr>
            </c:forEach>

        </table>

    </div>

</div>


</body>

</html>
