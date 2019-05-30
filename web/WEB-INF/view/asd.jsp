<%--
  Created by IntelliJ IDEA.
  User: Maciej
  Date: 2019-05-24
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>


<html>

<head>
    <title>Title</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style3.css" />
</head>
<body>



    <div id="wrapper">
    <div id="header">
        <h2>CRUD - KINO</h2>
    </div>
    </div>
    <div id="container">

        <div id="content">


            <input type="button" value="Dodaj Film"
                   onclick="window.location.href='showFormForAddTableFilm'; return false;"
                   class="add-button"
            />

            <table>
                <tr>
                    <th>id_filmu</th>
                    <th>Tytuł</th>
                    <th>Czas Trwania</th>
                    <th> Gatunek</th>
                    <th>Reżyser</th>
                    <th>Seans</th>

                    <th> </th>
                </tr>

                <c:forEach var="temp" items="${film}">
                    <c:url var="updateLinkSala" value="/showFormForUpdateSala">
                        <c:param name="id_filmu" value="${temp.id_filmu}" />
                        <c:param name="tytul" value="${temp.tytul}" />
                        <c:param name="czas_trwania" value="${temp.czas_trwania}" />
                    </c:url>
                    <c:url var="deleteFilm" value="/deleteFilm">
                        <c:param name="id_filmu" value="${temp.id_filmu}" />
                        <c:param name="tytul" value="${temp.tytul}" />
                        <c:param name="czas_trwania" value="${temp.czas_trwania}" />
                    </c:url>

                    <tr>


                        <td>${temp.id_filmu}</td>
                        <td>${temp.tytul}</td>
                        <td>${temp.czas_trwania}</td>
                        <td>${temp.gatunek}</td>
                        <td>${temp.rezyser}</td>
                        <td>
                            <c:forEach items="${temp.seanss}" var="ses" >
                            ${ses.data}
                        </c:forEach>
                        </td>


                        <td>
                            <a href="${updateLinkSala}">Update</a>
                            |
                            <a href="${deleteFilm}"
                               onclick="if (!(confirm('Czy na pewno chcesz usunąć ten film?'))) return false">Delete</a>

                        </td>

                    </tr>
                </c:forEach>
            </table>
            <br> <br>



            <input type="button" value="Add Customer"
                   onclick="window.location.href='showFormForAdd'; return false;"
                   class="add-button"/>


            <br><br><br>
            <table>
                <tr>
                    <th>id_seansu</th>
                    <th>data</th>
                    <th>id_Sali</th>
                    <th>wolnemiejsca</th>
                    <th>filmy</th>
                    <th> </th>
                </tr>
                <c:forEach var="tempClient" items="${seans}">
                    <c:url var="updateLink" value="showFormForUpdate">
                        <c:param name="id_seansu" value="${tempClient.id_seansu}" />
                        <c:param name="tet" value="${tempClient.wolnemiejsca}" />
                    </c:url>

                    <c:url var="deleteLink" value="/delete">
                        <c:param name="id_seansu" value="${tempClient.id_seansu}" />
                    </c:url>
                    <c:url var="viewMovieLink" value="/view">
                        <c:param name="id_seansu" value="${tempClient.id_seansu}" />
                    </c:url>



                    <tr>


                        <td>${tempClient.id_seansu}</td>
                        <td>${tempClient.data}</td>
                        <td>${tempClient.sala.id_sali}</td>
                        <td>${tempClient.wolnemiejsca}</td>
                        <td>${tempClient.film.tytul}</td>
                        <td>
                            <a href="${updateLink}">Update</a>
                            |
                            <a href="${deleteLink}"
                               onclick="if (!(confirm('Czy na pewno chcesz usunąć ten seans?'))) return false">Delete</a>
                            |
                            <a href="${viewMovieLink}"> Filmy </a>
                        </td>

                    </tr>
                </c:forEach>

            </table>


<br><br>


            <input type="button" value="Dodaj Rezerwacje"
                   onclick="window.location.href='showFormForAddRezerwacje'; return false;"
                   class="add-button"
            />

            <table>
                <tr>
                    <th>id_rezerwacji</th>
                    <th>liczbamiejsc</th>
                    <th>id_seansu</th>

                    <th> </th>
                </tr>
                <c:forEach var="temp" items="${rezerwacje}">

                    <tr>


                        <td>${temp.id_rezerwacje}</td>
                        <td>${temp.liczbamiejsc}</td>
                        <td>${temp.seans.id_seansu}</td>


                        <td>
                            <a href="${updateLink}">Update</a>
                            |
                            <a href="${deleteLink}"
                               onclick="if (!(confirm('Czy na pewno chcesz usunąć ten seans?'))) return false">Delete</a>
                            |
                            <a href="${viewMovieLink}"> Filmy </a>
                        </td>

                    </tr>
                </c:forEach>


            </table>
            <br> <br>
            <input type="button" value="Dodaj Sale"
                   onclick="window.location.href='showFormForAddSala'; return false;"
                   class="add-button"
            />

            <table>
                <tr>
                    <th>id_sali</th>
                    <th>miejsca</th>
                    <th>nazwa</th>

                    <th> </th>
                </tr>
                <c:forEach var="temp" items="${sala}">
                    <c:url var="updateLinkSala" value="/showFormForUpdateSala">
                        <c:param name="id_sali" value="${temp.id_sali}" />
                        <c:param name="nazwa" value="${temp.nazwa}" />
                        <c:param name="miejsca" value="${temp.miejsca}" />
                    </c:url>
                    <c:url var="deleteSala" value="/deleteSala">
                        <c:param name="id_sali" value="${temp.id_sali}" />

                    </c:url>
                    <tr>


                        <td>${temp.id_sali}</td>
                        <td>${temp.miejsca}</td>
                        <td>${temp.nazwa}</td>


                        <td>
                            <a href="${updateLinkSala}">Update</a>
                            |
                            <a href="${deleteSala}"
                               onclick="if (!(confirm('Czy na pewno chcesz usunąć ten seans?'))) return false">Delete</a>

                        </td>

                    </tr>
                </c:forEach>

            </table>
            <input type="button" value="Test"
                   onclick="window.location.href='test'; return false;"
                   class="add-button"
            />






            <input type="button" value="Test"
                   onclick="window.location.href='strona'; return false;"
                   class="add-button"
            />


            <a href="${pageContext.request.contextPath}/strona?dzienid=1" ><input  type="button" value="dzien" > </a>





        </div>
    </div>


</body>
</html>
