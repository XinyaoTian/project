<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/27
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%@ page import = "java.util.*" %>
<%
  String username = (String)session.getAttribute("user_now");
  List olUserList = (List)application.getAttribute("olUserList");
  olUserList.remove(username);
  application.setAttribute("olUserList", olUserList);
//销毁会话
  session.invalidate();
  response.sendRedirect("pro_login.jsp");%>
</body>
</html>
