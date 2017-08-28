<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/27
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
你好:<%=session.getAttribute("user_now")%>
//提供注销功能
<form action="lay_loginout.jsp" method="post">
  <input type="submit" value="注销">
</form>

<%out.println(request.getRequestURL());%>
<%out.println(request.getContextPath());%>
<%
  String currentURL = request.getRequestURI();
  String ctxPath = request.getContextPath();
  //除掉项目名称时访问页面当前路径
  String targetURL = currentURL.substring(ctxPath.length());
  out.println(targetURL);  %>
</body>
</html>
