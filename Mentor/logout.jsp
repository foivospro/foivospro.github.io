<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
session.invalidate();
request.setAttribute("message", "Logged out successfully!");
%>
<jsp:forward page="login.jsp" />

