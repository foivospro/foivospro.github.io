<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="head.jsp" %>
</head>

<body>
  <%
  User user = (User)session.getAttribute("user");	
  ArrayList<Master> masters = (Master) session.getAttribute("top3masters");

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
            <li class="active"><a href="courses.jsp">Masters</a></li> 
            <li><a href="form.jsp">Questionnaire</a></li>    
            <li><a href="contact.jsp">Contact</a></li>        
            <li><a href="login.jsp" button type="button" class="btn-get-started">Log in | Sign up</a></li>
    
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
      </div>
    </header><!-- End Header -->
  <%
  } else {	
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
            <li class="active"><a href="courses.jsp">Masters</a></li> 
            <li><a href="form.jsp">Questionnaire</a></li>    
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

    <br>
    <br>
    <br>
    <br>


    <!-- ======= Courses Section ======= -->
    <section id="courses" class="courses">
      <div class="container" data-aos="fade-up">
        <div class="row" data-aos="zoom-in" data-aos-delay="100">
          <div class="col-lg-12 col-md-12 d-flex align-items-stretch justify-content-center">
            <div class="course-item">
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4>Robotics</h4>
                  <p class="year">1 year</p>
                </div>

                <h3><a href="course-details.jsp">Robotics and Autonomous Systems Engineering</a></h3>
                <p>Become an expert in the fast-evolving word of robotics and equip yourself for a job in the industry of the future with this Robotics and Autonomous Systems Engineering programme from Edinburgh Napier University.</p>
                <div class="trainer d-flex justify-content-between align-items-center">
                  <div class="trainer-profile d-flex align-items-center">
                    <img src="assets/img/Edinburgh-Napier-University.jpg" class="img-fluid" alt="">
                    <span>Edinburgh Napier University</span>
                  </div>
                  <span>Edinburgh, United Kingdom</span>
                </div>
              </div>
            </div>
          </div> <!-- End Course Item-->

          <div class="col-lg-12 col-md-12 d-flex align-items-stretch justify-content-center mt-4 mt-md-0">
            <div class="course-item">
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4>Artificial Intelligence</h4>
                  <p class="year">3 years</p>
                  
                </div>

                <h3><a href="course-details.jsp">Artificial Intelligence and Robotics with Advanced Research</a></h3>
                <p>This new version of the Artifiacial Intelligence and Robotics with Advanced Research program from University of Hertfordshire haw been carefully designed to achieve appropriate levels of 
                  accreditation and the department is currently in touch with the BCS regarding continued accreditation.  </p>
                <div class="trainer d-flex justify-content-between align-items-center">
                  <div class="trainer-profile d-flex align-items-center">
                    <img src="assets/img/University_of_Hertfordshire.jpg" class="img-fluid" alt="">
                    <span>University of Hertfordshire</span>
                  </div>
                   <span> Hatfield, United Kingdom</span>
                </div>
              </div>
            </div>
          </div> <!-- End Course Item-->

          <div class="col-lg-12 col-md-12 d-flex align-items-stretch justify-content-center mt-4 mt-lg-0">
            <div class="course-item">
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4>Cyber Security</h4>
                  <p class="year">1 year</p>
                </div>

                <h3><a href="course-details.jsp">Cyber Security and Forensics</a></h3>
                <p>This Cyber Security and Forensics M.Sc. degree offered at the University of Westminster focusses on two aspects of Cyber Security: analysis and assessment of risk plus 
                  how to minimise it and how to extract and use digital information from a wide range of systems and devices.
                </p>
                <div class="trainer d-flex justify-content-between align-items-center">
                  <div class="trainer-profile d-flex align-items-center">
                    <img src="assets/img/UniWestminster.jpg" class="img-fluid" alt="">
                    <span>University of Westminster</span>
                  </div>
                  <span> London, University Kingdom</span>
                </div>
              </div>
            </div>
          </div> <!-- End Course Item-->
          
          <div class="col-lg-12 col-md-12 d-flex align-items-stretch justify-content-center mt-4 mt-lg-0">
            <div class="course-item">
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4>Theoretical Computer Science</h4>
                  <p class="year">2 years</p>
                </div>

                <h3><a href="course-details.jsp">Theoretical and Computational Methods</a></h3>
                <p>The Theoretical and Computational Methods programme offered by the University of Helsinki will give you a strong basis in the theoretical methods, modelling and 
                  and mathematical and numerical analysis within physics, mathematics, chemistry and/or computer science.
                </p>
                <div class="trainer d-flex justify-content-between align-items-center">
                  <div class="trainer-profile d-flex align-items-center">
                    <img src="assets/img/University_of_helsinki.jpg" class="img-fluid" alt="">
                    <span>University of Helsinki</span>
                  </div>
                  <span>Helsinki, Finland</span>
                </div>
              </div>
            </div>
          </div> <!-- End Course Item-->

          <div class="col-lg-12 col-md-12 d-flex align-items-stretch justify-content-center mt-4 mt-lg-0">
            <div class="course-item">
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4>Software Engineering</h4>
                  <p class="year">2 years</p>
                </div>

                <h3><a href="course-details.jsp">Software Engineering for Information Systems</a></h3>
                <p>In this Master of Software Engineering for Information Systems at Free University of Bozen-Bolzano, you will learn how to leverange next-technologiew such as Cloud Computing, Internet of Things and 
                  Analytics to create, connect, optimize and engineer innovative systems moving to the programatic application and commercialization on a rapid and large scale.
                </p>
                <div class="trainer d-flex justify-content-between align-items-center">
                  <div class="trainer-profile d-flex align-items-center">
                    <img src="assets/img/Free_University_of_Bozen-Bolzano.jpg" class="img-fluid" alt="">
                    <span> Free University of Bozen-Bolzano</span>
                  </div>
                  <span>Bozen-Bolzano, Italy</span>
                </div>
              </div>
            </div>
          </div> <!-- End Course Item-->

        </div>

      </div>
    </section><!-- End Courses Section -->

  </main><!-- End #main -->

  <%@ include file="footer.jsp" %>

</body>

</html>
