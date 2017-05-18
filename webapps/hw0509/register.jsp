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
  database.connectDB();
  database.query("select * from log;");
  ResultSet rs = database.getRS();
  String account = request.getParameter("account");
  String password = request.getParameter("password");
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String message = "";
  if (account != null && password != null && name != null && email != null){
    database.connectDB();
    database.insertData(account,password,name,email);
    message = "新增成功！";
      out.println("新增成功");
  }else{
    message = "新增失敗";
    out.println("新增失敗");
  }
  // database.insertData(account,password,name,email);
%>


<head><link rel=stylesheet href="log.css" type="text/css" ><meta charset="UTF-8"></head>
  <p>註冊</p>
  <body>
    <div class="row" id="j">
                <div class="col-sm-12">
                    <div class="white-box">
                        <a>姓名:<%=name%><br>
                        帳號：<%=account%><br>
                        密碼：<%=password%><br>
                        信箱：<%=email%></a><br>
                        <button class="btn btn-primary" onclick="window.open('work.jsp','_self')" id="bob">回登入頁</button>
                      </div>
                    </div>
              </div>

</body>
