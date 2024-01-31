<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page import="java.util.List" %>
<%@ page errorPage="appError.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="head.jsp" %>
</head>
<body>

  <%
  User user = (User)session.getAttribute("user");	
  UserDAO userdao = new UserDAO();	
  Questionnaire q = new Questionnaire();
  
  
  if (user == null) {
    request.setAttribute("message", "To answer the Questionnaire , please log in.");
  %>
  <jsp:forward page="login.jsp"/>
  <%
  } else {
    int userid = userdao.getIdUserDB(user);
    int idquestionnaire = userdao.getIdQuestionnaireDB(userid);

    if(idquestionnaire == -1){ %>
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
          <li><a href="index.jsp">Home</a></li>
          <li><a href="about.jsp">About</a></li>
          <li><a href="masters.jsp">Masters</a></li> 
          <li class="active"><a href="questionnaire.jsp">Questionnaire</a></li>   
          <li><a href="contact.jsp">Contact</a></li>        
          <li><a href="logout.jsp">Log out | <%=user.getFirstname()%> <%=user.getLastname()%> </a></li> 
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->
    <%} else { 
  
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
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li> 
            <li><a href="masters.jsp">Masters</a></li> 
            <li class="dropdown"><a href="#"><span>Questionnaire</span> <i class="bi bi-chevron-down"></i></a>
              <ul>
                <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("results.jsp") ? "active" : ""  %>"><a href="results.jsp">Results</a></li>
                <li class="<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1).equals("questionnaire.jsp") ? "active" : ""  %>"><a href="questionnaire.jsp">New Questionnaire</a></li>
              </ul>
            </li> 
            <li><a href="contact.jsp">Contact</a></li>        
            <li><a href="logout.jsp">Log out | <%=user.getFirstname()%> <%=user.getLastname()%> </a></li> 
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
      </div>
    </header><!-- End Header -->


    <%}
  } 
  %>	
     <!-- ======= Breadcrumbs ======= -->
     <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Questionnaire</h2>
        <p>Aren’t sure about what kind of master in computer science suits you the most? </p>
        <p>Here, by answering this simple questionnaire, we will find you the top 3 computer science fields that fit with your personality! </p>
      </div>
    </div><!-- End Breadcrumbs -->

<% if(request.getAttribute("message") != null) { %>		
      <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
<% 
} 
FormQuestions questions = new FormQuestions();
List<String> question = questions.getQuestions();
%>
  <!-- ======= Header ======= -->

  <!-- εδω θελει while για να δειχνει τις ερωτησεις- προσοχη οτι και τα name και ids (της φορμας html) πρεπει να παραγονται δυναμικα -->
  <section id="form" class="form">
    <div class="form-group" id="radio-buttons">
      <form action="questionnaireController.jsp" method="POST">
<%
for (int i = 0; i < question.size(); i++) {
%>
        <div class="text-center mb-1">
            <p><strong><%=i+1%>.<%=question.get(i)%></strong></p>
            <div class='d-inline mx-3'>Bad</div>
<%
  for (int j = 0; j < 5 ; j++) {
%>
            <input type="radio" id="rating<%=i+1%>.<%=j+1%>" name="rating<%=i+1%>" value="<%=j+1%>">
            <label for="rating<%=i+1%>.<%=j+1%>"><%=j+1%></label>
<%
  }
%>
            <div class='d-inline mx-3'>Excellent</div>
        </div>
<%
}
%>
      <div class="text-center" style="margin-top: 20px;">
        <button type="submit" class="btn btn-form">Submit</button>
      </div>
      </form>
    </div>
  </section>

<%@ include file="footer.jsp" %>

</body>

</html>
