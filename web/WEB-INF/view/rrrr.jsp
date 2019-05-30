
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maciej
  Date: 2019-05-25
  Time: 01:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Kino</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style18.css" type="text/css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.js"></script>

    <script src="js/swiper.min.js"></script>
    <SCRIPT LANGUAGE= "JavaScript" type= "text/javascript">

        var timerID = null
        function jakiDzien()
        {
            var data = new Date();
            dzien = data.getDay();
            var index = 0;
            var b= 0;

            weekday = new Array('Niedziela', 'Poniedziałek', 'Wtorek', 'Środa', 'Czwartek', 'Piątek', 'Sobota');
            while(index<7){
                if(dzien==7){
                    dzien=0;
                }

                document.write("<a href=\"${pageContext.request.contextPath}/strona?dzienid="+b+"\#rezerwacje\" > ");
                document.write("<input class=\"przycisk\" type=\"button\" value="+weekday[dzien]+" > ");
                document.write("</a>")

                dzien++;
                b++;
                index++;
            }

        }
        // Koniec kodu JavaScript -->
    </SCRIPT>


    <style>
        input[type=button], input[type=submit], input[type=reset] {

            display: inline-block;
            font-size: 15px;
            cursor: pointer;
            width: 120px;
            margin: 0 4px 0 4px;
            text-decoration: none;
            outline: none;
            color: #fff;
            background: rgba(0,0,0,0) linear-gradient(to top,#050505 0%,#222 100%) repeat scroll 0 0;
            border: none;
            border-radius: 15px;

        }

    </style>
</head>


<body>
<div class="container-fluid">
    <header>
        <div class="container-fluid headerBackground text-center">


            <div class="row" >
                <div class="abc col-12">
                    <div class="headerText">

                        <h1 >Kino Fenix</h1>
                    </div>
                    <div class="Fenix">
                        <img src="${pageContext.request.contextPath}/resources/img/Fenixlogi.png"  >
                    </div>
                </div>

            </div>
        </div>
        <section>
            <div class="row">
                <div class="asd col-12 align-self-center">

                    <a   href="index.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/cinema.png" width="10%" height="5%"  hspace="30" >Repertuar </a>
                    <a    href="cennik.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/dolar.png" width="10%" height="5%" hspace="30" >Cennik </a>

                    <a    href="kontakt.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/phone.png" width="10%" height="5%" hspace="30" >Kontakt </a>



                </div>

            </div>
        </section>


    </header>



    <div class="container-fluid">
    <header>
        <div class="container-fluid headerBackground text-center">


            <div class="row" >
                <div class="abc col-12">
                    <div class="headerText">

                        <h1 >Kino Fenix</h1>
                    </div>
                    <div class="Fenix">
                        <img src="${pageContext.request.contextPath}/resources/img/Fenixlogi.png"  >
                    </div>
                </div>

            </div>
        </div>
        <section>
            <div class="row">
                <div class="asd col-12 align-self-center">

                    <a   href="index.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/cinema.png" width="10%" height="5%"  hspace="30" >Repertuar </a>
                    <a    href="cennik.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/dolar.png" width="10%" height="5%" hspace="30" >Cennik </a>

                    <a    href="kontakt.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/phone.png" width="10%" height="5%" hspace="30" >Kontakt </a>



                </div>

            </div>
        </section>


    </header>
    <div class="content">


        <div class="row">

            <div class="col-2">


            </div>
            <div class="login col-8">


                <form:form action="saveStrona" modelAttribute="daneosoowe" method="post" name="dane_osobowe">

                    <form:hidden path="id_dane_osobowe"></form:hidden>
                    <table>

                        <tr>



                            <td><label>Imie: </label></td>
                            <td><form:input path="imie" name="data"/> </td>
                        </tr>
                        <tr>
                            <td><label>Nazwisko:  </label></td>
                            <td><form:input path="nazwisko" name="gatunek"/> </td>
                        </tr>
                        <tr>
                            <td><label>Data urodzenia: </label></td>
                            <td><form:input path="data_urodzenia" name="gatunek"/> </td>
                        </tr>
                        <tr>
                            <td><label>Email </label></td>
                            <td><form:input path="email" name="gatunek"/> </td>
                        </tr>
                        <tr>
                            <td><label>Numer telefonu: </label></td>
                            <td><form:input path="numer" name="numer"/> </td>
                        </tr>

                        <c:forEach items="${Miejsca}" var="a">
                            <tr>
                                <td>Miejsce: ${a}</td>
                                <td> <select name="bilet" >
                                    <option value="Normalny">Normalny 24,00</option>
                                    <option value="Ulgowy">Ulgowy 20,00</option>
                                    <option value="Junior/Senior">Junior/Senior  20,00</option>
                                </select>
                                </td>


                            </tr>
                        </c:forEach>

                        <td><label> </label></td>
                        <td><input type="submit" value="Zapisz" class="save" /> </td>
                        </tr>





                        </tbody>



                    </table>

                    <input type="hidden" name="idseansu" value="${seans.id_seansu}" />

                    <c:forEach items="${Miejsca}" var="miejsce">
                        <input type="hidden" name="miejLista" value="${miejsce}">
                    </c:forEach>

                </form:form>


                </form>

                <br><br>








            </div>
            <div class="col-2">

            </div>
        </div>


    </div>








</div>




    <div class="stopka row">

        <div class="col-12 ">
            <p>Wszystkie prawa zastrzeżone &copy; 2019 Maciej Matyaszek</p>

        </div>

    </div>
</div>


</body>

</html>