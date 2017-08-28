<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/28
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>正则表达式 测试页</title>
</head>
  <body>
    <%@page import="regexr.Regexr" %>
    <%
      Regexr reg = new Regexr();
      if(reg.compare_reg("[^\\s]+","_shuhd")==true){
        out.print("True!");
      }
      else{
        out.print("False!");
      }

    %>


  匹配文档：
  username://True则符合用户名规范
    ^[^_][\w]{3,19}$
  password://True则符合密码规范
    [^\s]+

  入会格式要求:
    姓名：
    [\u4e00-\u9fa5·]+|[A-Za-z·]+

    [\u4e00-\u9fa5·A-Za-z]+
  //如果匹配成功 则姓名为合法
  //如果匹配不成功 则为非法输入

    电话号码：
    ^1[\d]{10}$
  //ture则符合规范

    住址：
    [^\s]+
  //True则符合规范



  </body>
</html>
