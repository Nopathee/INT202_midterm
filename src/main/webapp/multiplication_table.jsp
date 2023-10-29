<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: INT202&204
  Date: 9/22/2023
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>MultiplicationTable</title>
</head>
<body>
<c:if test="${message == null}">
    <h3>Multiple Table::</h3>
    <hr>
    <table style="width: 20%">
        <tr>
            <td colspan="5" style="background-color: cadetblue">MT for ${param.number}</td>
        </tr>
        <c:forEach begin = "1" end="12" var="n">
            <tr>
                <td class="number"> ${param.number} </td>
                <td> x </td>
                <td class = "number">${n} </td>
                <td> = </td>
                <td class ="number"> ${param.number * n}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test = "${error != null}">
    <h3 style="color : red">
        Error : ${requestScope.error}
        (${param.number != null || param.number == "" ? "Null/Empty" : param.number}
    </h3>
</c:if>
<hr>
Your browser: ${header['User-Agent']}

</body>
</html>
