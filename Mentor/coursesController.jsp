<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page import="java.util.ArrayList" %>


<%int[] top3Array = (int[]) session.getAttribute("top3");
MasterDAO masterdao = new MasterDAO();
Arraylist<Master> masters = new Arraylist<Master>();

for(int category:top3Array){ %>
    masters.add(masterdao.getMaster(int category)); 
 }
 session.setAttribute("top3masters", masters);%>
 <jsp:forward page="courses.jsp"/>

