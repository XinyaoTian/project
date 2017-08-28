<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/25
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  //当用户成功登陆并点击详情后 跳转至此

  //当用户点击详情时，获取相关详情的proposal_id
  String proposal_id = request.getParameter("proposal_id");

  //接受proposal_id 在提案数据库中检索 返回一个提案的对象
  //Proposal p = Search_proposalDB(proposal_id);
  //在相应位置(html)
  //out.print(p.getName())//输出对象p的名称
  //在相应位置(html)
  //out.print(p.getContext())//输出对象p的评论内容

%>
</body>
</html>
