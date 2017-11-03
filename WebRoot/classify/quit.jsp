<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<% 
session.removeAttribute("username");
session.removeAttribute("userid");
session.removeAttribute("studentnum");
response.sendRedirect("../index/index.jsp");
%>
