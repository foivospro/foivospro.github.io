<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
session.invalidate();
request.setAttribute("messageSuccess", "Logged out successfully!");
%>
<jsp:forward page="login.jsp" />

