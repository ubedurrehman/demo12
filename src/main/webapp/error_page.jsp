<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 3/18/2024
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title>Sorry ! something went wrong....</title>
    <%--    css--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mycss.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        banner-background{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 70% 100%, 26% 90%, 0 100%, 0 0);
        }
    </style>
</head>
<body>
<div class="container  text-center">
    <img style="width: 50vh" src="img/computer.png" class="img-fluid">
    <h3 class="display-1"> sorrry ! something went wrong...</h3>
    <%= exception %>
    <a  href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>
</div>
</body>
</html>
