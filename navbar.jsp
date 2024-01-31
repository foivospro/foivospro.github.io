<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>


<%
User user = (User)session.getAttribute("user");		

if (user == null) {
%>
<head>
  <link rel="stylesheet" href="./assets/css/style.css">
</head>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
   
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.jsp" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a></h1>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li>
            <form action="searchController.jsp" method="POST" class="search-form">
              <div class="search-container">
                <input type="search_home" name="keyword" placeholder="Search Masters..." />
                <button type="submit" class="btn-search">
                  <i class="bi bi-search"></i>
                </button>
              </div>
            </form>
          </li>
          <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("index.jsp") ? "active" : ""  %>"><a href="index.jsp">Home</a></li>
          <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("about.jsp") ? "active" : ""  %>"> <a href="about.jsp">About</a></li> 
          <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("masters.jsp") ? "active" : ""  %>">
           <a href="masters.jsp">Masters</a></li> 
          <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("questionnaire.jsp") ? "active" : ""  %>"> <a href="questionnaire.jsp">Questionnaire</a></li>    
          <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("contact.jsp") ? "active" : ""  %>">  <a href="contact.jsp">Contact</a></li>        
          <li><a href="login.jsp" button type="button" class="btn-get-started">Log in | Sign up</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->
<%
} else {	
  UserDAO userdao = new UserDAO();
  int userid = userdao.getIdUserDB(user);
  Integer idquestionnaire = (Integer) userdao.getIdQuestionnaireDB(userid);
%>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">

  <div class="container d-flex align-items-center">

    <h1 class="logo me-auto"><a href="index.jsp" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a></h1>

    <nav id="navbar" class="navbar order-last order-lg-0">
      
      <ul>
        <li>
          <form action="searchController.jsp" method="POST" class="search-form">
            <div class="search-container">
              <input type="search_home" name="keyword" placeholder="Search Masters..." />
              <button type="submit" class="btn-search">
                <i class="bi bi-search"></i>
              </button>
            </div>
          </form>
        </li>
        <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("index.jsp") ? "active" : ""  %>"><a href="index.jsp">Home</a></li>
        <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("about.jsp") ? "active" : ""  %>"><a href="about.jsp">About</a></li> 
        <li  class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("masters.jsp") ? "active" : ""  %>">
          <a href="masters.jsp">Masters</a></li> 
        <%
        if (idquestionnaire == null || idquestionnaire == -1){
        %>
        <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("questionnaire.jsp") ? "active" : ""  %>"> <a href="questionnaire.jsp">Questionnaire</a></li>   
        <%
        }else{
        %>

        <li class="dropdown"><a href="#"><span>Questionnaire</span> <i class="bi bi-chevron-down"></i></a>
          <ul>
            <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("results.jsp") ? "active" : ""  %>"><a href="results.jsp">Results</a></li>
            <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("questionnaire.jsp") ? "active" : ""  %>"><a href="questionnaire.jsp">New Questionnaire</a></li>
          </ul>
        </li>
        <% }
        %>
        <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("contact.jsp") ? "active" : ""  %>"><a href="contact.jsp">Contact</a></li>        
        <li><a href="logout.jsp">Log out | <%=user.getFirstname()%> <%=user.getLastname()%> </a></li> 
      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>

    </nav><!-- .navbar -->
  </div>
</header><!-- End Header -->


















