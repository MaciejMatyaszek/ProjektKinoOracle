<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

${pageContext.request.contextPath}<html><c:forEach var="tempClient" items="${seans}">
                <tr>
                    <td>${tempClient.id_seansu}</td>
                    <td>${tempClient.data}</td>
                    <td>${tempClient.sala.id_sali}</td>
                    <td>${tempClient.wolnemiejsca}</td>

                </tr>
            </c:forEach>



</html>