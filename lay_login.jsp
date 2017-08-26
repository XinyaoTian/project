<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/25
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String user = new String(request.getParameter("username")); //user 这是用户名
  String pwd = new String(request.getParameter("password")); //pwd 这是密码
%>
<%
  //测试用部分
  //if(user.equals("admin")&&pwd.equals("123")){
  //  session.setAttribute("user_ok",user);//user_ok为成功登陆的用户名
 //   pageContext.forward("pro_index.jsp");//输入正确则跳转到#
   // //￥此处最好增加登陆成功的提示
  //}
  //else{
  //  pageContext.forward("error.jsp");//输入不正确则跳转到#
  //}

  //Login
  //查询用户名密码存在存在，返回值：
  //0 - 存在且正确
  //1 - 密码错误
  //2 - 用户名不存在

  //登陆成功 则跳转到index页面
  if(SQLConnection.chkLoginInfo(user,pwd)==0){
    session.setAttribute("user_now",user);//user_ok为成功登陆的用户名
    pageContext.forward("pro_index.jsp");
  }

  //登陆失败 跳回登陆界面
  else if(SQLConnection.chkLoginInfo(user,pwd)==1){
    pageContext.forward("pro_login.jsp");
  }

  else if(SQLConnection.chkLoginInfo(user,pwd)==2){
    pageContext.forward("pro_login.jsp");
  }


  //测试部分结束
%>

