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



    <form:form action="saveRezerwacje" modelAttribute="daneosobowe" method="get">

        <form:hidden path="id_dane_osobowe"></form:hidden>
        <c:set value="${test1}" var="test"/>
        <c:set value="${listabiletow}" var="miejList" />
        </td>
        <input type="hidden" name="test" value="${test1}">
        <c:forEach items="${listabiletow}" var="asd">



            <input type="hidden" name="miejList" value="${asd}"  />


        </c:forEach>

        <tr>
            <td> <h1>Film</h1></td>
        </tr>
        <tr>
            <td><label>Tytuł: </label></td>
            <td><form:input path="imie" name="data"/> </td>
        </tr>
        <tr>
            <td><label>Gatunek </label></td>
            <td><form:input path="nazwisko" name="gatunek"/> </td>
        </tr>
        <tr>
            <td><label>Gatunek </label></td>
            <td><form:input path="data_urodzenia" name="gatunek"/> </td>
        </tr>
        <tr>
            <td><label>Gatunek </label></td>
            <td><form:input path="email" name="gatunek"/> </td>
        </tr>
        <tr>
            <td><label>Gatunek </label></td>
            <td><form:input path="numer" name="gatunek"/> </td>
        </tr>

            <td><label> </label></td>
            <td><input type="submit" value="Zapisz" class="save" /> </td>
        </tr>





        </tbody>



        </table>


    </form:form>


    <div style="clear:both" > </div>

    <p>

        <a href="${pageContext.request.contextPath}/showSeans"> Wroc do listy</a>


    </p>




</div>






</div>







</body>




</html>