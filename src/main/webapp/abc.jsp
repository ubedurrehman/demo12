<%--
  Created by IntelliJ IDEA.
  User: The Networks
  Date: 5/31/2024
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>this is test</h1>
            <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/techblog" user="root" password="root" var="ds"></sql:setDataSource>
            <sql:query dataSource="${ds}" var="rs">select * from user;</sql:query>

            <table>
                <tr>
                    <td>User Id</td>
                    <td>User Name</td>
                    <td>User Email</td>
                    <td>User Password</td>
                    <td>User Gender</td>
                    <td>User About</td>
                </tr>
                <c:forEach items="${rs.rows}" var="row">
                <tr>
                    <td> <c:out value="${row.id}"></c:out> </td>
                    <td><c:out value="${row.name}"></c:out></td>
                    <td><c:out value="${row.email}"></c:out></td>
                    <td> <c:out  value="${row.password}"></c:out></td>
                    <td> <c:out value="${row.gender}"></c:out> </td>
                    <td> <c:out value="${row.about}"></c:out> </td>

                </tr>

                </c:forEach>
            </table>

</body>
</html>
