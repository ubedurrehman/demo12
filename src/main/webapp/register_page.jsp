<%--
  Created by IntelliJ IDEA.
  User: The Networks
  Date: 3/14/2024
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
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
<%@include file="normal_navbar.jsp"%>
<main class="primary-background banner-background" style="padding-bottom: 80px;">
    <div class="container">
        <div class="col-md-6 offset-md-3 ">
            <div class="card">
                <div class="card-header text-center primary-background text-white" >
                    <span class="fa fa-3x fa-user-circle"></span>
                    <br>
                    Register Here
                </div>
                <div class="card-body">
                    <form id="reg-form" action="RegisterServlet" method="POST">
                        <div class="form-group">
                            <label for="user_name">User Name</label>
                            <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Name">

                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>

                        <div class="form-group">
                            <label for="gender">Select Gender</label>
                            <br>
                            <input type="radio" id="gender" value="Male" name="gender">Male
                            <input type="radio" id="female" value="Female" name="gender">Female
                        </div>

                        <div class="form-group">
                            <textarea name="about" class="form-control" id="" rows="5" placeholder="Enter Something About Your Self"></textarea>
                        </div>

                        <div class="form-check">
                            <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">agree terms and condition</label>
                        </div>
                        <br>
                        <div class="container text-center" id="loader" style="display: none">
                            <span class="fa fa_refresh fa-spin fa-3x" ></span>
                            <h4>Please wait...</h4>
                        </div>
                        <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>

                    </form>
                </div>

            </div>
        </div>
    </div>
</main>



<%--    javascript--%>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxy/1.6.1/scripts/jquery.ajaxy.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
