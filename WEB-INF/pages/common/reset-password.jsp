﻿<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>重设密码-格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
</head>

<body>
  <div class="clearfix">
	<div class="col-md-12 column">
	  <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div class="reset-ps-container">
    <div class="reset-ps-wrapper">
	  <h1>格物学院</h1>
	  <p>我们将把重置密码的链接发送到您的邮箱。</p>
	  <!--如果邮箱不存在，返回提示-->
	  <div class="alert alert-danger reset-ps-failure" role="alert">
	  </div>
	  <form role="form" method="post">
	    <div class="form-group">
		  <div class="col-sm-12">
			<input type="email" id="your-email" class="form-control" placeholder="邮箱" autocomplete='on'>
		  </div>
		</div>
		<div class="form-group">
		  <div class="col-sm-12">
			<button type="submit" class="btn btn-success col-sm-12 reset-password">重置密码</button>
		  </div>
		</div>
	  </form>
	</div>
  </div>
  <div style="clear:both;margin-top:-25px;margin-bottom:-25px;">
	  <%@include file="/WEB-INF/pages/common/footer.jsp"%>
  </div>
<script>
$(document).ready(function(){
  if($(".reset-ps-container").height()<$(window).height()-70){
		$(".reset-ps-container").height($(window).height()-70);
  }
$(".reset-ps-container").width($(document.body).outerWidth());
$(window).resize(function(){
	$(".reset-ps-container").width($(document.body).outerWidth());
	if($(".reset-ps-container").height()<$(window).height()-70){
		$(".reset-ps-container").height($(window).height()-70);
	}
});
$(".reset-password").click(function(){
  if($("#your-email").val()==""){
	$(".reset-ps-failure").text("邮箱未填写");
	if($(".reset-ps-failure").is(":hidden")){$(".reset-ps-failure").show();}
		$("#your-email").focus();
		return false;
  }else{                        //判断邮件格式是否正确
		var reg = new RegExp("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
		if(!reg.test($("#your-email").val())){
		$(".reset-ps-failure").text("请输入正确的邮箱");
		if($(".reset-ps-failure").is(":hidden")){$(".reset-ps-failure").show();}
			$("#your-email").focus();
			return false;
		}
  }
});
})
</script>  
</body>
</html>
