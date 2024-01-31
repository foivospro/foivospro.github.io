<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%  
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String url = request.getParameter("url");
        UserDAO userdao = new UserDAO();

        try {
            User user = userdao.authenticate(email, password);
            session.setAttribute("user", user); 



            if(url != null){
                response.sendRedirect(url);
            } else { %>
%>
                <jsp:forward page="index.jsp"/>
<%
           }
        } catch (Exception e) {
            request.setAttribute("message", e.getMessage()); %>
            <jsp:forward page="login.jsp"/>
<%      }

 %>     

 