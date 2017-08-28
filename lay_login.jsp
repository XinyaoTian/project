<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/27
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
  <%@ page import="java.util.*" %>
  <%@page import="regexr.Regexr" %>
  <%
    String username= request.getParameter("username");
      Regexr re = new Regexr();


      //验证密码是否合格
      if(!re.compare_reg("^[^_][\\w]{3,19}$",username)){
          pageContext.forward("pro_login.jsp?error=wrong_username");
      }

      else{
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
//重定向到result.jsp
          response.sendRedirect("result.jsp");
      }


  %>
</body>
</html>
