<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="head.jsp" %>
</head>

<body>

  <%
  User user = (User)session.getAttribute("user");		
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
            <li><a href="courses.jsp">Masters</a></li> 
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
            <li><a href="courses.jsp">Masters</a></li> 
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

            <h3>Επιστήμη Δεδομένων και Μηχανική Μάθηση</h3>
            <p>
              Η Σχολή Ηλεκτρολόγων Μηχανικών και Μηχανικών Υπολογιστών του Εθνικού Μετσόβιου Πολυτεχνείου (ΕΜΠ) σε συνεργασία με τις Σχολές Εφαρμοσμένων Μαθηματικών και Φυσικών Επιστημών, Πολιτικών Μηχανικών και Αγρονόμων και Τοπογράφων Μηχανικών του ΕΜΠ οργανώνει και λειτουργεί από το ακαδημαϊκό έτος 2018-2019 Διατμηματικό Πρόγραμμα Μεταπτυχιακών Σπουδών (ΔΠΜΣ) στο επιστημονικό πεδίο «Επιστήμη Δεδομένων και Μηχανική Μάθηση (Data Science and Machine Learning)».</p>
          </div>
          <div class="col-lg-4">

            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>University</h5>
              <p><a href="#">NTUA</a></p>
            </div>

            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Master Fee</h5>
              <p>0€</p>
            </div>

            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Duration</h5>
              <p>1.5 year</p>
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
                    <h3>Αντικείμενο του μεταπτυχιακού</h3>
                    <p class="fst-italic">Η Σχολή Ηλεκτρολόγων Μηχανικών και Μηχανικών Υπολογιστών του Εθνικού Μετσόβιου Πολυτεχνείου (ΕΜΠ) σε συνεργασία με τις Σχολές Εφαρμοσμένων Μαθηματικών και Φυσικών Επιστημών, Πολιτικών Μηχανικών και Αγρονόμων και Τοπογράφων Μηχανικών του ΕΜΠ οργανώνει και λειτουργεί από το ακαδημαϊκό έτος 2018-2019 Διατμηματικό Πρόγραμμα Μεταπτυχιακών Σπουδών (ΔΠΜΣ) στο επιστημονικό πεδίο «Επιστήμη Δεδομένων και Μηχανική Μάθηση (Data Science and Machine Learning)».

                      Η αλματώδης ανάπτυξη των υπολογιστικών συστημάτων (τόσο σταθερών όσο και κινητών) σε συνάρτηση με την ολοένα και μεγαλύτερη διείσδυση των ασύρματων και των ενσύρματων δικτύων έχουν ως συνέπεια την δημιουργία πολύ μεγάλων όγκων δεδομένων σε καθημερινή βάση. Η αποτελεσματική ανάλυση αυτών των δεδομένων μπορεί να προσφέρει ουσιαστικές λύσεις και να  βοηθήσει στη λήψη αποφάσεων σε διάφορα επίπεδα</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/course-details-tab-1.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Κανονισμός</h3>
                    <p class="fst-italic">Το Πρόγραμμα Μεταπτυχιακών Σπουδών (ΠΜΣ) απονέμει Δίπλωμα Μεταπτυχιακών Σπουδών στην περιοχή της Επιστήμης Δεδομένων και Μηχανικής Μάθησης (Data Science and Machine Learning) μετά από επιτυχή περάτωση του σχετικού κύκλου σπουδών.

                      Το Πρόγραμμα περιλαμβάνει δύο (2) εξάμηνα μαθημάτων και ένα (1) εξάμηνο εκπόνησης της μεταπτυχιακής Διπλωματικής Εργασίας (ΔΕ).
                      
                      Για την απόκτηση του Διπλώματος Μεταπτυχιακών Σπουδών απαιτείται η παρακολούθηση και επιτυχής εξέταση σε 12 μαθήματα, 6 έως 8 υποχρεωτικά (ομάδα Α) και 4 έως 6 κατ’ επιλογήν (ομάδα Β) που συνολικά αντιστοιχούν σε 60 πιστωτικές μονάδες, καθώς και η εκπόνηση και επιτυχής εξέταση της μεταπτυχιακής ΔΕ που ισοδυναμεί σε άλλες 30 πιστωτικές μονάδες.
                      
                      Τα μαθήματα (υποχρεωτικά και επιλογής) που διδάσκονται κάθε ακαδημαϊκό έτος καθορίζονται με αποφάσεις των αρμοδίων οργάνων και φαίνονται στον Οδηγό Σπουδών και στην Ενότητα Σπουδές>Μαθήματα της ιστοσελίδας του μεταπτυχιακού.</p>
                    </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/course-details-tab-2.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>ΦΕΚ</h3>
                   <a href="https://d3nhtj3o1tvydx.cloudfront.net/filer_public/aa/c6/aac64a93-1813-4f5b-96d7-eddd4c25a022/episteme_dedomenon_kai_mekhanike_mathese_watermark.pdf" </a>
                    <p>ΦΕΚ here.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/course-details-tab-3.png" alt="" class="img-fluid">
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
        <a href="login.jsp" class="get-started-btn">Visit University Website</a>
      </div>
    </section><!-- End Cource Details Tabs Section -->

  </main><!-- End #main -->

<%@ include file="footer.jsp" %>

</body>

</html>
