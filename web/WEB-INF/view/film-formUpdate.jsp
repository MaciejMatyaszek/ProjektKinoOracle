<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>

<html lang="pl">
<head>
    <title>Save Seans</title>
    <meta charset="utf-8">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style3.css">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-seans.css">


    <title>Save Seans</title>

</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2> Seans dodawanie</h2>
    </div>
</div>

<div id="container">
    <h3> Save Seans</h3>





        <table>
        <tbody>


        <form:form action="updateFilm" modelAttribute="film" method="post">



            <form:hidden path="id_filmu" />



            </td>

            <tr>
                <td> <h1>Film</h1></td>
            </tr>
            <tr>
                <td><label>Tytuł: </label></td>
                <td><form:input path="tytul" name="data"/> </td>
            </tr>
            <tr>
                <td><label>Gatunek </label></td>
                <td><form:input path="gatunek" name="gatunek"/> </td>
            </tr>

            <tr>
                <td><label>Czas trwania: </label></td>
                <td><form:input path="czas_trwania" name="czas_trwania"/> </td>
            </tr>
            <tr>
                <td><label>Wymagany wiek: </label></td>
                <td><form:input path="wymaganyWiek" name="wymaganyWiek"/> </td>
            </tr>
            <tr>
                <td><label>Reżyser: </label></td>
                <td><form:input path="rezyser" name="rezyser"/> </td>
            </tr>
            <tr>
                <td><label>Opis: </label></td>
                <td><form:input path="opis" name="opis"/> </td>

            </tr>

            <tr>
                <td><label> </label></td>
                <input type="hidden" name="id_seansu" value="${seans.id_seansu}">
                <td><input type="submit" value="Zapisz" class="save" /> </td>
            </tr>





            </tbody>



            </table>


        


    <div style="clear:both" > </div>

    <p>

        <a href="http://localhost:8080/ProjektKinoOracle_war_exploded/view?id_seansu=${seansID.id_seansu}"> Wroc do listy</a>


        </form:form>
    </p>




</div>






</div>







</body>




</html>