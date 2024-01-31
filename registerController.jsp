<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page import="java.util.ArrayList" %>


<%  
String name = request.getParameter("name");
String surname = request.getParameter("surname");
String email = request.getParameter("email");
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");




boolean flag = true;

if (name == null || name.length() < 3) {
    //list.add("Name should have at least 3 characters.");
    flag = false;
}
if (surname == null || surname.length() < 3) {
    //list.add("Surname should have at least 3 characters.");
    flag = false;
}

if (password == null || password.length() < 3) {
    //list.add("Password should have at least 3 characters.");
    flag = false;
}
if (confirm == null || !confirm.equals(password)) {
    //list.add("Confirmation password does not match.");
    flag = false;
}


if (flag==true) { 
    try{
        UserDAO userdao = new UserDAO();
        User user = new User(name,surname,email,password);
        userdao.register(user); 
        int idUser = userdao.getIdUserDB(user);
        user.setIdUser(idUser);
        request.setAttribute("messageSuccess", "Registration Successful!");%>
        <jsp:forward page="login.jsp"/>
        

    <% } catch (Exception e) {
        request.setAttribute("message", e.getMessage()); %>
        <jsp:forward page="register.jsp"/>

    <%}    
    } else { 
    request.setAttribute("message", "Registration Failed. Please try again.");%>
    <jsp:forward page="register.jsp"/>
    <%}%>


