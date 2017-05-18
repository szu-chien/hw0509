<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
    <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
    <jsp:setProperty property="port" name="database" value="3306"/>
    <jsp:setProperty property="db" name="database" value="4104029038"/>
    <jsp:setProperty property="user" name="database" value="4104029038"/>
    <jsp:setProperty property="password" name="database" value="Ss4104029038!"/>
</jsp:useBean>

<%
  // 資料庫連接
  database.connectDB();
  // 執行sql指令
  database.query("select * from log;");
  ResultSet rs = database.getRS();
  Object objname = session.getAttribute("login");
  if(objname!=null){
      // out.println("以登入成功,不必再登入");
      response.sendRedirect("./search.jsp");
  }
%>

<head><link rel=stylesheet href="log.css" type="text/css"></head>

</form2>
<p>login</p>
<form action="login.jsp" method="post" id="j">
<div class="form-group">
    <label for="account" class="control-label">帳號</label>
    <input type="text" class="form-control" name="account"></div>
    <div class="form-group">
        <label for="password" class="control-label">密碼</label>
        <input type="text" class="form-control" name="password"></div>
        <div class="modal-footer">
            <input type="submit" class="btn btn-primary" action="login.jsp" method="post" value="登入" id="bob"/>
            <input type="button" onclick="window.open('register.html','_self')" value="註冊" id="bob"/></div>
      </div>

</body>
</html>
