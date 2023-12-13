<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>

<!-- Check if user is logged in -->
<%
User user = (User)session.getAttribute("user");		
if (user == null) {
        request.setAttribute("message", "To view the Questionnaire results, please log in.");
        request.setAttribute("returnUrl", "");

%>

    <jsp:forward page="login.jsp"/>

<% }else {
%>
        <!-- Verify that all radio buttons have been selected -->
<%
        for (int i = 1; i <= 20; i++) {
                String paramName = "rating" + i;
                String ratingValue = request.getParameter(paramName);
                if (ratingValue == null) {
                        request.setAttribute("message", "You have not checked all the radio-buttons");
        %>
                        <jsp:forward page="form.jsp"/>
        <%
                }
        }

        Questionnaire q = new Questionnaire();
        UserDAO userdao = new UserDAO();
        int idUser = userdao.getIdUserDB(user);
        q.setIdQuestionnaire(idUser+100); 
        int idQuestionnaire = q.getIdQuestionnaire();
        user.setIdQuestionnaire(idQuestionnaire);
        int top3ids[]= new int[3];
        int [] score = new int[20];
        for (int j = 0; j < 20; j++) {  
                request.setAttribute("message", j);
                String paramName = "rating" + Integer.toString(j + 1); 
                String ratingValue = request.getParameter(paramName);
                int rating = Integer.parseInt(ratingValue);
                q.InsertAnswer(idQuestionnaire,rating,(j+1));           
         }
         q.InsertCategoryScore(idQuestionnaire);
         session.setAttribute("top3",q.topCategories(idQuestionnaire)); 
         userdao.updateIdQuestionnaire(idUser,idQuestionnaire);   %>
         <jsp:forward page="coursesController.jsp"/>
         <%       
}
%>


