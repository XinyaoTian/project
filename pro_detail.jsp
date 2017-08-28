<%--
  Created by IntelliJ IDEA.
  User: XPS 13 9350
  Date: 2017/8/25
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>能力示范文稿管理系统</title>
  <!-- Bootstrap CSS 文件 -->
  <link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body>
<!-- 头部 -->
<div class="jumbotron">
  <div class="container">
    <div class="row">
      <div class="col-md-11">
        <h2>BJUT</h2>
        <p>能力示范文稿管理系统</p>
      </div>
      <div class="col-md-1">
        <div class="dropdown">
          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            写者
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#">写者</a></li>
            <li><a href="#">管理员</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- 中间内容区局 -->
<div class="container">
  <div class="row">

    <!--8.25 更新此处代码：添加各href中的url链接-->
    <!-- 左侧菜单区域   -->
    <div class="col-md-3">
      <div class="list-group">
        <a href="pro_index.jsp" class="list-group-item active">所有提案</a><!--跳转到提案目录-->
        <a href="pro_per_info.jsp" class="list-group-item">个人提案</a><!--跳转到个人提案-->
        <a href="pro_form.jsp" class="list-group-item">提案编制</a><!--跳转到提案编制-->
        <a href="#" class="list-group-item">个人信息</a><!--@未制作完成！！！-->
      </div>
    </div>

    <!-- 右侧内容区域 -->
    <div class="col-md-9">

      <!-- 自定义内容区域 -->
      <div class="panel panel-default">
        <div class="panel-heading"><h2 style="text-align: center">提案名</h2></div>
        <div class="panel-body">
          <div class="jumbotron">
            <p style="margin-bottom: 100px;font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;虽然可以直接使用 Bootstrap 提供的 CSS 样式表，不要忘记 Bootstrap 的源码是基于最流行的 CSS 预处理脚本 - Less 和 Sass 开发的。你可以采用预编译的 CSS 文件快速开发，也可以从源码定制自己需要的样式。</p>
            <textarea class="form-control" rows="6" >你的想法</textarea>

            <p style="padding-top: 10px;display: inline-block;"><a class="btn btn-primary btn-lg" href="#" role="button">附议</a></p>
            <p style="display: inline-block;"><a class="btn btn-primary btn-lg" href="#" role="button">反对</a></p>
          </div>
          <div class="table-responsive">
            <table class="table table-hover table-striped"><thead>
            <tr>
              <th>评论人</th>
              <th>评论内容</th>
              <th>时间</th>
            </tr>
            </thead>
              <tbody>
              <tr>
                <th scope="row">001</th>
                <td>123</td>
                <td>123</td>
              </tr>

              </tbody></table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<!-- 尾部 -->
<div class="jumbotron" style="margin:0;">
  <div class="container">
    <span>  @2017 BJUT</span>
  </div>
</div>

<!-- jQuery 文件 -->
<script src="./static/jquery/jquery.min.js"></script>
<!-- Bootstrap JavaScript 文件 -->
<script src="./static/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
