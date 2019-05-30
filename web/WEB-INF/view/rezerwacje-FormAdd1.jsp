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
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style3.css">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-seans.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.js"></script>

    <script>
        function myFunction(){




            var c=document.getElementById("1")
            if(c.className=="fotel"){

                c.className="fotel1";}
            else {

                c.className="fotel";
            }





        }

    </script>
    <script>
        function wow(var a) {


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

    <script>
        function myFunction3(){
            var x = 99;
            var i = 0;
            <c:forEach items="${miejscaList}" var="elem">
                document.write( "<div value =\"${elem.id_seansu}\"  class= \"fotel\" id="+(1+i)+"  />" </div>")


            </c:forEach>

        }

    </script>

</head>



<body>

<div id="wrapper">
    <div id="header">
        <h2> Seans dodawanie</h2>
    </div>
</div>

<div id="container">
    <h3> Save Seans</h3>




<form:form action="showFormForAddDaneOsobowe"  method="get">
    <select name="test">
        <c:forEach items="${seansList}" var="element">

            <option value="${element.id_seansu}">${element.id_seansu}</option>

        </c:forEach>

    </select>

    <form:form action="saveRezerwacje"  method="post">


        <c:forEach items="${miejsca}" var="asd">


            <input type="checkbox" name="miejList" value="${asd.id_miejsca}"  />


        </c:forEach>





        <input type="submit" value="Zapisz" class="save" /></td>

    </form:form>


    </td>
    </tr>
    <tr>

    <tr>
        <td><label> </label></td>
        <td>

    </tr>


    </tbody>



    </table>





    <div style="clear:both" > </div>

    <p>

        <a href="${pageContext.request.contextPath}/showSeans"> Wroc do listy</a>


    </p>





    </form:form>


    </td>
    </tr>
    <tr>

    <tr>
        <td><label> </label></td>
        <td>
            <input type="submit" value="Zapisz" class="save" /> </td>
    </tr>


    </tbody>



    </table>





    <div style="clear:both" > </div>

    <p>

        <a href="${pageContext.request.contextPath}/showSeans"> Wroc do listy</a>


    </p>






    <div class="fotel" id="1" onclick="myFunction()"></div>
</div>






</div>







</body>






</html>
