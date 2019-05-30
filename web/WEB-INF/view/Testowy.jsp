<%--
  Created by IntelliJ IDEA.
  User: Maciej
  Date: 2019-05-23
  Time: 12:39
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
    <title>Save Seans</title>
    <meta charset="utf-8">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.js"></script>

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
<x></x>    <script>
        function wow(var a) {


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
                    document.write("<div  class=\"fotel2\" id=\"${a.id_miejsca}\" > </div>")
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

    <style>
        .body{


        }

        .container{
            max-width: 1140px;
            margin-right: 300px;
            margin-left:300px;
            max-height: 600px;

        }
        .flex-container {
            display: flex;
            flex-wrap: wrap;
            background-color: aqua;
            width: 80%;
            height: 80%;



        }

        .flex-container > div {

            margin:2px;
            text-align: center;

            font-size: 10px;
        }
        .fotel{
            background-color: green;
            width: 25px;
            height: 25px;


            cursor: pointer;




        }
        .fotel1{
            background-color: yellow;
            width: 25px;
            height: 15px;


        }
        .fotel2{
            background-color: red;
            width: 25px;
            height: 25px;


        }


    </style>

</head>



<body>


<div class="container"
<form:form action="odpalsie"  >
    <div class="row">
        <div class="col-2">
        </div>
             <div class="flex-container col-8">

                 <script>

                     wypisz()
                 </script>



        </div>
        <div class="col-2">

        </div>


    </div>

    </div>




    <div class="fotel" id="1" onclick="myFunction()"></div>
</div>






</div>

    <input type="submit" value="Zapisz" class="save" />


</form:form>
</div>
</body>






</html>
