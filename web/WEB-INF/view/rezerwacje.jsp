<%--
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style18.css" type="text/css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.js"></script>

    <script src="js/swiper.min.js"></script>
    <style>
        .salaaa{

            width: 728px;
            height: 320px;


        }
        .w{

            width: 25px;
            height: 25px;
            float: left;
            margin: 2px;
            text-align: center;
        }
        .m{
            background-color: #09c332;
            width: 25px;
            height: 25px;
            float: left;
            margin: 2px;
            text-align: center;
        }
        .z{
            width: 25px;
            height: 25px;
            float: left;
            margin: 2px;
            background-color: red;
            text-align: center;
        }
        .wybrane{
            width: 25px;
            height: 25px;
            float: left;
            margin: 2px;
            background-color: yellow;
            text-align: center;
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
        function generujSale() {
            if("${seans.sala.id_sali}"=="1"){

                document.write('<div class="salaaa"> <div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w"> </div><div class="w" ></div><div class="ekran">Ekran </div> <div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div> <div class="m" id="1" onclick="generuj(1)">1<input  id="i1" type="hidden" value="1"  name="miejLst"  disabled/></div><div class="m" id="2" onclick="generuj(2)">2<input  id="i2" type="hidden" value="2"  name="miejLst"  disabled/></div><div class="m" id="3" onclick="generuj(3)">3<input  id="i3" type="hidden" value="3"  name="miejLst"  disabled/></div><div class="m" id="4" onclick="generuj(4)">4<input  id="i4" type="hidden" value="4"  name="miejLst"  disabled/></div><div class="m" id="5" onclick="generuj(5)">5<input  id="i5" type="hidden" value="5"  name="miejLst"  disabled/></div><div class="m" id="6" onclick="generuj(6)">6<input  id="i6" type="hidden" value="6"  name="miejLst"  disabled/></div><div class="m" id="7" onclick="generuj(7)">7<input  id="i7" type="hidden" value="7"  name="miejLst"  disabled/></div><div class="m" id="8" onclick="generuj(8)">8<input  id="i8" type="hidden" value="8"  name="miejLst"  disabled/></div><div class="m" id="9" onclick="generuj(9)">9<input  id="i9" type="hidden" value="9"  name="miejLst"  disabled/></div><div class="m" id="10" onclick="generuj(10)">10<input  id="i10" type="hidden" value="10"  name="miejLst"  disabled/></div><div class="m" id="11" onclick="generuj(11)">11<input  id="i11" type="hidden" value="11"  name="miejLst"  disabled/></div><div class="m" id="12" onclick="generuj(12)">12<input  id="i12" type="hidden" value="12"  name="miejLst"  disabled/></div><div class="m" id="13" onclick="generuj(13)">13<input  id="i13" type="hidden" value="13"  name="miejLst"  disabled/></div><div class="m" id="14" onclick="generuj(14)">14<input  id="i14" type="hidden" value="14"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="15" onclick="generuj(15)">15<input  id="i15" type="hidden" value="15"  name="miejLst"  disabled/></div><div class="m" id="16" onclick="generuj(16)">16<input  id="i16" type="hidden" value="16"  name="miejLst"  disabled/></div><div class="m" id="17" onclick="generuj(17)">17<input  id="i17" type="hidden" value="17"  name="miejLst"  disabled/></div><div class="m" id="18" onclick="generuj(18)">18<input  id="i18" type="hidden" value="18"  name="miejLst"  disabled/></div><div class="m" id="19" onclick="generuj(19)">19<input  id="i19" type="hidden" value="19"  name="miejLst"  disabled/></div><div class="m" id="20" onclick="generuj(20)">20<input  id="i20" type="hidden" value="20"  name="miejLst"  disabled/></div><div class="m" id="21" onclick="generuj(21)">21<input  id="i21" type="hidden" value="21"  name="miejLst"  disabled/></div><div class="m" id="22" onclick="generuj(22)">22<input  id="i22" type="hidden" value="22"  name="miejLst"  disabled/></div><div class="m" id="23" onclick="generuj(23)">23<input  id="i23" type="hidden" value="23"  name="miejLst"  disabled/></div><div class="m" id="24" onclick="generuj(24)">24<input  id="i24" type="hidden" value="24"  name="miejLst"  disabled/></div><div class="m" id="25" onclick="generuj(25)">25<input  id="i25" type="hidden" value="25"  name="miejLst"  disabled/></div><div class="m" id="26" onclick="generuj(26)">26<input  id="i26" type="hidden" value="26"  name="miejLst"  disabled/></div><div class="m" id="27" onclick="generuj(27)">27<input  id="i27" type="hidden" value="27"  name="miejLst"  disabled/></div><div class="m" id="28" onclick="generuj(28)">28<input  id="i28" type="hidden" value="28"  name="miejLst"  disabled/></div><div class="m" id="29" onclick="generuj(29)">29<input  id="i29" type="hidden" value="29"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="30" onclick="generuj(30)">30<input  id="i30" type="hidden" value="30"  name="miejLst"  disabled/></div><div class="m" id="31" onclick="generuj(31)">31<input  id="i31" type="hidden" value="31"  name="miejLst"  disabled/></div><div class="m" id="32" onclick="generuj(32)">32<input  id="i32" type="hidden" value="32"  name="miejLst"  disabled/></div><div class="m" id="33" onclick="generuj(33)">33<input  id="i33" type="hidden" value="33"  name="miejLst"  disabled/></div><div class="m" id="34" onclick="generuj(34)">34<input  id="i34" type="hidden" value="34"  name="miejLst"  disabled/></div><div class="m" id="35" onclick="generuj(35)">35<input  id="i35" type="hidden" value="35"  name="miejLst"  disabled/></div><div class="m" id="36" onclick="generuj(36)">36<input  id="i36" type="hidden" value="36"  name="miejLst"  disabled/></div><div class="m" id="37" onclick="generuj(37)">37<input  id="i37" type="hidden" value="37"  name="miejLst"  disabled/></div><div class="m" id="38" onclick="generuj(38)">38<input  id="i38" type="hidden" value="38"  name="miejLst"  disabled/></div><div class="m" id="39" onclick="generuj(39)">39<input  id="i39" type="hidden" value="39"  name="miejLst"  disabled/></div><div class="m" id="40" onclick="generuj(40)">40<input  id="i40" type="hidden" value="40"  name="miejLst"  disabled/></div><div class="m" id="41" onclick="generuj(41)">41<input  id="i41" type="hidden" value="41"  name="miejLst"  disabled/></div><div class="m" id="42" onclick="generuj(42)">42<input  id="i42" type="hidden" value="42"  name="miejLst"  disabled/></div><div class="m" id="43" onclick="generuj(43)">43<input  id="i43" type="hidden" value="43"  name="miejLst"  disabled/></div><div class="m" id="44" onclick="generuj(44)">44<input  id="i44" type="hidden" value="44"  name="miejLst"  disabled/></div><div class="m" id="45" onclick="generuj(45)">45<input  id="i45" type="hidden" value="45"  name="miejLst"  disabled/></div><div class="m" id="46" onclick="generuj(46)">46<input  id="i46" type="hidden" value="46"  name="miejLst"  disabled/></div><div class="m" id="47" onclick="generuj(47)">47<input  id="i47" type="hidden" value="47"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="48" onclick="generuj(48)">48<input  id="i48" type="hidden" value="48"  name="miejLst"  disabled/></div><div class="m" id="49" onclick="generuj(49)">49<input  id="i49" type="hidden" value="49"  name="miejLst"  disabled/></div><div class="m" id="50" onclick="generuj(50)">50<input  id="i50" type="hidden" value="50"  name="miejLst"  disabled/></div><div class="m" id="51" onclick="generuj(51)">51<input  id="i51" type="hidden" value="51"  name="miejLst"  disabled/></div><div class="m" id="52" onclick="generuj(52)">52<input  id="i52" type="hidden" value="52"  name="miejLst"  disabled/></div><div class="m" id="53" onclick="generuj(53)">53<input  id="i53" type="hidden" value="53"  name="miejLst"  disabled/></div><div class="m" id="54" onclick="generuj(54)">54<input  id="i54" type="hidden" value="54"  name="miejLst"  disabled/></div><div class="m" id="55" onclick="generuj(55)">55<input  id="i55" type="hidden" value="55"  name="miejLst"  disabled/></div><div class="m" id="56" onclick="generuj(56)">56<input  id="i56" type="hidden" value="56"  name="miejLst"  disabled/></div><div class="m" id="57" onclick="generuj(57)">57<input  id="i57" type="hidden" value="57"  name="miejLst"  disabled/></div><div class="m" id="58" onclick="generuj(58)">58<input  id="i58" type="hidden" value="58"  name="miejLst"  disabled/></div><div class="m" id="59" onclick="generuj(59)">59<input  id="i59" type="hidden" value="59"  name="miejLst"  disabled/></div><div class="m" id="60" onclick="generuj(60)">60<input  id="i60" type="hidden" value="60"  name="miejLst"  disabled/></div><div class="m" id="61" onclick="generuj(61)">61<input  id="i61" type="hidden" value="61"  name="miejLst"  disabled/></div><div class="m" id="62" onclick="generuj(62)">62<input  id="i62" type="hidden" value="62"  name="miejLst"  disabled/></div><div class="m" id="63" onclick="generuj(63)">63<input  id="i63" type="hidden" value="63"  name="miejLst"  disabled/></div><div class="m" id="64" onclick="generuj(64)">64<input  id="i64" type="hidden" value="64"  name="miejLst"  disabled/></div><div class="m" id="65" onclick="generuj(65)">65<input  id="i65" type="hidden" value="65"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="66" onclick="generuj(66)">66<input  id="i66" type="hidden" value="66"  name="miejLst"  disabled/></div><div class="m" id="67" onclick="generuj(67)">67<input  id="i67" type="hidden" value="67"  name="miejLst"  disabled/></div><div class="m" id="68" onclick="generuj(68)">68<input  id="i68" type="hidden" value="68"  name="miejLst"  disabled/></div><div class="m" id="69" onclick="generuj(69)">69<input  id="i69" type="hidden" value="69"  name="miejLst"  disabled/></div><div class="m" id="70" onclick="generuj(70)">70<input  id="i70" type="hidden" value="70"  name="miejLst"  disabled/></div><div class="m" id="71" onclick="generuj(71)">71<input  id="i71" type="hidden" value="71"  name="miejLst"  disabled/></div><div class="m" id="72" onclick="generuj(72)">72<input  id="i72" type="hidden" value="72"  name="miejLst"  disabled/></div><div class="m" id="73" onclick="generuj(73)">73<input  id="i73" type="hidden" value="73"  name="miejLst"  disabled/></div><div class="m" id="74" onclick="generuj(74)">74<input  id="i74" type="hidden" value="74"  name="miejLst"  disabled/></div><div class="m" id="75" onclick="generuj(75)">75<input  id="i75" type="hidden" value="75"  name="miejLst"  disabled/></div><div class="m" id="76" onclick="generuj(76)">76<input  id="i76" type="hidden" value="76"  name="miejLst"  disabled/></div><div class="m" id="77" onclick="generuj(77)">77<input  id="i77" type="hidden" value="77"  name="miejLst"  disabled/></div><div class="m" id="78" onclick="generuj(78)">78<input  id="i78" type="hidden" value="78"  name="miejLst"  disabled/></div><div class="m" id="79" onclick="generuj(79)">79<input  id="i79" type="hidden" value="79"  name="miejLst"  disabled/></div><div class="m" id="80" onclick="generuj(80)">80<input  id="i80" type="hidden" value="80"  name="miejLst"  disabled/></div><div class="m" id="81" onclick="generuj(81)">81<input  id="i81" type="hidden" value="81"  name="miejLst"  disabled/></div><div class="m" id="82" onclick="generuj(82)">82<input  id="i82" type="hidden" value="82"  name="miejLst"  disabled/></div><div class="m" id="83" onclick="generuj(83)">83<input  id="i83" type="hidden" value="83"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="84" onclick="generuj(84)">84<input  id="i84" type="hidden" value="84"  name="miejLst"  disabled/></div><div class="m" id="85" onclick="generuj(85)">85<input  id="i85" type="hidden" value="85"  name="miejLst"  disabled/></div><div class="m" id="86" onclick="generuj(86)">86<input  id="i86" type="hidden" value="86"  name="miejLst"  disabled/></div><div class="m" id="87" onclick="generuj(87)">87<input  id="i87" type="hidden" value="87"  name="miejLst"  disabled/></div><div class="m" id="88" onclick="generuj(88)">88<input  id="i88" type="hidden" value="88"  name="miejLst"  disabled/></div><div class="m" id="89" onclick="generuj(89)">89<input  id="i89" type="hidden" value="89"  name="miejLst"  disabled/></div><div class="m" id="90" onclick="generuj(90)">90<input  id="i90" type="hidden" value="90"  name="miejLst"  disabled/></div><div class="m" id="91" onclick="generuj(91)">91<input  id="i91" type="hidden" value="91"  name="miejLst"  disabled/></div><div class="m" id="92" onclick="generuj(92)">92<input  id="i92" type="hidden" value="92"  name="miejLst"  disabled/></div><div class="m" id="93" onclick="generuj(93)">93<input  id="i93" type="hidden" value="93"  name="miejLst"  disabled/></div><div class="m" id="94" onclick="generuj(94)">94<input  id="i94" type="hidden" value="94"  name="miejLst"  disabled/></div><div class="m" id="95" onclick="generuj(95)">95<input  id="i95" type="hidden" value="95"  name="miejLst"  disabled/></div><div class="m" id="96" onclick="generuj(96)">96<input  id="i96" type="hidden" value="96"  name="miejLst"  disabled/></div><div class="m" id="97" onclick="generuj(97)">97<input  id="i97" type="hidden" value="97"  name="miejLst"  disabled/></div><div class="m" id="98" onclick="generuj(98)">98<input  id="i98" type="hidden" value="98"  name="miejLst"  disabled/></div><div class="m" id="99" onclick="generuj(99)">99<input  id="i99" type="hidden" value="99"  name="miejLst"  disabled/></div><div class="m" id="100" onclick="generuj(100)">100<input  id="i100" type="hidden" value="100"  name="miejLst"  disabled/></div><div class="m" id="101" onclick="generuj(101)">101<input  id="i101" type="hidden" value="101"  name="miejLst"  disabled/></div><div class="m" id="102" onclick="generuj(102)">102<input  id="i102" type="hidden" value="102"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="103" onclick="generuj(103)">103<input  id="i103" type="hidden" value="103"  name="miejLst"  disabled/></div><div class="m" id="104" onclick="generuj(104)">104<input  id="i104" type="hidden" value="104"  name="miejLst"  disabled/></div><div class="m" id="105" onclick="generuj(105)">105<input  id="i105" type="hidden" value="105"  name="miejLst"  disabled/></div><div class="m" id="106" onclick="generuj(106)">106<input  id="i106" type="hidden" value="106"  name="miejLst"  disabled/></div><div class="m" id="107" onclick="generuj(107)">107<input  id="i107" type="hidden" value="107"  name="miejLst"  disabled/></div><div class="m" id="108" onclick="generuj(108)">108<input  id="i108" type="hidden" value="108"  name="miejLst"  disabled/></div><div class="m" id="109" onclick="generuj(109)">109<input  id="i109" type="hidden" value="109"  name="miejLst"  disabled/></div><div class="m" id="110" onclick="generuj(110)">110<input  id="i110" type="hidden" value="110"  name="miejLst"  disabled/></div><div class="m" id="111" onclick="generuj(111)">111<input  id="i111" type="hidden" value="111"  name="miejLst"  disabled/></div><div class="m" id="112" onclick="generuj(112)">112<input  id="i112" type="hidden" value="112"  name="miejLst"  disabled/></div><div class="m" id="113" onclick="generuj(113)">113<input  id="i113" type="hidden" value="113"  name="miejLst"  disabled/></div><div class="m" id="114" onclick="generuj(114)">114<input  id="i114" type="hidden" value="114"  name="miejLst"  disabled/></div><div class="m" id="115" onclick="generuj(115)">115<input  id="i115" type="hidden" value="115"  name="miejLst"  disabled/></div><div class="m" id="116" onclick="generuj(116)">116<input  id="i116" type="hidden" value="116"  name="miejLst"  disabled/></div><div class="m" id="117" onclick="generuj(117)">117<input  id="i117" type="hidden" value="117"  name="miejLst"  disabled/></div><div class="m" id="118" onclick="generuj(118)">118<input  id="i118" type="hidden" value="118"  name="miejLst"  disabled/></div><div class="m" id="119" onclick="generuj(119)">119<input  id="i119" type="hidden" value="119"  name="miejLst"  disabled/></div><div class="m" id="120" onclick="generuj(120)">120<input  id="i120" type="hidden" value="120"  name="miejLst"  disabled/></div><div class="m" id="121" onclick="generuj(121)">121<input  id="i121" type="hidden" value="121"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="122" onclick="generuj(122)">122<input  id="i122" type="hidden" value="122"  name="miejLst"  disabled/></div><div class="m" id="123" onclick="generuj(123)">123<input  id="i123" type="hidden" value="123"  name="miejLst"  disabled/></div><div class="m" id="124" onclick="generuj(124)">124<input  id="i124" type="hidden" value="124"  name="miejLst"  disabled/></div><div class="m" id="125" onclick="generuj(125)">125<input  id="i125" type="hidden" value="125"  name="miejLst"  disabled/></div><div class="m" id="126" onclick="generuj(126)">126<input  id="i126" type="hidden" value="126"  name="miejLst"  disabled/></div><div class="m" id="127" onclick="generuj(127)">127<input  id="i127" type="hidden" value="127"  name="miejLst"  disabled/></div><div class="m" id="128" onclick="generuj(128)">128<input  id="i128" type="hidden" value="128"  name="miejLst"  disabled/></div><div class="m" id="129" onclick="generuj(129)">129<input  id="i129" type="hidden" value="129"  name="miejLst"  disabled/></div><div class="m" id="130" onclick="generuj(130)">130<input  id="i130" type="hidden" value="130"  name="miejLst"  disabled/></div><div class="m" id="131" onclick="generuj(131)">131<input  id="i131" type="hidden" value="131"  name="miejLst"  disabled/></div><div class="m" id="132" onclick="generuj(132)">132<input  id="i132" type="hidden" value="132"  name="miejLst"  disabled/></div><div class="m" id="133" onclick="generuj(133)">133<input  id="i133" type="hidden" value="133"  name="miejLst"  disabled/></div><div class="m" id="134" onclick="generuj(134)">134<input  id="i134" type="hidden" value="134"  name="miejLst"  disabled/></div><div class="m" id="135" onclick="generuj(135)">135<input  id="i135" type="hidden" value="135"  name="miejLst"  disabled/></div><div class="m" id="136" onclick="generuj(136)">136<input  id="i136" type="hidden" value="136"  name="miejLst"  disabled/></div><div class="m" id="137" onclick="generuj(137)">137<input  id="i137" type="hidden" value="137"  name="miejLst"  disabled/></div><div class="m" id="138" onclick="generuj(138)">138<input  id="i138" type="hidden" value="138"  name="miejLst"  disabled/></div><div class="m" id="139" onclick="generuj(139)">139<input  id="i139" type="hidden" value="139"  name="miejLst"  disabled/></div><div class="m" id="140" onclick="generuj(140)">140<input  id="i140" type="hidden" value="140"  name="miejLst"  disabled/></div><div class="m" id="141" onclick="generuj(141)">141<input  id="i141" type="hidden" value="141"  name="miejLst"  disabled/></div><div class="m" id="142" onclick="generuj(142)">142<input  id="i142" type="hidden" value="142"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="143" onclick="generuj(143)">143<input  id="i143" type="hidden" value="143"  name="miejLst"  disabled/></div><div class="m" id="144" onclick="generuj(144)">144<input  id="i144" type="hidden" value="144"  name="miejLst"  disabled/></div><div class="m" id="145" onclick="generuj(145)">145<input  id="i145" type="hidden" value="145"  name="miejLst"  disabled/></div><div class="m" id="146" onclick="generuj(146)">146<input  id="i146" type="hidden" value="146"  name="miejLst"  disabled/></div><div class="m" id="147" onclick="generuj(147)">147<input  id="i147" type="hidden" value="147"  name="miejLst"  disabled/></div><div class="m" id="148" onclick="generuj(148)">148<input  id="i148" type="hidden" value="148"  name="miejLst"  disabled/></div><div class="m" id="149" onclick="generuj(149)">149<input  id="i149" type="hidden" value="149"  name="miejLst"  disabled/></div><div class="m" id="150" onclick="generuj(150)">150<input  id="i150" type="hidden" value="150"  name="miejLst"  disabled/></div><div class="m" id="151" onclick="generuj(151)">151<input  id="i151" type="hidden" value="151"  name="miejLst"  disabled/></div><div class="m" id="152" onclick="generuj(152)">152<input  id="i152" type="hidden" value="152"  name="miejLst"  disabled/></div><div class="m" id="153" onclick="generuj(153)">153<input  id="i153" type="hidden" value="153"  name="miejLst"  disabled/></div><div class="m" id="154" onclick="generuj(154)">154<input  id="i154" type="hidden" value="154"  name="miejLst"  disabled/></div><div class="m" id="155" onclick="generuj(155)">155<input  id="i155" type="hidden" value="155"  name="miejLst"  disabled/></div><div class="m" id="156" onclick="generuj(156)">156<input  id="i156" type="hidden" value="156"  name="miejLst"  disabled/></div><div class="m" id="157" onclick="generuj(157)">157<input  id="i157" type="hidden" value="157"  name="miejLst"  disabled/></div><div class="m" id="158" onclick="generuj(158)">158<input  id="i158" type="hidden" value="158"  name="miejLst"  disabled/></div><div class="m" id="159" onclick="generuj(159)">159<input  id="i159" type="hidden" value="159"  name="miejLst"  disabled/></div><div class="m" id="160" onclick="generuj(160)">160<input  id="i160" type="hidden" value="160"  name="miejLst"  disabled/></div><div class="m" id="161" onclick="generuj(161)">161<input  id="i161" type="hidden" value="161"  name="miejLst"  disabled/></div><div class="m" id="162" onclick="generuj(162)">162<input  id="i162" type="hidden" value="162"  name="miejLst"  disabled/></div><div class="m" id="163" onclick="generuj(163)">163<input  id="i163" type="hidden" value="163"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="164" onclick="generuj(164)">164<input  id="i164" type="hidden" value="164"  name="miejLst"  disabled/></div><div class="m" id="165" onclick="generuj(165)">165<input  id="i165" type="hidden" value="165"  name="miejLst"  disabled/></div><div class="m" id="166" onclick="generuj(166)">166<input  id="i166" type="hidden" value="166"  name="miejLst"  disabled/></div><div class="m" id="167" onclick="generuj(167)">167<input  id="i167" type="hidden" value="167"  name="miejLst"  disabled/></div><div class="m" id="168" onclick="generuj(168)">168<input  id="i168" type="hidden" value="168"  name="miejLst"  disabled/></div><div class="m" id="169" onclick="generuj(169)">169<input  id="i169" type="hidden" value="169"  name="miejLst"  disabled/></div><div class="m" id="170" onclick="generuj(170)">170<input  id="i170" type="hidden" value="170"  name="miejLst"  disabled/></div><div class="m" id="171" onclick="generuj(171)">171<input  id="i171" type="hidden" value="171"  name="miejLst"  disabled/></div><div class="m" id="172" onclick="generuj(172)">172<input  id="i172" type="hidden" value="172"  name="miejLst"  disabled/></div><div class="m" id="173" onclick="generuj(173)">173<input  id="i173" type="hidden" value="173"  name="miejLst"  disabled/></div><div class="m" id="174" onclick="generuj(174)">174<input  id="i174" type="hidden" value="174"  name="miejLst"  disabled/></div><div class="m" id="175" onclick="generuj(175)">175<input  id="i175" type="hidden" value="175"  name="miejLst"  disabled/></div><div class="m" id="176" onclick="generuj(176)">176<input  id="i176" type="hidden" value="176"  name="miejLst"  disabled/></div><div class="m" id="177" onclick="generuj(177)">177<input  id="i177" type="hidden" value="177"  name="miejLst"  disabled/></div><div class="m" id="178" onclick="generuj(178)">178<input  id="i178" type="hidden" value="178"  name="miejLst"  disabled/></div><div class="m" id="179" onclick="generuj(179)">179<input  id="i179" type="hidden" value="179"  name="miejLst"  disabled/></div><div class="m" id="180" onclick="generuj(180)">180<input  id="i180" type="hidden" value="180"  name="miejLst"  disabled/></div><div class="m" id="181" onclick="generuj(181)">181<input  id="i181" type="hidden" value="181"  name="miejLst"  disabled/></div><div class="m" id="182" onclick="generuj(182)">182<input  id="i182" type="hidden" value="182"  name="miejLst"  disabled/></div><div class="m" id="183" onclick="generuj(183)">183<input  id="i183" type="hidden" value="183"  name="miejLst"  disabled/></div><div class="m" id="184" onclick="generuj(184)">184<input  id="i184" type="hidden" value="184"  name="miejLst"  disabled/></div><div class="w" ></div><div class="w" ></div>  </div> ')
            }

        }


    </script>

    <script>
        var v=0;
        function generuj(a){
            var tekst = 'i'+a;


            var d=document.getElementById(a);

            if(d.className=="m"){

                d.className="wybrane";
                document.getElementById(tekst).disabled=false;
                v++;

            }
            else if (d.className=="wybrane"){

                d.className="m";
                document.getElementById(tekst).disabled=true;
                v--;
            }
            if(v>0){
                document.getElementById("zarezerwuj").disabled=false;
            }
            else {
                document.getElementById("zarezerwuj").disabled=true;
            }

        }
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

    <script type="text/javascript">
        function zajete(){
            var d="i";
            var op=1;
            var p=1;
            <c:forEach items="${miejsca}" var="miejsce" >


                if( ${miejsce.status} >  0 ){
                var c=document.getElementById(op);
                c.className="z";
                c.innerHTML="";
                var i="i"+op;
                console.log(i);
                var h=document.getElementById(i);

            }
             op=op+1;

            </c:forEach>
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
                document.getElementById("zarezerwuj").disabled=false;
            }
            else{

                c.className="fotel";
                document.getElementById(tekst).disabled=true;
                document.getElementById("zarezerwuj").disabled=true;
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
                document.write("<div  class=\"fotel2\" id=\"${a.id_miejsca}\" > </div>")
            }



            </c:forEach>

        }



    </script>

    <script>
        function rezerwacje(){

            var c;
            var b=1;
            <c:forEach items="${miejsca}" var="a">
            if("${a.status}"=="1"){
                c=document.getElementById(a)
                c.className= "z";
                b++;
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
                        <a    href="cennik.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/dolar.png" width="10%" height="5%" hspace="30" >Cennik </a>

                        <a    href="kontakt.html" style="text-decoration:none; color:white"><img src="${pageContext.request.contextPath}/resources/img/phone.png" width="10%" height="5%" hspace="30" >Kontakt </a>



                    </div>

                </div>
            </section>


        </header>
        <div class="Rezerwacje">

            <div class="obrazkREz">

                <img  class="obrazy" src="${pageContext.request.contextPath}/resources/img/${seans.film.tytul}.jpg"  height=70% width=500px  alt="Avangers"  >
            </div>
            <div class="SalaMiejsca">
                <p class="opsisRezewacjiF">${seans.film.tytul}: ${seans.data} ${seans.godzina}</p>
                <script>
                    generujSale();
                </script>


            </div>

            <script>
                zajete();
            </script>


            <script>
                rezerwacje();
            </script>

        <div class="ZatwierdzRez">

            <input id="zarezerwuj" type="submit" class="save"  value="Zarezerwuj"  style="width: 100%;    " disabled>

            <p>
            <div class="m">
            </div>


            <span>Miejsca wolne</span>
            </p>
            <p>
            <div class="wybrane">
            </div>


            <span>Miejsca wybrane</span>
            </p><p>
            <div class="z ">
            </div>



            <span>Miejsca zajęte</span></p>
        </div>

        </div>
    </div>
    </div>

    <%--<div class="tutajrez">--%>
    <%--<div class="row ">--%>
    <%--<div class="rezerw col-12">--%>
    <%--<h1> Rezerwacja miejsc </h1>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="row">--%>

    <%--<div class="col-2">--%>
    <%--<img  class="obrezekrez" src="${pageContext.request.contextPath}/resources/img/${filmy.tytul}.jpg"  width="100%" height="100%"  align="right"/>--%>

    <%--</div>--%>
    <%--<div class="col-8">--%>







    <%--<script>--%>
    <%--generujSale()--%>
    <%--</script>--%>
    <%--<script>--%>
    <%--zajete()--%>
    <%--</script>--%>


    <%--</div>--%>

    <%--<div class="col-2">--%>

    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="row">--%>
    <%--<div class="col-2">--%>
    <%--</div>--%>
    <%--<div class="flex-container col-8">--%>


    <%--<SCRIPT LANGUAGE= "JavaScript" type= "text/javascript" 	>--%>
    <%--<!-- Ukrycie przed przeglądarkami nie obsługującymi JavaScriptów--%>
    <%--myFunction3();--%>
    <%--// Koniec kodu JavaScript -->--%>
    <%--</SCRIPT>--%>
    <%--</div>--%>
    <input type="hidden" value="${filmy.id_filmu}" name="idfilmu">
    <input type="hidden" value="${seans.id_seansu}" name="idseansu">
    <%--<div class="col-2">--%>
    <%--<div>--%>
    <%--<input id="zarezerwuj" type="submit" class="save"  value="Zarezerwuj" onclick="SprawdzMiejsca()" disabled>--%>
    <%--</div>--%>

    <%--<div class="fotelo">--%>
    <%--</div>--%>
    <%--<div class="opis">--%>
    <%--Miejsca wolne--%>
    <%--</div>--%>
    <%--<div class="fotelwyb">--%>
    <%--</div>--%>
    <%--<div class="opis">--%>
    <%--Miejsca wybrane--%>
    <%--</div>--%>
    <%--<div class="fotelzaj ">--%>
    <%--</div>--%>
    <%--<div class="opis">--%>
    <%--Miejsca zajęte--%>
    <%--</div>--%>
    <%--</div>--%>


    <%--</div>--%>

    <%--</div>--%>

</form:form>

</div>
<div class="stopka row">

    <div class="col-12 ">
        <p>Wszystkie prawa zastrzeżone &copy; 2019 Maciej Matyaszek</p>

    </div>

</div>
</div>
</body>

</html>
