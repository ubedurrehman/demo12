<%@ page import="entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%
       User user=(User) session.getAttribute("currentUser");
       if(user==null){
           response.sendRedirect("login.jsp");
       }

%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%= user.getName()%>

</body>
</html>
