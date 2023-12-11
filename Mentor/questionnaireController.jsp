<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<!-- java import 
<%@ page import="...." %> 
-->

<%
User user = (User)session.getAttribute("user");		

<!-- Verify that all radio buttons have been selected -->
for (int i = 1; i <= 20; i++) {
    String paramName = "rating" + i;
    String ratingValue = request.getParameter(paramName);
    if (ratingValue == null) {
        request.setAttribute("message", "You have not checked all the radio-buttons");
        break;
%>
        <jsp:forward page="form.jsp"/>
<%
        }

<!-- Check if user is logged in -->
if (user == null) {
        <!-- προχειρο μνμ -->
        request.setAttribute("message", "για να απαντησεις το ερ θα πρεπει να εχεις κανει λογκ ιν");
%>

    <jsp:forward page="login.jsp"/>

<% }else {
        
        user.setIdQuestionnaire(user.getIdUser()+100); 
        int [] score = new int[19];
        for (int i = 1; i <= 20; i++) {
                String paramName = "rating" + i;
                String ratingValue = request.getParameter(paramName);
                score[i-1] = ratingValue;
        }
         <!-- εδω θα καλει της μεθοδους της q.java-->
        Questionnaire q = new Questionnaire();
        q.insertAnswers(score);
        q.updateCategoryScore(score);
        q.topCategories();



}
%>

