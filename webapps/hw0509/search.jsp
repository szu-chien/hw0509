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
%>




<!DOCTYPE html>
<html>
  <head>

    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
  </head>
  <body>
    <div class="navbar-fixed">
          <nav>
              <div class="nav-wrapper">
                <center>
                  <h style="font-size:25px;font-weight:bold;">會員資料</h>
                </center>
              </div>
          </nav>
      </div>
      <div class="row">
        <%

            // 檢查資料庫是否有資料
            if (rs != null){
              // 搜尋資料庫資料 next會尋找下一筆資料
              while(rs.next()){
                String id = rs.getString("id");
                String account = rs.getString("account");
                String password = rs.getString("password");
                String email = rs.getString("email");
                String username = rs.getString("username");
        %>
        <div class="col s6">
          <div class="card horizontal">
                <div class="card-image" style="padding:2vh;">

                </div>
                <div class="card-stacked">
                    <div class="card-content">
                        <h style="font-size:20px;font-weight:bold;"><%=username%></h>
                        <p>帳號： <%=account%></p>
                        <p>信箱：<%=email%></p>
                    </div>
                    <div class="card-action">
                      <a href="detail.jsp?id=<%=id%>">詳細資訊</a>
                    </div>
                </div>
            </div>
        </div>
        <%}}%>
      </div>
<%-- <h>註冊</h>
                <form2 action="register.jsp" method="post">
                                  <div class="form-group">
                                    <label for="name" class="control-label">姓名</label>
                                    <input type="text" class="form-control" name="name">
                                  </div>
                                  <div class="form-group">
                                      <label for="location" class="control-label">帳號</label>
                                      <input type="text" class="form-control" name="account">
                                  </div>
                                  <div class="form-group">
                                      <label for="description" class="control-label">密碼</label>
                                      <input type="text" class="form-control" name="password">
                                  </div>
                                  <div class="form-group">
                                      <label for="photo" class="control-label">信箱</label>
                                      <textarea class="form-control" name = "email"></textarea>
                                  </div>
                                  <div class="modal-footer">
                                        <input type="submit" class="btn btn-primary" action="register.jsp" method="post" value="註冊"></div> --%>

                                  <%-- <div class="modal-footer">
                                    <input type="submit" class="btn btn-primary" value="註冊">
                                  </div> --%>
                                </form2>
                                <div>
                                          <button class="btn btn-primary" onclick="window.open('logout.jsp','_self')" id="bob">登出</button>
                                </div>
                              </html>
