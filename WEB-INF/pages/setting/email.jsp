<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>邮件-设置-格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<style>
</style>
</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div class="settings-page-container">
  <ul class="nav nav-tabs" role="tablist">
	  <li role="presentation" ><s:a action="user_account" namespace="/user">基本资料</s:a></li>
	  <li role="presentation"><s:a action="user_password" namespace="/user">密码</s:a></li>
	  <li role="presentation"><s:a action="user_linkSn" namespace="/user">社区绑定</s:a></li>
	  <li role="presentation" class="active"><s:a action="user_email" namespace="/user">邮件</s:a></li>
	</ul>
  <div style="height:20px"></div>
  <div class="settings-body">
    <form action="account.jsp" method="POST" >
	  <div class="settings-info">
	    <h3>订阅格物学院每周精选</h3>
	    <h4>开通后，格物学院将每周为您进行挑选您感兴趣的知识和话题</h4>
		<div class="toggle-switch off-red">
		  <input type="checkbox" id="toggle-switch-all-email" name="all-email">
		  <label for="toggle-switch-all-email">
		  </label>
		</div>
		<div style="margin:10px;"><button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">保存</button></div>
		<div style="height:20px;"></div>
	  </div>
	</form>
  </div>
  </div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>
  <script>
   $(document).ready(function () {
  if($(".settings-page-container").height()<$(window).height()-200){
		$(".settings-page-container").height($(window).height()-200);
}
$(window).resize(function(){
	if($(".settings-page-container").height()<$(window).height()-200){
		$(".settings-page-container").height($(window).height()-200);
}
});
})
  </script>
</body>
</html>
