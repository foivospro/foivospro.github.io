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

  <%}
  
  MasterDAO mad = new MasterDAO();
  UserDAO usd = new UserDAO(); %>

 

  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>About Us</h2>
        <p>In this section you can learn more about us like our mission, our values and our team! </p>
      </div>
    </div><!-- End Breadcrumbs -->

      <!-- ======= About Section ======= -->
      <section id="about" class="about">
        <div class="container" data-aos="fade-up">
          <div class="row mx-auto">
            <div class="col-lg-3 pt-4 order-1 order-lg-1">
              <h3>What is our mission?</h3>
              <p class="fst-italic">
               Our mission is to make it easier for you to find the right Master's degree to choose and unlock your career path.
              </p>
            </div>
            <div class="col-lg-9 order-2 order-lg-1" data-aos="fade-left" data-aos-delay="100">
              <video width="1000" height="350"  autoplay muted>
                  <source src="assets/img/video.mp4" type="video/mp4">
                  Your browser does not support the video tag.
              </video>
          
              <!-- Προσθήκη media queries για φορητές συσκευές -->
              <style>
                  @media (max-width: 768px) {
                      .col-lg-9 video {
                          width: 100%;
                          height: auto;
                      }
                  }
              </style>
          </div>
          </div>
          <br>
          <div class="row mx-auto ">
            <div class="col-lg-8 pt-4 pt-lg-0 order-2 order-lg-1 content">
               <h3>What are our values?</h3>
               <ul>
                 <li><i class="bi bi-check-circle"></i><b>Continuous Learning and Growth</b>- Foster an environment where graduates can continue to learn and develop their skills or knowledge</li>
                 <li><i class="bi bi-check-circle"></i> <b>Empowerment</b> - Empower learners to take control of their own education</li>
                 <li><i class="bi bi-check-circle"></i> <b>Flexibility</b> -  Satisfy each graduate's educational needs and preferences</li>
                 <li><i class="bi bi-check-circle"></i> <b>Quality Content</b> -  Offer accurate, up-to-date information</li>
               </ul>
            </div>
            <div class="col-lg-4 pt-4 pt-lg-1 order-2 order-lg-1 content">
              
              <h3>What makes us different from others?</h3>
               <p> In our webside, exept from browsing to thousands of master's degrees, you can also find what field of computer science is best for you based on your knowledge and personality.<br> 
              </p>
           </div>
          </div>
        </div>


        <div class="text-center">
          <a href="questionnaire.jsp" class="get-started-btn">Unlock your career path!</a> 
        </div>
    
       
      </section><!-- End About Section -->

   <!-- ======= Counts Section ======= -->
   <section id="counts" class="counts section-bg">
    <div class="container">

      <div class="row counters">

        <div class="col-lg-13 col-6 text-center">
          <span data-purecounter-start="0" data-purecounter-end=" <%=usd.getUsers().size()%>" data-purecounter-duration="1" class="purecounter"></span>
          <p>Users</p>
        </div>

        <div class="col-lg-13 col-6 text-center">
          <span data-purecounter-start="0" data-purecounter-end="<%=mad.getAllMasters().size()%>" data-purecounter-duration="1" class="purecounter"></span>
          <p>Masters</p>
        </div>

       

      </div>

    </div>
  </section><!-- End Counts Section -->
    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Our Team</h2>
          <p>Who we are</p>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                  <h3>Dimitra Gerontaki </h3>
                  <h4>Management Science and Technology Student</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                  <h3>Adriana Lazana </h3>
                  <h4>Management Science and Technology Student</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                  <h3>Xrysanthi Okka </h3>
                  <h4>Management Science and Technology Student</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                  <h3>Foivos Proestakis </h3>
                  <h4>Management Science and Technology Student</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

  </main><!-- End #main -->

<%@ include file="footer.jsp" %>

</body>

</html>
