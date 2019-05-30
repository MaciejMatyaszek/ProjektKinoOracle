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


    <form:form action="updateSala" modelAttribute="sala" method="post">

        <form:hidden path="id_sali"></form:hidden>
        </td>

        <tr>
            <td> <h1>Sala</h1></td>
        </tr>
        <tr>
            <td><label>Nazwa: </label></td>
            <td><form:input path="nazwa" name="nazwa"/> </td>
        </tr>
        <tr>
            <td><label>Miejsca </label></td>
            <td><form:input path="miejsca" name="miejsca"/> </td>
        </tr>
        <tr>


        <tr>
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