<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
    <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
    <jsp:setProperty property="port" name="database" value="3306"/>
    <jsp:setProperty property="db" name="database" value="4104029038"/>
    <jsp:setProperty property="user" name="database" value="4104029038"/>
    <jsp:setProperty property="password" name="database" value="Ss4104029038!"/>
</jsp:useBean>
<head><link rel=stylesheet href="log.css" type="text/css" ><meta charset="UTF-8"></head>


<%
session.removeAttribute("login");
%>

<head><link rel=stylesheet href="log.css" type="text/css" ><meta charset="UTF-8"></head>
<form id="j">
  <br><s>LOGOUT!</s><br><br>
    
