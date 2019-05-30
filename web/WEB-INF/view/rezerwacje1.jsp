<%--
  Created by IntelliJ IDEA.
  User: Maciej
  Date: 2019-05-27
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%--
  Created by IntelliJ IDEA.
  User: Maciej
  Date: 2019-05-26
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>

        <html>

        <head>
            <title>Kino</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style19.css" type="text/css" />

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

                    weekday = new Array('Niedziela', 'Poniedziałek', 'Wtorek', 'Środa', 'Czwartek', 'Piątek', 'Sobota');
                    while(index<7){
                        if(dzien==7){
                            dzien=0;
                        }

                        document.write("<button  class=\"btn\" >"+weekday[dzien]+"</button>");
                        dzien++;

                        index++;
                    }

                }
                // Koniec kodu JavaScript -->
            </SCRIPT>
            <script>




            </script>



            <script>
                function myFunction(s){




                    var c=document.getElementById(s)
                    if(c.className=="fotel"){

                        c.className="fotel1";}
                    else {

                        c.className="fotel";
                    }





                }

            </script>


            <style>
                .sala{
                    background-color: white;
                    width: 728px;
                    height: 320px;
                }
                .w{
                    background-color: white;
                    width: 25px;
                    height: 25px;
                    float: left;
                    margin: 2px;
                }
                .m{
                    background-color: #09c332;
                    width: 25px;
                    height: 25px;
                    float: left;
                    margin: 2px;
                }
                .ekran{
                    width: 315px;
                    float: left;
                    height: 25px;
                    margin: 2px;
                    background-color: brown;
                    text-align: center;

                }
            </style>


            <script>
            function rezerwacje(){

            for (int i=0; i<${})


    }

    </script>
            <script>
                function myFunction2(){
                    var x = document.querySelectorAll('.fotel1');

                    var i;
                    for (i = 0; i < x.length; i++) {
                        x[i].style.backgroundColor = "red";
                    }

                    location.href="logowanie.html";
                }

            </script>

            <script type="text/javascript">
                function myFunction(s){


                    var tekst = 'in'+s;

                    var c=document.getElementById(s)
                    var d=document.getElementById(s)

                    if(c.className=="fotel"){

                        c.className="fotel1";
                        document.getElementById(tekst).disabled=false;
                    }
                    else{

                        c.className="fotel";
                        document.getElementById(tekst).disabled=true;
                    }





                }

            </script>

            <script type="text/javascript">
                function wypisz() {


                    <c:forEach items="${miejsca}" var="a" >
                    if ("${a.status}"=="0"){
                        var d=${a.id_miejsca}
                            document.write("<div  class=\"fotel\" id=${a.id_miejsca} onclick=\"myFunction(${a.id_miejsca})\"> <input name=\"miejList\" id=\"in${a.id_miejsca}\"    type=\"hidden\" value=\"${a.id_miejsca}\" disabled/>${a.id_miejsca}</div>")
                    }
                    else {
                        document.write('<div  class="fotel2" id="${a.id_miejsca}" > </div>');
                    }



                    </c:forEach>

                }



            </script>

            <script>
                function myFunction2(){
                    var x = document.querySelectorAll('.fotel1');

                    var i;
                    for (i = 0; i < x.length; i++) {
                        x[i].style.backgroundColor = "red";
                    }

                    location.href="logowanie.html";
                }

            </script>

        </head>

<body>
<form:form action="logowanie" >
<header>
    <div class="row" >
        <div class="container-fluid headerBackground text-center">




            <div class="abc col-12">
                <div class="headerText">

                    <h1 >Kino Fenix</h1>
                </div>
                <div class="Fenix">
                    <img src="${pageContext.request.contextPath}/resources/img/Fenixlogi.png"  width="20%" height="70%"  align="left"  >
                </div>
            </div>

        </div>

    </div>
</header>

<section>
    <div class="conteiner">
        <div class="row">
            <div class="asd col-12 align-self-center">
                <a   href="${pageContext.request.contextPath}/strona?dzienid=0" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/cinema.png" width="10%" height="5%"  hspace="30" >Repertuar </a>
                <a    href="${pageContext.request.contextPath}/cennik" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/dolar.png" width="10%" height="5%" hspace="30" >Cennik </a>

                <a    href=""${pageContext.request.contextPath}/kontakr" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/reso

            </div>

        </div>
