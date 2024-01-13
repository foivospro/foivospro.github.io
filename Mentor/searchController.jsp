<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*,java.util.List,java.util.ArrayList" %>


<% String keyword = request.getParameter("keyword");%>

<%
    if (keyword==null || keyword.length()==0) {
%>
        <jsp:forward page="index.jsp"/>
<%
    }else{
        MasterDAO md = new MasterDAO(); 
        ArrayList<Master> results = md.search(keyword);
        if (!results.isEmpty()){
            session.setAttribute("results",results); 
            %>
            <jsp:forward page="searchResults.jsp"/>
<%
        }else{
            request.setAttribute("search_message","Your search doesn't match with any Master. View all");
            %>
            <jsp:forward page="masters.jsp"/>
<%
        }
    }
%>