<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>MasterMe</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/css/loginstyle.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>


<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<div class="text-center">
    <div class="container">
        <%
        String url = request.getParameter("url");
        if (url!=null) { 
    %>



    <% if(request.getAttribute("message") != null) { %>		
        <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
    <% } 

   if(request.getAttribute("messageSuccess") != null) { %>		
        <div class="alert alert-success text-center" role="alert"><%=(String)request.getAttribute("messageSuccess") %></div>
    <% } %>

            <div class="alert alert-danger text-center" role="alert">First you should have logged in.</div>


                    
        <div class="row justify-content-center align-items-cente">
            <div class="col-lg-5 col-md-7">
                <div class="panel border bg-white">
                    <div class="panel-heading">
                        <h3 class="pt-3 font-weight-bold">Login</h3>
                    </div>

                    <div class="panel-body p-3">
                        <form action="loginController.jsp" method="POST">
                            <input type="hidden" name="url" value="<%=url%>">
                            <div class="form-group py-2">
                                <div class="input-field">
                                    <i class="bi bi-person"></i>
                                    <input type="text" placeholder="Enter your Email" name="email" required>
                                </div>
                            </div>

                            <div class="form-group py-1 pb-2">
                                <div class="input-field">
                                    <i class="bi bi-shield-lock"></i>
                                    <input type="password" placeholder="Enter your Password" name="password"required>
                                </div>
                            </div>

                            <div class="text-center">
                                <button type="submit" style="color:#c91603;" class="btn-form" >Login</button>
                            </div>

                            <div class="text-center pt-4 text-muted">Don't have an account? <a href="register.jsp">Sign up</a></div>
                            <div class="goback"><a href="index.jsp">Go Back to HomePage</a>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>





    <%
        }else{
    %>


        <% if(request.getAttribute("message") != null) { %>		
            <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
        <% } 

       if(request.getAttribute("messageSuccess") != null) { %>		
            <div class="alert alert-success text-center" role="alert"><%=(String)request.getAttribute("messageSuccess") %></div>
        <% } %>




        <div class="row justify-content-center align-items-cente">
            <div class="col-lg-5 col-md-7">
                <div class="panel border bg-white">
                    <div class="panel-heading">
                        <h3 class="pt-3 font-weight-bold">Login</h3>
                    </div>

                    <div class="panel-body p-3">
                        <form action="loginController.jsp" method="POST">
                            
                            <div class="form-group py-2">
                                <div class="input-field">
                                    <i class="bi bi-person"></i>
                                    <input type="text" placeholder="Enter your Email" name="email" required>
                                </div>
                            </div>

                            <div class="form-group py-1 pb-2">
                                <div class="input-field">
                                    <i class="bi bi-shield-lock"></i>
                                    <input type="password" placeholder="Enter your Password" name="password"required>
                                </div>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn-form">Login</button>
                            </div>

                            <div class="text-center pt-4 text-muted">Don't have an account? <a href="register.jsp">Sign up</a></div>
                            <div class="goback"><a href="index.jsp">Go Back to HomePage</a>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>

        <%}%>
    </div>
</div>