</section>
<div class="tutajrez">
    <div class="row ">
        <div class="rezerw col-12">
            <h1> Rezerwacja miejsc </h1>
        </div>
    </div>
    <div class="row">

        <div class="col-2">
            <img  class="obrezekrez" src="${pageContext.request.contextPath}/resources/img/${filmy.tytul}.jpg"  width="100%" height="100%"  align="right"/>

        </div>
        <div class="flex-container col-8">



            <script>

                wypisz()
            </script>





        </div>

        <div class="col-2">

        </div>
    </div>
    <div class="row">
        <div class="col-2">
        </div>
        <div class="flex-container col-8">


            <div class="sala" >
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="ekran">Ekran </div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>


                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m"  id="1">1<input id="i1" type="hidden" value="1" disabled></div>
                <div class="m" id="2">2<input  id="i2" type="hidden" value="2" disabled></div>
                <div class="m" id="3" >3<input  id="i3" type="hidden" value="3" disabled></div>
                <div class="m" id="4">4<input  id="i4" type="hidden" value="4" disabled></div>
                <div class="m" id="5">5<input  id="i5" type="hidden" value="5" disabled></div>
                <div class="m" id="6">6<input  id="i6" type="hidden" value="6" disabled></div>
                <div class="m" id="7">7<input  id="i7" type="hidden" value="7" disabled></div>
                <div class="m" id="8">8<input  id="i8" type="hidden" value="8" disabled></div>
                <div class="m" id="9">9<input  id="i9" type="hidden" value="9" disabled></div>
                <div class="m" id="10">10<input  id="i10" type="hidden" value="10" disabled></div>
                <div class="m" id="11">11<input  id="i11" type="hidden" value="11" disabled></div>
                <div class="m" id="12">12<input  id="i12" type="hidden" value="12" disabled></div>
                <div class="m" id="13">13<input  id="i13" type="hidden" value="13" disabled></div>
                <div class="m" id="14">14<input  id="i14" type="hidden" value="14" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="15">15<input  id="i15" type="hidden" value="15" disabled></div>
                <div class="m" id="16">16<input  id="i16" type="hidden" value="16" disabled></div>
                <div class="m" id="17">17<input  id="i17" type="hidden" value="17" disabled></div>
                <div class="m" id="18">18<input  id="i18" type="hidden" value="18" disabled></div>
                <div class="m" id="19">19<input  id="i19" type="hidden" value="19" disabled></div>
                <div class="m" id="20">20<input  id="i20" type="hidden" value="20" disabled></div>
                <div class="m" id="21">21<input  id="i21" type="hidden" value="21" disabled></div>
                <div class="m" id="22">22<input  id="i22" type="hidden" value="22" disabled></div>
                <div class="m" id="23">23<input  id="i23" type="hidden" value="23" disabled></div>
                <div class="m" id="24">24<input  id="i24" type="hidden" value="24" disabled></div>
                <div class="m" id="25">25<input  id="i25" type="hidden" value="25" disabled></div>
                <div class="m" id="26">26<input  id="i26" type="hidden" value="26" disabled></div>
                <div class="m" id="27">27<input  id="i27" type="hidden" value="27" disabled></div>
                <div class="m" id="28">28<input  id="i28" type="hidden" value="28" disabled></div>
                <div class="m" id="29">29<input  id="i29" type="hidden" value="29" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="30">30<input  id="i30" type="hidden" value="30" disabled></div>
                <div class="m" id="31">31<input  id="i31" type="hidden" value="31" disabled></div>
                <div class="m" id="32">32<input  id="i32" type="hidden" value="32" disabled></div>
                <div class="m" id="33">33<input  id="i33" type="hidden" value="33" disabled></div>
                <div class="m" id="34">34<input  id="i34" type="hidden" value="34" disabled></div>
                <div class="m" id="35">35<input  id="i35" type="hidden" value="35" disabled></div>
                <div class="m" id="36">36<input  id="i36" type="hidden" value="36" disabled></div>
                <div class="m" id="37">37<input  id="i37" type="hidden" value="37" disabled></div>
                <div class="m" id="38">38<input  id="i38" type="hidden" value="38" disabled></div>
                <div class="m" id="39">39<input  id="i39" type="hidden" value="39" disabled></div>
                <div class="m" id="40">40<input  id="i40" type="hidden" value="40" disabled></div>
                <div class="m" id="41">41<input  id="i41" type="hidden" value="41" disabled></div>
                <div class="m" id="42">42<input  id="i42" type="hidden" value="42" disabled></div>
                <div class="m" id="43">43<input  id="i43" type="hidden" value="43" disabled></div>
                <div class="m" id="44">44<input  id="i44" type="hidden" value="44" disabled></div>
                <div class="m" id="45">45<input  id="i45" type="hidden" value="45" disabled></div>
                <div class="m" id="46">46<input  id="i46" type="hidden" value="46" disabled></div>
                <div class="m" id="47">47<input  id="i47" type="hidden" value="47" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="48">48<input  id="i48" type="hidden" value="48" disabled></div>
                <div class="m" id="49">49<input  id="i49" type="hidden" value="49" disabled></div>
                <div class="m" id="50">50<input  id="i50" type="hidden" value="50" disabled></div>
                <div class="m" id="51">51<input  id="i51" type="hidden" value="51" disabled></div>
                <div class="m" id="52">52<input  id="i52" type="hidden" value="52" disabled></div>
                <div class="m" id="53">53<input  id="i53" type="hidden" value="53" disabled></div>
                <div class="m" id="54">54<input  id="i54" type="hidden" value="54" disabled></div>
                <div class="m" id="55">55<input  id="i55" type="hidden" value="55" disabled></div>
                <div class="m" id="56">56<input  id="i56" type="hidden" value="56" disabled></div>
                <div class="m" id="57">57<input  id="i57" type="hidden" value="57" disabled></div>
                <div class="m" id="58">58<input  id="i58" type="hidden" value="58" disabled></div>
                <div class="m" id="59">59<input  id="i59" type="hidden" value="59" disabled></div>
                <div class="m" id="60">60<input  id="i60" type="hidden" value="60" disabled></div>
                <div class="m" id="61">61<input  id="i61" type="hidden" value="61" disabled></div>
                <div class="m" id="62">62<input  id="i62" type="hidden" value="62" disabled></div>
                <div class="m" id="63">63<input  id="i63" type="hidden" value="63" disabled></div>
                <div class="m" id="64">64<input  id="i64" type="hidden" value="64" disabled></div>
                <div class="m" id="65">65<input  id="i65" type="hidden" value="65" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="66">66<input  id="i66" type="hidden" value="66" disabled></div>
                <div class="m" id="67">67<input  id="i67" type="hidden" value="67" disabled></div>
                <div class="m" id="68">68<input  id="i68" type="hidden" value="68" disabled></div>
                <div class="m" id="69">69<input  id="i69" type="hidden" value="69" disabled></div>
                <div class="m" id="70">70<input  id="i70" type="hidden" value="70" disabled></div>
                <div class="m" id="71">71<input  id="i71" type="hidden" value="71" disabled></div>
                <div class="m" id="72">72<input  id="i72" type="hidden" value="72" disabled></div>
                <div class="m" id="73">73<input  id="i73" type="hidden" value="73" disabled></div>
                <div class="m" id="74">74<input  id="i74" type="hidden" value="74" disabled></div>
                <div class="m" id="75">75<input  id="i75" type="hidden" value="75" disabled></div>
                <div class="m" id="76">76<input  id="i76" type="hidden" value="76" disabled></div>
                <div class="m" id="77">77<input  id="i77" type="hidden" value="77" disabled></div>
                <div class="m" id="78">78<input  id="i78" type="hidden" value="78" disabled></div>
                <div class="m" id="79">79<input  id="i79" type="hidden" value="79" disabled></div>
                <div class="m" id="80">80<input  id="i80" type="hidden" value="80" disabled></div>
                <div class="m" id="81">81<input  id="i81" type="hidden" value="81" disabled></div>
                <div class="m" id="82">82<input  id="i82" type="hidden" value="82" disabled></div>
                <div class="m" id="83">83<input  id="i83" type="hidden" value="83" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="84">84<input  id="i84" type="hidden" value="84" disabled></div>
                <div class="m" id="85">85<input  id="i85" type="hidden" value="85" disabled></div>
                <div class="m" id="86">86<input  id="i86" type="hidden" value="86" disabled></div>
                <div class="m" id="87">87<input  id="i87" type="hidden" value="87" disabled></div>
                <div class="m" id="88">88<input  id="i88" type="hidden" value="88" disabled></div>
                <div class="m" id="89">89<input  id="i89" type="hidden" value="89" disabled></div>
                <div class="m" id="90">90<input  id="i90" type="hidden" value="90" disabled></div>
                <div class="m" id="91">91<input  id="i91" type="hidden" value="91" disabled></div>
                <div class="m" id="92">92<input  id="i92" type="hidden" value="92" disabled></div>
                <div class="m" id="93">93<input  id="i93" type="hidden" value="93" disabled></div>
                <div class="m" id="94">94<input  id="i94" type="hidden" value="94" disabled></div>
                <div class="m" id="95">95<input  id="i95" type="hidden" value="95" disabled></div>
                <div class="m" id="96">96<input  id="i96" type="hidden" value="96" disabled></div>
                <div class="m" id="97">97<input  id="i97" type="hidden" value="97" disabled></div>
                <div class="m" id="98">98<input  id="i98" type="hidden" value="98" disabled></div>
                <div class="m" id="99">99<input  id="i99" type="hidden" value="99" disabled></div>
                <div class="m" id="100">100<input  id="i100" type="hidden" value="100" disabled></div>
                <div class="m" id="101">101<input  id="i101" type="hidden" value="101" disabled></div>
                <div class="m" id="102">102<input  id="i102" type="hidden" value="102" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="103">103<input  id="i103" type="hidden" value="103" disabled></div>
                <div class="m" id="104">104<input  id="i104" type="hidden" value="104" disabled></div>
                <div class="m" id="105">105<input  id="i105" type="hidden" value="105" disabled></div>
                <div class="m" id="106">106<input  id="i106" type="hidden" value="106" disabled></div>
                <div class="m" id="107">107<input  id="i107" type="hidden" value="107" disabled></div>
                <div class="m" id="108">108<input  id="i108" type="hidden" value="108" disabled></div>
                <div class="m" id="109">109<input  id="i109" type="hidden" value="109" disabled></div>
                <div class="m" id="110">110<input  id="i110" type="hidden" value="110" disabled></div>
                <div class="m" id="111">111<input  id="i111" type="hidden" value="111" disabled></div>
                <div class="m" id="112">112<input  id="i112" type="hidden" value="112" disabled></div>
                <div class="m" id="113">113<input  id="i113" type="hidden" value="113" disabled></div>
                <div class="m" id="114">114<input  id="i114" type="hidden" value="114" disabled></div>
                <div class="m" id="115">115<input  id="i115" type="hidden" value="115" disabled></div>
                <div class="m" id="116">116<input  id="i116" type="hidden" value="116" disabled></div>
                <div class="m" id="117">117<input  id="i117" type="hidden" value="117" disabled></div>
                <div class="m" id="118">118<input  id="i118" type="hidden" value="118" disabled></div>
                <div class="m" id="119">119<input  id="i119" type="hidden" value="119" disabled></div>
                <div class="m" id="120">120<input  id="i120" type="hidden" value="120" disabled></div>
                <div class="m" id="121">121<input  id="i121" type="hidden" value="121" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="122">122<input  id="i122" type="hidden" value="122" disabled></div>
                <div class="m" id="123">123<input  id="i123" type="hidden" value="123" disabled></div>
                <div class="m" id="124">124<input  id="i124" type="hidden" value="124" disabled></div>
                <div class="m" id="125">125<input  id="i125" type="hidden" value="125" disabled></div>
                <div class="m" id="126">126<input  id="i126" type="hidden" value="126" disabled></div>
                <div class="m" id="127">127<input  id="i127" type="hidden" value="127" disabled></div>
                <div class="m" id="128">128<input  id="i128" type="hidden" value="128" disabled></div>
                <div class="m" id="129">129<input  id="i129" type="hidden" value="129" disabled></div>
                <div class="m" id="130">130<input  id="i130" type="hidden" value="130" disabled></div>
                <div class="m" id="131">131<input  id="i131" type="hidden" value="131" disabled></div>
                <div class="m" id="132">132<input  id="i132" type="hidden" value="132" disabled></div>
                <div class="m" id="133">133<input  id="i133" type="hidden" value="133" disabled></div>
                <div class="m" id="134">134<input  id="i134" type="hidden" value="134" disabled></div>
                <div class="m" id="135">135<input  id="i135" type="hidden" value="135" disabled></div>
                <div class="m" id="136">136<input  id="i136" type="hidden" value="136" disabled></div>
                <div class="m" id="137">137<input  id="i137" type="hidden" value="137" disabled></div>
                <div class="m" id="138">138<input  id="i138" type="hidden" value="138" disabled></div>
                <div class="m" id="139">139<input  id="i139" type="hidden" value="139" disabled></div>
                <div class="m" id="140">140<input  id="i140" type="hidden" value="140" disabled></div>
                <div class="m" id="141">141<input  id="i141" type="hidden" value="141" disabled></div>
                <div class="m" id="142">142<input  id="i142" type="hidden" value="142" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="143">143<input  id="i143" type="hidden" value="143" disabled></div>
                <div class="m" id="144">144<input  id="i144" type="hidden" value="144" disabled></div>
                <div class="m" id="145">145<input  id="i145" type="hidden" value="145" disabled></div>
                <div class="m" id="146">146<input  id="i146" type="hidden" value="146" disabled></div>
                <div class="m" id="147">147<input  id="i147" type="hidden" value="147" disabled></div>
                <div class="m" id="148">148<input  id="i148" type="hidden" value="148" disabled></div>
                <div class="m" id="149">149<input  id="i149" type="hidden" value="149" disabled></div>
                <div class="m" id="150">150<input  id="i150" type="hidden" value="150" disabled></div>
                <div class="m" id="151">151<input  id="i151" type="hidden" value="151" disabled></div>
                <div class="m" id="152">152<input  id="i152" type="hidden" value="152" disabled></div>
                <div class="m" id="153">153<input  id="i153" type="hidden" value="153" disabled></div>
                <div class="m" id="154">154<input  id="i154" type="hidden" value="154" disabled></div>
                <div class="m" id="155">155<input  id="i155" type="hidden" value="155" disabled></div>
                <div class="m" id="156">156<input  id="i156" type="hidden" value="156" disabled></div>
                <div class="m" id="157">157<input  id="i157" type="hidden" value="157" disabled></div>
                <div class="m" id="158">158<input  id="i158" type="hidden" value="158" disabled></div>
                <div class="m" id="159">159<input  id="i159" type="hidden" value="159" disabled></div>
                <div class="m" id="160">160<input  id="i160" type="hidden" value="160" disabled></div>
                <div class="m" id="161">161<input  id="i161" type="hidden" value="161" disabled></div>
                <div class="m" id="162">162<input  id="i162" type="hidden" value="162" disabled></div>
                <div class="m" id="163">163<input  id="i163" type="hidden" value="163" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="w" ></div>
                <div class="m" id="164">164<input  id="i164" type="hidden" value="164" disabled></div>
                <div class="m" id="165">165<input  id="i165" type="hidden" value="165" disabled></div>
                <div class="m" id="166">166<input  id="i166" type="hidden" value="166" disabled></div>
                <div class="m" id="167">167<input  id="i167" type="hidden" value="167" disabled></div>
                <div class="m" id="168">168<input  id="i168" type="hidden" value="168" disabled></div>
                <div class="m" id="169">169<input  id="i169" type="hidden" value="169" disabled></div>
                <div class="m" id="170">170<input  id="i170" type="hidden" value="170" disabled></div>
                <div class="m" id="171">171<input  id="i171" type="hidden" value="171" disabled></div>
                <div class="m" id="172">172<input  id="i172" type="hidden" value="172" disabled></div>
                <div class="m" id="173">173<input  id="i173" type="hidden" value="173" disabled></div>
                <div class="m" id="174">174<input  id="i174" type="hidden" value="174" disabled></div>
                <div class="m" id="175">175<input  id="i175" type="hidden" value="175" disabled></div>
                <div class="m" id="176">176<input  id="i176" type="hidden" value="176" disabled></div>
                <div class="m" id="177">177<input  id="i177" type="hidden" value="177" disabled></div>
                <div class="m" id="178">178<input  id="i178" type="hidden" value="178" disabled></div>
                <div class="m" id="179">179<input  id="i179" type="hidden" value="179" disabled></div>
                <div class="m" id="180">180<input  id="i180" type="hidden" value="180" disabled></div>
                <div class="m" id="181">181<input  id="i181" type="hidden" value="181" disabled></div>
                <div class="m" id="182">182<input  id="i182" type="hidden" value="182" disabled></div>
                <div class="m" id="183">183<input  id="i183" type="hidden" value="183" disabled></div>
                <div class="m" id="184">184<input  id="i184" type="hidden" value="184" disabled></div>
                <div class="w" ></div>
                <div class="w" ></div>
            </div>
        </div>
        </div>
        <input type="hidden" value="${filmy.id_filmu}" name="idfilmu">
        <input type="hidden" value="${seans.id_seansu}" name="idseansu">
        <div class="col-2">
            <div>
                <input type="submit" class="save"  value="Zarezerwuj">
            </div>

            <div class="fotelo">
            </div>
            <div class="opis">
                Miejsca wolne
            </div>
            <div class="fotelwyb">
            </div>
            <div class="opis">
                Miejsca wybrane
            </div>
            <div class="fotelzaj ">
            </div>
            <div class="opis">
                Miejsca zajęte
            </div>
        </div>


    </div>

</div>


<div class="stopka row">

    <div class="col-12 ">
        <p>Wszystkie prawa zastrzeżone &copy; 2019 Maciej Matyaszek</p>

    </div>
    </form:form>
</div>
</div>
</div>
</body>

</html>