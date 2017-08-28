<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/27
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
  请登录：
  <form action="lay_login.jsp" method="POST">
    <input type="text" name="username">
    <input type="submit" value="登陆">
  </form>
</body>
</html>

<!--进行页面拦截提示的代码-->
<script>
  //取出传回来的参数error并与unLogin比较
  var errori ='<%=request.getParameter("error")%>';
  if(errori=='unLogin'){
    alert("请先登录!");
  }
  if(errori=='wrong_username'){
    alert("用户名输入格式不正确！");
  }

</script>
