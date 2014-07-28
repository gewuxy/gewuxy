<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>密码-设置-格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
       <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div style="width:760px;margin:0 auto;">
  <ul class="nav nav-tabs" role="tablist">
	  <li role="presentation"><s:a action="user_account" namespace="/user">基本资料</s:a></li>
	  <li role="presentation" class="active"><s:a action="user_password" namespace="/user">密码</s:a></li>
	  <li role="presentation"><s:a action="user_linkSn" namespace="/user">社区绑定</s:a></li>
	  <li role="presentation"><s:a action="user_email" namespace="/user">邮件</s:a></li>
	</ul>
  <div style="height:40px"></div>
  <div  class="change-ps-label">修改你的登录密码</div>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label for="curPassword" class="col-sm-2 control-label">当前密码</label>
      <div class="col-sm-6">
        <input type="password" class="form-control" id="curPassword">
      </div>
    </div>
	<div class="form-group">
      <label for="newPassword" class="col-sm-2 control-label">新的密码</label>
      <div class="col-sm-6">
        <input type="password" class="form-control" id="newPassword">
      </div>
    </div>
	<div class="form-group">
      <label for="confirmPassword" class="col-sm-2 control-label">确认密码</label>
      <div class="col-sm-6">
        <input type="password" class="form-control" id="confirmPassword">
      </div>
    </div>
	<div class="form-group">
    <div style="margin-left:58%;">
      <button type="submit" class="btn btn-success">保存</button>
    </div>
  </div>
  </form>
  </div>
</body>
</html>
