<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maciej
  Date: 2019-05-25
  Time: 01:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<html lang="pl">

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

                    <a   href="${pageContext.request.contextPath}/strona?dzienid=0" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/cinema.png" width="10%" height="5%"  hspace="30" >Repertuar </a>
                    <a    href="${pageContext.request.contextPath}/cennik" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/dolar.png" width="10%" height="5%" hspace="30" >Cennik </a>

                    <a    href=""${pageContext.request.contextPath}/kontakt" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/phone.png" width="10%" height="5%" hspace="30" >Kontakt </a>



                </div>

            </div>
        </section>


    </header>







    <div class="row">

        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/img/Avengers.jpg" width="100%" height="100%" ></div>
                <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/img/Shazam.jpg" width="100%" height="100%" ></div>
                <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/img/dumbo.jpg" width="100%" height="100%" ></div>
                <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/img/avengers4.jpg"width="100%" height="100%" ></div>
                <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/img/Hellboy.jpg"width="100%" height="100%" ></div>
                <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/img/przemytnik.jpg" width="100%" height="100%" ></div>
                <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/img/Praziomek.jpg" width="100%" height="100%" ></div>

            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>

        </div>
        <div class="row">



        </div>


        <!-- Swiper JS -->


        <!-- Initialize Swiper -->
        <script>
            var swiper = new Swiper('.swiper-container', {
                slidesPerView: 4 ,
                spaceBetween: 30,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
            });
        </script>


    </div>
    <a id="rezerwacje"></a>
    <div class="row PrzyskDzien " >
            <div class="Dni col-12 ">
                <script type="text/javascript">
                    jakiDzien()
                </script>


        </div>
    </div>
    <div class="">
 <c:forEach items="${gotowa}" var="seanse" >
    <div class=" row flex-container ">
        <div class="obrazkFilm">

            <img  class="obrazy" src="${pageContext.request.contextPath}/resources/img/${seanse.tytul}.jpg"  height=70% width=500px  alt="Avangers"  >
        </div>
    <div class="opis">
        <div class="opisFilm">
            <h3> ${seanse.tytul}</h3>
            <p>${seanse.opis}</p>
            <h3> Seanse: </h3>
        </div>
        <div class="SeansFilm">

            <c:forEach items="${seanse.seanss}" var="godziny">
                <a href="${pageContext.request.contextPath}/rezerwacje?idseansu=${godziny.id_seansu}&idfilmu=${godziny.film.id_filmu}" > <input   type="button" value="${godziny.godzina}" style="border:outset 2px white;border-radius: 0;font-size: 22px;"/></a>
            </c:forEach>
        </div>

    </div>


    </div>

        <%--<div class="col-2">--%>
        <%--</div>--%>

            <%--<div class="col-8 Seans">--%>
                <%----%>
                <%--<img  class="obrazy" src="${pageContext.request.contextPath}/resources/img/${seanse.tytul}.jpg"  height=70% width=500px  alt="Avangers"  >--%>



            <%--<div class="" >--%>
                <%--<div class="Seans2">--%>
                    <%--<h3> ${seanse.tytul}</h3>--%>
                    <%--<p>${seanse.opis}</p>--%>
                    <%--<h3> Seanse: </h3>--%>
                <%--</div>--%>

                    <%--<div class="klasa">--%>
                    <%--<c:forEach items="${seanse.seanss}" var="godziny">--%>
                        <%--<div><a href="${pageContext.request.contextPath}/rezerwacje?idseansu=${godziny.id_seansu}&idfilmu=${godziny.film.id_filmu}" > <input  type="button" value="${godziny.godzina}" ></a></div>--%>
                    <%--</c:forEach>--%>




                    <%--</div>--%>
            <%--</div>--%>


        <%--</div>--%>
        <%--<div class="col-2">--%>
    <%--</div>--%>


 </c:forEach>
    </div>


    <div class="stopka row">

        <div class="col-12 ">
            <p>Wszystkie prawa zastrzeżone &copy; 2019 Maciej Matyaszek</p>

        </div>

    </div>
</div>



</body>

</html>