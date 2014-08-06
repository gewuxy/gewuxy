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
  <div class="settings-page-container">
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
	<div class="alert alert-danger change-ps-error col-sm-offset-2 col-sm-6" role="alert"></div>
	<div class="clearfix"></div>
	<div class="form-group">
    <div style="margin-left:58%;">
      <button id="passwordmodify" class="btn btn-success">保存</button>
    </div>
  </div>
  </form>
  </div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>
<script type="text/javascript">

     
 $(document).ready(function () {
//修改个人密码
$("#passwordmodify").click(function(){
            if($("#curPassword").val()==""){
				$(".change-ps-error").text("未输入当前密码");
				if($(".change-ps-error").is(":hidden")){$(".change-ps-error").show();}
				$("#curPassword").focus();
				return false;
			}
			if($("#newPassword").val()==""){
				$(".change-ps-error").text('未输入新密码');
				if($(".change-ps-error").is(":hidden")){$(".change-ps-error").show();}
				$("#newPassword").focus();
				return false;
			}                      //判断密码格式：包含字母和数字，位数在6-16位之间
			var reg = new RegExp("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$");
			if(!reg.test($("#newPassword").val())){
					$(".change-ps-error").text("新密码必须包含字母和数字，6位到16位之间");
					if($(".change-ps-error").is(":hidden")){$(".change-ps-error").show();}
					$("#newPassword").focus();
					return false;
			}
			
			if($("#curPassword").val()==$("#newPassword").val()){
				$(".change-ps-error").text("新旧密码一致，重新设置密码!!!");
				if($(".change-ps-error").is(":hidden")){$(".change-ps-error").show();}
				$("#newPassword").focus();
				return false;
			}
            if($("#confirmPassword").val()==""){
				$(".change-ps-error").text("未确认新密码");
				if($(".change-ps-error").is(":hidden")){$(".change-ps-error").show();}
				$("#confirmPassword").focus();
				return false;
			}
			if($("#confirmPassword").val()!=$("#newPassword").val()){
				$(".change-ps-error").text("两次密码输入不相同");
				if($(".change-ps-error").is(":hidden")){$(".change-ps-error").show();}
				$("#confirmPassword").focus();
				return false;
			}			 
			
			   var params = {
				"student.password":$("#curPassword").val(),				
				"repassword":$("#newPassword").val()
			      };		
 
			      $.ajax({
				type: "POST",
				url: "../user/user_modifyPassword.html",
			 	data:params,
				async: false,
			       	dataType:"json",
				success:function(data){ 
				 	       $(".change-ps-error").text(data.erroMessage);
				            if($(".change-ps-error").is(":hidden")){$(".change-ps-error").show();}
					        //alert(data.erroMessage);			
					
				},
				error: function(data){
				     alert("dsfsdfds");
                                     alert(data.erroMessage)
				 // return false;
				}
				});
}); 
if($(".settings-page-container").height()<$(window).height()-200){
		$(".settings-page-container").height($(window).height()-200);
}
$(window).resize(function(){
	if($(".settings-page-container").height()<$(window).height()-200){
		$(".settings-page-container").height($(window).height()-200);
}
});
			
		});
    </script>
</body>
</html>
