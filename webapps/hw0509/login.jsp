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
    //取得帳號及密碼
      String account = request.getParameter("account");
      String password = request.getParameter("password");
      //資料庫連線
    database.connectDB();
     //執行Selet SQL指令
    database.query("select * from log where account='" + account + "'&& password='" + password +"'");
    //取得資料庫資料
    ResultSet rs = database.getRS();

    String message= "0";
      if(rs != null){
        while(rs.next()){
          message= rs.getString("id");
        }
      }

      if(message!= "0"){
        out.println("登入成功");
        session.setAttribute("login", "ok");
        Object objname = session.getAttribute("login");
        String sesname = "";
        if(objname!=null){
            sesname = objname.toString();
            out.println(sesname);
            }
      }else{
        out.println("登入失敗");
      }


    %>
    <body>

        <p>會員資料</p>
        <form id="j">
        <a>帳號：<%=account%><br>
           密碼：<%=password%></a><br>
             <input type="button" onclick="window.open('search.jsp','_self')" value="搜尋" id="bob"/>
</form>
    </body>
