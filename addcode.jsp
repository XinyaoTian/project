<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/27
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
  //添加到lay_login.jsp内 成功登陆的逻辑处
  List olUserList = (List)application.getAttribute("olUserList");
  if(olUserList == null)
  {
  olUserList = new ArrayList();
  }
  //把username添加进去
  olUserList.add(username);
  //重新赋值回去
  application.setAttribute("olUserList", olUserList);
  //当前用户的session
  session.setAttribute("user_now", username);
  //重定向到index.jsp
  response.sendRedirect("index.jsp");



  //每一页的注销按钮
  <form action="lay_loginout.jsp" method="post">
    <input type="submit" value="注销">
  </form>





</body>
</html>
