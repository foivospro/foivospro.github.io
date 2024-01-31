<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page errorPage="appError.jsp" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="head.jsp" %>
</head>

<body>

 
  
  <%@ include file="navbar.jsp" %>
  <%
  } 

 
  MasterDAO masterDao = new MasterDAO(); 
  String masterid = request.getParameter("masterid");
  int masteridint = Integer.parseInt(masterid);
  Master master = masterDao.getMasterbyId(masteridint);
  UserDAO userdao;
  int userid;
  %>	
  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Master Details</h2>
        <p></p>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Cource Details Section ======= -->
    <section id="course-details" class="course-details">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-8">

            <h3><%=master.getTitle()%></h3>
            <p>
              <%=master.getDescription()%>
          </div>
          <div class="col-lg-4">

            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>University</h5>
              <p><a href="#"><%=master.getUniversity()%></a></p>
            </div>

            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Master Fee</h5>
              <p><%=master.getCost()%> €</p>
            </div>

            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Duration</h5>
              <p><%=master.getDuration()%></p>
            </div>

            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Start date</h5>
              <p>Mid - October</p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Cource Details Section -->

    <!-- ======= Cource Details Tabs Section ======= -->
    <section id="cource-details-tabs" class="cource-details-tabs">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Information</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">Regulation</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Other</a>
              </li>
           
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Information</h3>
                    <p class="fst-italic"><%=master.getDescription()%>
                    </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/course-details-tab-1.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Regulation</h3>
                    <p class="fst-italic"><%=master.getDescription()%>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/course-details-tab-2.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Other</h3>
                   <a href="https://d3nhtj3o1tvydx.cloudfront.net/filer_public/aa/c6/aac64a93-1813-4f5b-96d7-eddd4c25a022/episteme_dedomenon_kai_mekhanike_mathese_watermark.pdf" </a>
                    <p>ΦΕΚ here.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/courses-details-tab-3.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              
              
            </div>
          </div>
        </div>

      </div>
      <br>
      <br>
      <div class="text-center">
<%  User user1 = (User)session.getAttribute("user");	
        if (user1 != null) { 
          UserDAO userdao1 = new UserDAO();
          int userid1 = userdao1.getIdUserDB(user);   
          userdao1.updateUserMaster(userid1, master.getIdMaster()); %>
         <a href="<%=master.getUrlform()%>" class="get-started-btn">Visit University Website</a>

        <%}else{ %>
          
          <form action="login.jsp"  method="post">
            <input type="hidden" name="url" value="<%=master.getUrlform()%>">
            <input type="submit" value="Visit University Website" class="get-started-btn">
        </form>

       <% } %>
      </div>
    </section><!-- End Cource Details Tabs Section -->

  </main><!-- End #main -->

<%@ include file="footer.jsp" %>

</body>

</html>