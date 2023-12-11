<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page import="java.util.ArrayList" %>


<%  
String name = request.getParameter("name");
String surname = request.getParameter("surname");
String email = request.getParameter("email");
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");
ArrayList<String> list = new ArrayList<String>();



boolean flag = true;

if (name == null || name.length() < 3) {
    list.add("1. Name should have at least 3 characters.");
    flag = false;
}
if (surname == null || surname.length() < 3) {
    list.add("2. Surname should have at least 3 characters.");
    flag = false;
}

if (password == null || password.length() < 3) {
    list.add("4. Password should have at least 3 characters.");
    flag = false;
}
if (confirm == null || !confirm.equals(password)) {
    list.add("5. Confirmation password does not match.");
    flag = false;
}


if (flag==true) { 
    try{
        UserDAO userdao = new UserDAO();
        userdao.register(new User(name,surname,email,password)); %>
        request.setAtrribute("Message", "Sing up !")
        <jsp:forward page="login.jsp"/>
        

    <% } catch (Exception e) {%>
        request.setAtrribute("Message", "NO Sing up !")
        <jsp:forward page="signup.jsp"/>

         
<%} } else { %>
    <jsp:forward page="signup.jsp"/>
    request.setAtrribute("Message", "NO Sing up !")
    <%}%>


