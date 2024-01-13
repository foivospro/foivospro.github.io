<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*,java.util.List,java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="head.jsp" %>
</head>

<body>
  <% String keyword = request.getParameter("keyword");%>
  <%@ include file="navbar.jsp" %>	
  <% } %>
  <main id="main" data-aos="fade-in">
      <!-- ======= Breadcrumbs ======= -->
      <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
          <h2>Search for: <%=keyword%></h2>
          <p>In this section you can see your results</p>
        </div>
      </div><!-- End Breadcrumbs -->
    <br>
    <section id="courses" class="courses">
      <div class="container" data-aos="fade-up">
        <div class="row" data-aos="zoom-in" data-aos-delay="100">

<%
ArrayList<Master> results = (ArrayList<Master>)session.getAttribute("results");
            for (Master m : results) { %>   
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
                        <a href="masterdetails.jsp?masterid=<%=m.getIdMaster()%>" class="btn-get-started">More details</a>
                      </div>
                    </div>
                  </div>
                </div> <!-- End Course Item-->
        <%
    }
%>
      </div>
      </div>
      </section><!-- End Courses Section -->
      </main><!-- End #main -->
      
      <%@ include file="footer.jsp" %>
      
      </body>
      
</html>
