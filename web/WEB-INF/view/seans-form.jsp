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

        <form:form action="saveSeans" modelAttribute="seans" method="POST">

            <form:hidden path="id_seansu" />

            <table>
                <table>
                    <tr>
                        <td><label>Data: </label></td>

                        <td><form:input path="data" name="data"/> </td>
                    </tr>
                    <tr>
                        <td><label>Godzina: </label></td>

                        <td><form:input path="godzina" name="godzina"/> </td>
                    </tr>

                    <tr>

                        <td><label>Film: </label></td>
                        <td>
                            <select  name="tytuly" >
                                <c:forEach items="${tytuly}" var="tyt">
                                    <option selected="selected" value="${tyt}">${tyt}</option>
                                </c:forEach>
                            </select>

                        </td>
                    </tr>
                    <tr>
                        <td><label>Sala: </label></td>
                        <td>

                                <select  name="test" >
                                    <c:forEach items="${nazwa}" var="element">
                                        <option selected="selected" value="${element}">
                                            ${element}
                                        </option>
                                    </c:forEach>
                                    </select>
                        </td>
                    </tr>


                    </tr>

                    <td><label> </label></td>
                    <td><input type="submit" value="Zapisz" class="save" /> </td>
                    </tr>
                </table>
        <div style="clear:both" > </div>

        <p>

            <a href="${pageContext.request.contextPath}/showSeans"> Wroc do listy</a>


        </p>











    </form:form>


</body>





</html>