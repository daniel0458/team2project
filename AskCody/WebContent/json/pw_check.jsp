<%@page import="dao.UsersDao_Oracle"%>
<%@page import="dao.UsersDao"%>
<%@page import="json_jdbc.JsonDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
   <%
   UsersDao dao = new UsersDao_Oracle();
   String password = request.getParameter("password");
   String data = dao.pwcheck(password);
   %>
   
   <%= data %>