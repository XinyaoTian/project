<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/28
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
  <%
    String my="me";
    session.setAttribute("me_now",my);
    你好:<%=session.getAttribute("me_now")%>
  %>
</body>
</html>
