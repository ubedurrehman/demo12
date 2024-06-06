<%--
  Created by IntelliJ IDEA.
  User: The Networks
  Date: 3/13/2024
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="dao.ConnectionProvider" %>
<%--<%@ page import="helper.ConnectionProvider" %>--%>
<html>
<head>
    <title>Title</title>
    <%--    css--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mystyle.css " type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link src="js/myjs.js" type="text/javascript">


 <style>
        banner-background{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 70% 100%, 26% 90%, 0 100%, 0 0);
        }
    </style>
</head>

<body>
<%--    navbar--%>
<%@include file="normal_navbar.jsp" %>
<div class="container-fluid p-0 m-0 ">
    <div class="jumbotron primary-background text-white">
        <div class="container">


            <h3 class=""display-3> About Company</h3>
            <p>Centegy Technologies, is a technology solutions provider focusing on the licensing, implementation and support of enterprise applications across Retail and Insurance industries.
                Our motto for Centegy Technologies is ‘People. Expertise. Integrity’. </p>
            <p>This is quite apt considering the expertise and knowledge our teams have gained by implementing our solutions and operating in these industries since 1986.
                Apart from technology solutions, we also offer strategic advise to our clients on how to penetrate new markets, increase market share and further leverage technology to establish leadership positions</p>
            <button class="btn btn-outline-light btn-lg"> <span class="fa fa-external-link"></span> Start ! its Free</button>
            <a href="login_page.jsp " class="btn btn-outline-light btn-lg">  <span class="fa fa-user-circle fa-spin"></span> Login</a>
        </div>
    </div>
</div>
<div class="container">
    <div class="row mb-2">
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming Language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read More</a>
                </div>
            </div>

        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming Language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read More</a>
                </div>
            </div>

        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming Language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read More</a>
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming Language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read More</a>
                </div>
            </div>

        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming Language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read More</a>
                </div>
            </div>

        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming Language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read More</a>
                </div>
            </div>

        </div>
    </div>
</div>




<%--    javascript--%>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" ></script>



</body>
</html>
