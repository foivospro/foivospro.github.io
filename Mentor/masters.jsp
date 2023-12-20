<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="head.jsp" %>
</head>

<body>
  <%
  User user = (User)session.getAttribute("user");	
  MasterDAO md = new MasterDAO();

  if (user == null) {
  %>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">
  
        <h1 class="logo me-auto"><a href="index.jsp" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a></h1>
  
        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
            <li><input type="search_home" placeholder="  Search Masters..."></li>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li> 
            <li class="active"><a href="masters.jsp">Masters</a></li> 
            <li><a href="questionnaire.jsp">Questionnaire</a></li>    
            <li><a href="contact.jsp">Contact</a></li>        
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
          <li><input type="search_home" placeholder="  Search Masters..."></li>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="about.jsp">About</a></li> 
          <li class="active"><a href="masters.jsp">Masters</a></li> 
          <%
          if (idquestionnaire == null || idquestionnaire == -1){
          %>
          <li><a href="questionnaire.jsp">Questionnaire</a></li>   
          <%
          }else{
          %>
          <li><a href="results.jsp">Results</a></li>  
          <%
          }
          %>
          <li><a href="contact.jsp">Contact</a></li>        
          <li><a href="logout.jsp">Log out | <%=user.getFirstname()%> <%=user.getLastname()%> </a></li> 
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->
  <%
  } 
  %>	
  <main id="main" data-aos="fade-in">
      <!-- ======= Breadcrumbs ======= -->
      <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
          <h2>Masters</h2>
          <p>In this section you can see all Masters </p>
        </div>
      </div><!-- End Breadcrumbs -->
    <br>
    <section id="courses" class="courses">
      <div class="container" data-aos="fade-up">
        <div class="row" data-aos="zoom-in" data-aos-delay="100">
      <% List <Master> allmasters = md.getAllMasters();
         for (Master m: allmasters) {  %>   
          <div class="col-lg-12 col-md-12 d-flex align-items-stretch justify-content-center">
            <div class="course-item">
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4><%=m.getName()%></h4>
                  <p class="year"><%=m.getCost()%>€</p>
                </div>

                <h3><a href="masterdetails.jsp?masterid=<%=m.getIdMaster()%>"><%=m.getTitle()%></a></h3>
                <p><%=m.getDescription()%></p>
                <div class="trainer d-flex justify-content-between align-items-center">
                  <div class="trainer-profile d-flex align-items-center">
                    <img src="#" class="img-fluid" alt="">
                    <span><%=m.getUniversity()%></span>
                  </div>
                  <a href="masterdetails.jsp?masterid=<%=m.getIdMaster()%>" class="btn-get-started">For more details click here </a>
                </div>
              </div>
            </div>
          </div> <!-- End Course Item-->
   <% }
%>
</div>
</div>
</section><!-- End Courses Section -->
</main><!-- End #main -->

<%@ include file="footer.jsp" %>

</body>

</html>
