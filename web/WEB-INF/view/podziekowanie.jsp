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
            if("${seans.sala.id_sali}"=="24"){

                document.write('<div class="salaaa"> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="ekran">Ekran </div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div>             <div class="m" id="1" onclick="generuj(1)">1<input  id="i1" type="hidden" value="1"  name="miejLst" disable></div> <div class="m" id="2">2<input  id="i2" type="hidden" value="2"  name="miejLst" onclik="generuj(2)" disabled></div><div class="m" id="3">3<input  id="i3" type="hidden" value="3"  name="miejLst" onclik="generuj(3)" disabled></div><div class="m" id="4">4<input  id="i4" type="hidden" value="4"  name="miejLst" onclik="generuj(4)" disabled></div><div class="m" id="5">5<input  id="i5" type="hidden" value="5"  name="miejLst" onclik="generuj(5)" disabled></div><div class="m" id="6">6<input  id="i6" type="hidden" value="6"  name="miejLst" onclik="generuj(6)" disabled></div><div class="m" id="7">7<input  id="i7" type="hidden" value="7"  name="miejLst" onclik="generuj(7)" disabled></div><div class="m" id="8">8<input  id="i8" type="hidden" value="8"  name="miejLst" onclik="generuj(8)" disabled></div><div class="m" id="9">9<input  id="i9" type="hidden" value="9"  name="miejLst" onclik="generuj(9)" disabled></div><div class="m" id="10">10<input  id="i10" type="hidden" value="10"  name="miejLst" onclik="generuj(10)" disabled></div><div class="m" id="11">11<input  id="i11" type="hidden" value="11"  name="miejLst" onclik="generuj(11)" disabled></div><div class="m" id="12">12<input  id="i12" type="hidden" value="12"  name="miejLst" onclik="generuj(12)" disabled></div><div class="m" id="13">13<input  id="i13" type="hidden" value="13"  name="miejLst" onclik="generuj(13)" disabled></div><div class="m" id="14">14<input  id="i14" type="hidden" value="14"  name="miejLst" onclik="generuj(14)" disabled></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div> <div class="w" ></div><div class="m" id="15">15<input  id="i15" type="hidden" value="15"  name="miejLst" onclik="generuj(15)" disabled></div><div class="m" id="16">16<input  id="i16" type="hidden" value="16"  name="miejLst" onclik="generuj(16)" disabled></div><div class="m" id="17">17<input  id="i17" type="hidden" value="17"  name="miejLst" onclik="generuj(17)" disabled></div><div class="m" id="18">18<input  id="i18" type="hidden" value="18"  name="miejLst" onclik="generuj(18)" disabled></div><div class="m" id="19">19<input  id="i19" type="hidden" value="19"  name="miejLst" onclik="generuj(19)" disabled></div><div class="m" id="20">20<input  id="i20" type="hidden" value="20"  name="miejLst" onclik="generuj(20)" disabled></div><div class="m" id="21">21<input  id="i21" type="hidden" value="21"  name="miejLst" onclik="generuj(21)" disabled></div><div class="m" id="22">22<input  id="i22" type="hidden" value="22"  name="miejLst" onclik="generuj(22)" disabled></div><div class="m" id="23">23<input  id="i23" type="hidden" value="23"  name="miejLst" onclik="generuj(23)" disabled></div><div class="m" id="24">24<input  id="i24" type="hidden" value="24"  name="miejLst" onclik="generuj(24)" disabled></div><div class="m" id="25">25<input  id="i25" type="hidden" value="25"  name="miejLst" onclik="generuj(25)" disabled></div><div class="m" id="26">26<input  id="i26" type="hidden" value="26"  name="miejLst" onclik="generuj(26)" disabled></div><div class="m" id="27">27<input  id="i27" type="hidden" value="27"  name="miejLst" onclik="generuj(27)" disabled></div><div class="m" id="28">28<input  id="i28" type="hidden" value="28"  name="miejLst" onclik="generuj(28)" disabled></div><div class="m" id="29">29<input  id="i29" type="hidden" value="29"  name="miejLst" onclik="generuj(29)" disabled></div> <div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="30">30<input  id="i30" type="hidden" value="30"  name="miejLst" onclik="generuj(30)" disabled></div><div class="m" id="31">31<input  id="i31" type="hidden" value="31"  name="miejLst" onclik="generuj(31)" disabled></div><div class="m" id="32">32<input  id="i32" type="hidden" value="32"  name="miejLst" onclik="generuj(32)" disabled></div><div class="m" id="33">33<input  id="i33" type="hidden" value="33"  name="miejLst" onclik="generuj(33)" disabled></div><div class="m" id="34">34<input  id="i34" type="hidden" value="34"  name="miejLst" onclik="generuj(34)" disabled></div><div class="m" id="35">35<input  id="i35" type="hidden" value="35"  name="miejLst" onclik="generuj(35)" disabled></div><div class="m" id="36">36<input  id="i36" type="hidden" value="36"  name="miejLst" onclik="generuj(36)" disabled></div><div class="m" id="37">37<input  id="i37" type="hidden" value="37"  name="miejLst" onclik="generuj(37)" disabled></div><div class="m" id="38">38<input  id="i38" type="hidden" value="38"  name="miejLst" onclik="generuj(38)" disabled></div><div class="m" id="39">39<input  id="i39" type="hidden" value="39"  name="miejLst" onclik="generuj(39)" disabled></div><div class="m" id="40">40<input  id="i40" type="hidden" value="40"  name="miejLst" onclik="generuj(40)" disabled></div><div class="m" id="41">41<input  id="i41" type="hidden" value="41"  name="miejLst" onclik="generuj(41)" disabled></div><div class="m" id="42">42<input  id="i42" type="hidden" value="42"  name="miejLst" onclik="generuj(42)" disabled></div><div class="m" id="43">43<input  id="i43" type="hidden" value="43"  name="miejLst" onclik="generuj(43)" disabled></div><div class="m" id="44">44<input  id="i44" type="hidden" value="44"  name="miejLst" onclik="generuj(44)" disabled></div><div class="m" id="45">45<input  id="i45" type="hidden" value="45"  name="miejLst" onclik="generuj(45)" disabled></div><div class="m" id="46">46<input  id="i46" type="hidden" value="46"  name="miejLst" onclik="generuj(46)" disabled></div><div class="m" id="47">47<input  id="i47" type="hidden" value="47"  name="miejLst" onclik="generuj(47)" disabled></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="48">48<input  id="i48" type="hidden" value="48"  name="miejLst" onclik="generuj(48)" disabled></div><div class="m" id="49">49<input  id="i49" type="hidden" value="49"  name="miejLst" onclik="generuj(49)" disabled></div><div class="m" id="50">50<input  id="i50" type="hidden" value="50"  name="miejLst" onclik="generuj(50)" disabled></div><div class="m" id="51">51<input  id="i51" type="hidden" value="51"  name="miejLst" onclik="generuj(51)" disabled></div><div class="m" id="52">52<input  id="i52" type="hidden" value="52"  name="miejLst" onclik="generuj(52)" disabled></div><div class="m" id="53">53<input  id="i53" type="hidden" value="53"  name="miejLst" onclik="generuj(53)" disabled></div><div class="m" id="54">54<input  id="i54" type="hidden" value="54"  name="miejLst" onclik="generuj(54)" disabled></div><div class="m" id="55">55<input  id="i55" type="hidden" value="55"  name="miejLst" onclik="generuj(55)" disabled></div><div class="m" id="56">56<input  id="i56" type="hidden" value="56"  name="miejLst" onclik="generuj(56)" disabled></div><div class="m" id="57">57<input  id="i57" type="hidden" value="57"  name="miejLst" onclik="generuj(57)" disabled></div><div class="m" id="58">58<input  id="i58" type="hidden" value="58"  name="miejLst" onclik="generuj(58)" disabled></div><div class="m" id="59">59<input  id="i59" type="hidden" value="59"  name="miejLst" onclik="generuj(59)" disabled></div><div class="m" id="60">60<input  id="i60" type="hidden" value="60"  name="miejLst" onclik="generuj(60)" disabled></div><div class="m" id="61">61<input  id="i61" type="hidden" value="61"  name="miejLst" onclik="generuj(61)" disabled></div><div class="m" id="62">62<input  id="i62" type="hidden" value="62"  name="miejLst" onclik="generuj(62)" disabled></div><div class="m" id="63">63<input  id="i63" type="hidden" value="63"  name="miejLst" onclik="generuj(63)" disabled></div><div class="m" id="64">64<input  id="i64" type="hidden" value="64"  name="miejLst" onclik="generuj(64)" disabled></div><div class="m" id="65">65<input  id="i65" type="hidden" value="65"  name="miejLst" onclik="generuj(65)" disabled></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="66">66<input  id="i66" type="hidden" value="66"  name="miejLst" onclik="generuj(66)" disabled></div><div class="m" id="67">67<input  id="i67" type="hidden" value="67"  name="miejLst" onclik="generuj(67)" disabled></div><div class="m" id="68">68<input  id="i68" type="hidden" value="68"  name="miejLst" onclik="generuj(68)" disabled></div><div class="m" id="69">69<input  id="i69" type="hidden" value="69"  name="miejLst" onclik="generuj(69)" disabled></div><div class="m" id="70">70<input  id="i70" type="hidden" value="70"  name="miejLst" onclik="generuj(70)" disabled></div><div class="m" id="71">71<input  id="i71" type="hidden" value="71"  name="miejLst" onclik="generuj(71)" disabled></div><div class="m" id="72">72<input  id="i72" type="hidden" value="72"  name="miejLst" onclik="generuj(72)" disabled></div><div class="m" id="73">73<input  id="i73" type="hidden" value="73"  name="miejLst" onclik="generuj(73)" disabled></div><div class="m" id="74">74<input  id="i74" type="hidden" value="74"  name="miejLst" onclik="generuj(74)" disabled></div><div class="m" id="75">75<input  id="i75" type="hidden" value="75"  name="miejLst" onclik="generuj(75)" disabled></div><div class="m" id="76">76<input  id="i76" type="hidden" value="76"  name="miejLst" onclik="generuj(76)" disabled></div><div class="m" id="77">77<input  id="i77" type="hidden" value="77"  name="miejLst" onclik="generuj(77)" disabled></div><div class="m" id="78">78<input  id="i78" type="hidden" value="78"  name="miejLst" onclik="generuj(78)" disabled></div><div class="m" id="79">79<input  id="i79" type="hidden" value="79"  name="miejLst" onclik="generuj(79)" disabled></div><div class="m" id="80">80<input  id="i80" type="hidden" value="80"  name="miejLst" onclik="generuj(80)" disabled></div><div class="m" id="81">81<input  id="i81" type="hidden" value="81"  name="miejLst" onclik="generuj(81)" disabled></div><div class="m" id="82">82<input  id="i82" type="hidden" value="82"  name="miejLst" onclik="generuj(82)" disabled></div><div class="m" id="83">83<input  id="i83" type="hidden" value="83"  name="miejLst" onclik="generuj(83)" disabled></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="84">84<input  id="i84" type="hidden" value="84"  name="miejLst" onclik="generuj(84)" disabled></div><div class="m" id="85">85<input  id="i85" type="hidden" value="85"  name="miejLst" onclik="generuj(85)" disabled></div><div class="m" id="86">86<input  id="i86" type="hidden" value="86"  name="miejLst" onclik="generuj(86)" disabled></div><div class="m" id="87">87<input  id="i87" type="hidden" value="87"  name="miejLst" onclik="generuj(87)" disabled></div><div class="m" id="88">88<input  id="i88" type="hidden" value="88"  name="miejLst" onclik="generuj(88)" disabled></div><div class="m" id="89">89<input  id="i89" type="hidden" value="89"  name="miejLst" onclik="generuj(89)" disabled></div><div class="m" id="90">90<input  id="i90" type="hidden" value="90"  name="miejLst" onclik="generuj(90)" disabled></div><div class="m" id="91">91<input  id="i91" type="hidden" value="91"  name="miejLst" onclik="generuj(91)" disabled></div><div class="m" id="92">92<input  id="i92" type="hidden" value="92"  name="miejLst" onclik="generuj(92)" disabled></div><div class="m" id="93">93<input  id="i93" type="hidden" value="93"  name="miejLst" onclik="generuj(93)" disabled></div><div class="m" id="94">94<input  id="i94" type="hidden" value="94"  name="miejLst" onclik="generuj(94)" disabled></div><div class="m" id="95">95<input  id="i95" type="hidden" value="95"  name="miejLst" onclik="generuj(95)" disabled></div><div class="m" id="96">96<input  id="i96" type="hidden" value="96"  name="miejLst" onclik="generuj(96)" disabled></div><div class="m" id="97">97<input  id="i97" type="hidden" value="97"  name="miejLst" onclik="generuj(97)" disabled></div><div class="m" id="98">98<input  id="i98" type="hidden" value="98"  name="miejLst" onclik="generuj(98)" disabled></div><div class="m" id="99">99<input  id="i99" type="hidden" value="99"  name="miejLst" onclik="generuj(99)" disabled></div><div class="m" id="100">100<input  id="i100" type="hidden" value="100"  name="miejLst" onclik="generuj(100)" disabled></div><div class="m" id="101">101<input  id="i101" type="hidden" value="101"  name="miejLst" onclik="generuj(101)" disabled></div><div class="m" id="102">102<input  id="i102" type="hidden" value="102"  name="miejLst" onclik="generuj(102)" disabled></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="103">103<input  id="i103" type="hidden" value="103"  name="miejLst" onclik="generuj(103)" disabled></div><div class="m" id="104">104<input  id="i104" type="hidden" value="104"  name="miejLst" onclik="generuj(104)" disabled></div><div class="m" id="105">105<input  id="i105" type="hidden" value="105"  name="miejLst" onclik="generuj(105)" disabled></div><div class="m" id="106">106<input  id="i106" type="hidden" value="106"  name="miejLst" onclik="generuj(106)" disabled></div><div class="m" id="107">107<input  id="i107" type="hidden" value="107"  name="miejLst" onclik="generuj(107)" disabled></div><div class="m" id="108">108<input  id="i108" type="hidden" value="108"  name="miejLst" onclik="generuj(108)" disabled></div><div class="m" id="109">109<input  id="i109" type="hidden" value="109"  name="miejLst" onclik="generuj(109)" disabled></div><div class="m" id="110">110<input  id="i110" type="hidden" value="110"  name="miejLst" onclik="generuj(110)" disabled></div><div class="m" id="111">111<input  id="i111" type="hidden" value="111"  name="miejLst" onclik="generuj(111)" disabled></div><div class="m" id="112">112<input  id="i112" type="hidden" value="112"  name="miejLst" onclik="generuj(112)" disabled></div><div class="m" id="113">113<input  id="i113" type="hidden" value="113"  name="miejLst" onclik="generuj(113)" disabled></div><div class="m" id="114">114<input  id="i114" type="hidden" value="114"  name="miejLst" onclik="generuj(114)" disabled></div><div class="m" id="115">115<input  id="i115" type="hidden" value="115"  name="miejLst" onclik="generuj(115)" disabled></div><div class="m" id="116">116<input  id="i116" type="hidden" value="116"  name="miejLst" onclik="generuj(116)" disabled></div><div class="m" id="117">117<input  id="i117" type="hidden" value="117"  name="miejLst" onclik="generuj(117)" disabled></div><div class="m" id="118">118<input  id="i118" type="hidden" value="118"  name="miejLst" onclik="generuj(118)" disabled></div><div class="m" id="119">119<input  id="i119" type="hidden" value="119"  name="miejLst" onclik="generuj(119)" disabled></div><div class="m" id="120">120<input  id="i120" type="hidden" value="120"  name="miejLst" onclik="generuj(120)" disabled></div><div class="m" id="121">121<input  id="i121" type="hidden" value="121"  name="miejLst" onclik="generuj(121)" disabled></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="122">122<input  id="i122" type="hidden" value="122"  name="miejLst" onclik="generuj(122)" disabled></div><div class="m" id="123">123<input  id="i123" type="hidden" value="123"  name="miejLst" onclik="generuj(123)" disabled></div><div class="m" id="124">124<input  id="i124" type="hidden" value="124"  name="miejLst" onclik="generuj(124)" disabled></div><div class="m" id="125">125<input  id="i125" type="hidden" value="125"  name="miejLst" onclik="generuj(125)" disabled></div><div class="m" id="126">126<input  id="i126" type="hidden" value="126"  name="miejLst" onclik="generuj(126)" disabled></div><div class="m" id="127">127<input  id="i127" type="hidden" value="127"  name="miejLst" onclik="generuj(127)" disabled></div><div class="m" id="128">128<input  id="i128" type="hidden" value="128"  name="miejLst" onclik="generuj(128)" disabled></div><div class="m" id="129">129<input  id="i129" type="hidden" value="129"  name="miejLst" onclik="generuj(129)" disabled></div><div class="m" id="130">130<input  id="i130" type="hidden" value="130"  name="miejLst" onclik="generuj(130)" disabled></div><div class="m" id="131">131<input  id="i131" type="hidden" value="131"  name="miejLst" onclik="generuj(131)" disabled></div><div class="m" id="132">132<input  id="i132" type="hidden" value="132"  name="miejLst" onclik="generuj(132)" disabled></div><div class="m" id="133">133<input  id="i133" type="hidden" value="133"  name="miejLst" onclik="generuj(133)" disabled></div><div class="m" id="134">134<input  id="i134" type="hidden" value="134"  name="miejLst" onclik="generuj(134)" disabled></div><div class="m" id="135">135<input  id="i135" type="hidden" value="135"  name="miejLst" onclik="generuj(135)" disabled></div><div class="m" id="136">136<input  id="i136" type="hidden" value="136"  name="miejLst" onclik="generuj(136)" disabled></div><div class="m" id="137">137<input  id="i137" type="hidden" value="137"  name="miejLst" onclik="generuj(137)" disabled></div><div class="m" id="138">138<input  id="i138" type="hidden" value="138"  name="miejLst" onclik="generuj(138)" disabled></div><div class="m" id="139">139<input  id="i139" type="hidden" value="139"  name="miejLst" onclik="generuj(139)" disabled></div><div class="m" id="140">140<input  id="i140" type="hidden" value="140"  name="miejLst" onclik="generuj(140)" disabled></div><div class="m" id="141">141<input  id="i141" type="hidden" value="141"  name="miejLst" onclik="generuj(141)" disabled></div><div class="m" id="142">142<input  id="i142" type="hidden" value="142"  name="miejLst" onclik="generuj(142)" disabled></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="143">143<input  id="i143" type="hidden" value="143"  name="miejLst" onclik="generuj(143)" disabled></div><div class="m" id="144">144<input  id="i144" type="hidden" value="144"  name="miejLst" onclik="generuj(144)" disabled></div><div class="m" id="145">145<input  id="i145" type="hidden" value="145"  name="miejLst" onclik="generuj(145)" disabled></div><div class="m" id="146">146<input  id="i146" type="hidden" value="146"  name="miejLst" onclik="generuj(146)" disabled></div><div class="m" id="147">147<input  id="i147" type="hidden" value="147"  name="miejLst" onclik="generuj(147)" disabled></div><div class="m" id="148">148<input  id="i148" type="hidden" value="148"  name="miejLst" onclik="generuj(148)" disabled></div><div class="m" id="149">149<input  id="i149" type="hidden" value="149"  name="miejLst" onclik="generuj(149)" disabled></div><div class="m" id="150">150<input  id="i150" type="hidden" value="150"  name="miejLst" onclik="generuj(150)" disabled></div><div class="m" id="151">151<input  id="i151" type="hidden" value="151"  name="miejLst" onclik="generuj(151)" disabled></div><div class="m" id="152">152<input  id="i152" type="hidden" value="152"  name="miejLst" onclik="generuj(152)" disabled></div><div class="m" id="153">153<input  id="i153" type="hidden" value="153"  name="miejLst" onclik="generuj(153)" disabled></div><div class="m" id="154">154<input  id="i154" type="hidden" value="154"  name="miejLst" onclik="generuj(154)" disabled></div><div class="m" id="155">155<input  id="i155" type="hidden" value="155"  name="miejLst" onclik="generuj(155)" disabled></div><div class="m" id="156">156<input  id="i156" type="hidden" value="156"  name="miejLst" onclik="generuj(156)" disabled></div><div class="m" id="157">157<input  id="i157" type="hidden" value="157"  name="miejLst" onclik="generuj(157)" disabled></div><div class="m" id="158">158<input  id="i158" type="hidden" value="158"  name="miejLst" onclik="generuj(158)" disabled></div><div class="m" id="159">159<input  id="i159" type="hidden" value="159"  name="miejLst" onclik="generuj(159)" disabled></div><div class="m" id="160">160<input  id="i160" type="hidden" value="160"  name="miejLst" onclik="generuj(160)" disabled></div><div class="m" id="161">161<input  id="i161" type="hidden" value="161"  name="miejLst" onclik="generuj(161)" disabled></div><div class="m" id="162">162<input  id="i162" type="hidden" value="162"  name="miejLst" onclik="generuj(162)" disabled></div><div class="m" id="163">163<input  id="i163" type="hidden" value="163"  name="miejLst" onclik="generuj(163)" disabled></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="w" ></div><div class="m" id="164">164<input  id="i164" type="hidden" value="164"  name="miejLst" onclik="generuj(164)" disabled></div><div class="m" id="165">165<input  id="i165" type="hidden" value="165"  name="miejLst" onclik="generuj(165)" disabled></div><div class="m" id="166">166<input  id="i166" type="hidden" value="166"  name="miejLst" onclik="generuj(166)" disabled></div><div class="m" id="167">167<input  id="i167" type="hidden" value="167"  name="miejLst" onclik="generuj(167)" disabled></div><div class="m" id="168">168<input  id="i168" type="hidden" value="168"  name="miejLst" onclik="generuj(168)" disabled></div><div class="m" id="169">169<input  id="i169" type="hidden" value="169"  name="miejLst" onclik="generuj(169)" disabled></div><div class="m" id="170">170<input  id="i170" type="hidden" value="170"  name="miejLst" onclik="generuj(170)" disabled></div><div class="m" id="171">171<input  id="i171" type="hidden" value="171"  name="miejLst" onclik="generuj(171)" disabled></div><div class="m" id="172">172<input  id="i172" type="hidden" value="172"  name="miejLst" onclik="generuj(172)" disabled></div><div class="m" id="173">173<input  id="i173" type="hidden" value="173"  name="miejLst" onclik="generuj(173)" disabled></div><div class="m" id="174">174<input  id="i174" type="hidden" value="174"  name="miejLst" onclik="generuj(174)" disabled></div><div class="m" id="175">175<input  id="i175" type="hidden" value="175"  name="miejLst" onclik="generuj(175)" disabled></div><div class="m" id="176">176<input  id="i176" type="hidden" value="176"  name="miejLst" onclik="generuj(176)" disabled></div><div class="m" id="177">177<input  id="i177" type="hidden" value="177"  name="miejLst" onclik="generuj(177)" disabled></div><div class="m" id="178">178<input  id="i178" type="hidden" value="178"  name="miejLst" onclik="generuj(178)" disabled></div><div class="m" id="179">179<input  id="i179" type="hidden" value="179"  name="miejLst" onclik="generuj(179)" disabled></div><div class="m" id="180">180<input  id="i180" type="hidden" value="180"  name="miejLst" onclik="generuj(180)" disabled></div><div class="m" id="181">181<input  id="i181" type="hidden" value="181"  name="miejLst" onclik="generuj(181)" disabled></div><div class="m" id="182">182<input  id="i182" type="hidden" value="182"  name="miejLst" onclik="generuj(182)" disabled></div><div class="m" id="183">183<input  id="i183" type="hidden" value="183"  name="miejLst" onclik="generuj(183)" disabled></div><div class="m" id="184">184<input  id="i184" type="hidden" value="184"  name="miejLst" onclik="generuj(184)" disabled></div><div class="w" ></div><div class="w" ></div>');
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

    <script>
        function zajete(){
            var d="i"
            var o=1;
            <c:forEach items="${miejsca}" var="miejsce">
            if("${miejsce.status}"=="1"){
                var c=document.getElementById(o);
                c.className="z";
                c.innerHTML="";
                var i=d+o;
                var h=document.getElementById(i);
                h.name="miejList";
            }
            o++;

            </c:forEach>



        }

    </script>

    <script>
        function SprawdzMiejsca() {

            var a=document.getElementsByClassName("wybrane");
            if(a.size != null){
                var v=document.getElementById("zarezerwuj").disabled=false;
            }
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
                c=document.getElementById(b)
                c.className= "fotel2";
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
    <div class="thanks" style="color:white; text-align: center;" >
            <h1>Dziękujemy za zakup biletów w kinie Fenix!</h1>
            <BR>
            <h1>  Miłego oglądania !</h1>
<br>

        <a href="${pageContext.request.contextPath}/strona?dzienid=0" > <input   type="button" value="Powrót"  style="min-width: 150px; border:outset 2px white;border-radius: 0;font-size: 22px;"/></a>



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




<div class="stopka " >


    <p>Wszystkie prawa zastrzeżone &copy; 2019 Maciej Matyaszek</p>



</div>

</body>

</html>
