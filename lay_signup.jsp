<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/26
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>signup</title>
</head>
<body>
<%
  //从前端用户注册界面 接受用户想要注册的用户名密码

  String username = new String(request.getParameter("username_sign"));
  String pwd = new String(request.getParameter("password_sign"));

<%
  //这里需要一个 注册新用户的函数adduser
  //参数：String username,String pwd 分别接收用户输入的用户名密码
  //功能：进入User数据库查找这个用户注册的用户名是否已经被注册
  //返回值：int  如果已被注册 则返回0 ; 若未被注册 则返回1
  if(SQLConnection.adduser(username , pwd)==0){
%><script type="text/javascript" language="javascript">
  alert("您的用户名已被注册！请重新注册...");
  window.document.location.href="pro_login.jsp";
</script><%
  }
  else if(SQLConnection.adduser(username , pwd)==1){
%><script type="text/javascript" language="javascript">
  alert("注册成功！您的账号正在审核，请耐心等待...");
  window.document.location.href="pro_login.jsp";
</script><%
  }
%>


<!--测试用 不用管
//if(username.equals("admin")&&pwd.equals("123")){
//  pageContext.forward("pro_index.jsp");
// }
// else{
//   %><!--<script type="text/javascript" language="javascript">
   //         alert("您的账号正在审核，请耐心等待...");
   // window.document.location.href="pro_login.jsp";

   // </script>-->
  // }-->
</body>
</html>
