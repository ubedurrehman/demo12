<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<a href="abc.jsp">Hello Servlet</a>
        <h1>Jstl Tag</h1>

        <c:set var="i" value="-123" scope="application"></c:set>
        <h1><c:out value="${i}"></c:out> </h1>

<%--        <c:remove var="i"></c:remove>--%>
        <h1> <c:out value="${i}"> dfult</c:out></h1>

        <hr>
        <c:if test="${i==123}">
            <h2>This Ture Condition</h2>
        </c:if>

<%----%>

        <c:choose>
            <c:when test="${ i>0 }">
                <h1>This Is My  Case First</h1>
                <h2>Number is Positive</h2>
            </c:when>



            <c:when test="${ i<0 }">
                <h1>This Is My Case Seocnd </h1>
                <h2>Number Is Negative  </h2>
            </c:when>


        <c:otherwise>
            <h1>Default case .. otherwise</h1>
            <h2>The Number Is O</h2>
        </c:otherwise>

        </c:choose>


        <c:forEach var="j"  begin="0" end="10">
            <h1>value of j is <c:out value="${j}"></c:out></h1>

        </c:forEach>



<%--<c:redirect url="https://www.google.com"></c:redirect>--%>










</body>
</html>