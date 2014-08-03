
<%@page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script>
$(document).ready(function(){
if($(".signup-container").height()<$(window).height()){
		$(".signup-container").height($(window).height());
	}
$(".signup-container").width($(document.body).outerWidth());
$(window).resize(function(){
	$(".signup-container").width($(document.body).outerWidth());
	if($(".signup-container").height()<$(window).height()){
		$(".signup-container").height($(window).height());
	}
});
$(".weibo-signup").click(function(){
window.location.href="https://api.weibo.com/oauth2/authorize?client_id=2463745741&redirect_uri=http%3A%2F%2Fpassport.chuanke.com%2Flogin%2FsinaLogin%2Fret%2F&response_type=code&forcelogin=false";
});
$(".QQ-signup").click(function(){
window.location.href="http://openapi.qzone.qq.com/oauth/show?which=Login&display=pc&response_type=code&client_id=100262522&redirect_uri=http%3A%2F%2Fpassport.chuanke.com%2Flogin%2FqqLogin%2Fret%2FaHR0cDovL2NodWFua2UuY29tLw%3D%3D&scope=get_user_info,get_info,add_pic_t,add_idol";
});
$("#register0").click(function(){
				//判断用户名是否为空
				if($("#usernameId0").val()==""){
				$(".regist-verify0").text("用户名未填写");
				if($(".regist-verify0").is(":hidden")){$(".regist-verify0").show();}
				$("#usernameId0").focus();
				return false;
				}
				
				//判断邮件是否为空
				if($("#emailId0").val()==""){
				$(".regist-verify0").text("电子邮件未填写");
				if($(".regist-verify0").is(":hidden")){$(".regist-verify0").show();}
				$("#emailId0").focus();
				return false;
				}else{                        //判断邮件格式是否正确
				var reg = new RegExp("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
				if(!reg.test($("#emailId0").val())){
				$(".regist-verify0").text("请输入正确的电子邮件");
				if($(".regist-verify0").is(":hidden")){$(".regist-verify0").show();}
				$("#emailId0").focus();
				return false;
				}
				}
				
				//判断密码是否为空
				if($("#passwordId0").val()==""){
				$(".regist-verify0").text("未设置密码，密码必须包含字母和数字，6位到16位之间");
				if($(".regist-verify0").is(":hidden")){$(".regist-verify0").show();}
				$("#passwordId0").focus();
				return false;
				}else{                            //判断密码格式：包含字母和数字，位数在6-16位之间
				var reg = new RegExp("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$");
				if(!reg.test($("#passwordId0").val())){
				$(".regist-verify0").text("密码必须包含字母和数字，6位到16位之间");
				if($(".regist-verify0").is(":hidden")){$(".regist-verify0").show();}
				$("#passwordId0").focus();
				return false;
				}
				}
				
				//判断密码是否一致
				if($("#repasswordId0").val()==""){
				$(".regist-verify0").text("请再次输入密码！");
				if($(".regist-verify0").is(":hidden")){$(".regist-verify0").show();}
				$("#repasswordId0").focus();
				return false;
				}
				if($("#passwordId0").val()!=$("#repasswordId0").val()){
				$(".regist-verify0").text("两次密码输入不一致");
				if($(".regist-verify0").is(":hidden")){$(".regist-verify0").show();}
				$("#repasswordId0").focus();
				return false;
				}
				
				//关闭提示框
				if(!$(".regist-verify0").is(":hidden")){$(".regist-verify0").hide();}
				
				var params = {
				"category":$("#categoryId0").val(),
				"username":$("#usernameId0").val(),
				"email" : $("#emailId0").val(),
				"password" : $("#passwordId0").val(),
				"repassword":$("#repasswordId0").val()
			      };
 
			      $.ajax({
				    type: "POST",
				url: "../user/user_save.html",
			 	data:params,
				//async: false,
			       	dataType:"json",
				success:function(data){ 
				 	var msg="此邮箱已经注册过，请直接登录";
					var msgok="注册成功，请到邮箱激活认证";
					if(data.erroMessage==msg){
					alert(data.erroMessage);
				 	//$("#emailId").val(data.erroMessage);
					return false;
					}
					if (data.erroMessage==msgok){
					alert(data.erroMessage);
					window.location.href=data.prePage;
					}
				},
				error: function(data){
				  

				  return false;
				}
				});
			});
});

</script>
</head>
<body>
<div class="container">
     <div class="row clearfix">
			<div class="col-md-12 column">
				<%@include file="/WEB-INF/pages/common/head.jsp"%>
			</div>
	</div>
    	<div class="page-content">
  <div class="signup-container-outer">
  <div class="signup-container">
    <div class="signup-wrapper">
    <div class="signup-wrapper-container">
      <div class="index-signup-content">
        <div class="study-quotes">
          <div class="student-signup">
            <p>在无边的时空宇宙中，我们都是如此渺小；唯有知识，让我们与众不同。</p>
		  </div>
        </div>
        <div class="index-signup-widget">
          <h3 class="text-center">免费注册加入格物学院</h3>
          <hr style="width:90%;max-width:400px;"/> 	
		  <form>
		  <div style="text-align:center;">
		  <label for="id">我是</label>
		  <select  id="categoryId0"  style="width:100px">
		     <option value="student">学生</option>
		    <option value="teacher">老师</option>
			<option value="teacher">家长</option>
		  </select>
		  </div>
		  <div class="input-group user-email">
			<span class="input-group-addon" style="color:#000;">用户名</span>
			<input id="usernameId0" type="text" class="form-control" autocomplete='on'>
		  </div>
		  <div class="input-group user-email">
			<span class="input-group-addon" style="color:#000;">电子邮件</span>
			<input id="emailId0" type="text" class="form-control" autocomplete='on'>
		  </div>
		  <div class="input-group user-password">
			<span class="input-group-addon" style="color:#000;">密码</span>
			<input id="passwordId0" type="password" class="form-control">
		  </div>
		   <div class="input-group user-password">
			<span class="input-group-addon" style="color:#000;">确认密码</span>
			<input id="repasswordId0" type="password" class="form-control">
		  </div>
		  <div class="alert alert-danger regist-verify0" role="alert"></div>
		  <div class="signup-button">
		    <button id="register0" type="button" class="btn btn-primary" style="width:100%">加入格物学院</button>
		  </div>
		</form>
		  <div class="hr-with-words">
		    或者
		  </div>
		  <div class="sign-up-with-sn">
			  <button type="button" class="btn btn-info QQ-signup"><span class="login_byQQ"></span>用QQ帐号登录</button>
			  <button type="button" class="btn btn-warning weibo-signup"><span class="login_bysina"></span>用新浪微博登录</button>
		  </div>
        </div>
      </div>
    </div>
    </div>
  </div>
  </div>
  <div class="container" id="introduction-container">
	<div class="row student-introduction-container">
		<div class="col-xs-6 student-anim">
		  <img src="<%=ctx%>/img/student.png" alt="我是学生" class="student-img">
		</div>
		<div class="col-xs-6 student-intro">
			<h1 style="font-weight:bold;">自主学习</h1>
			<p class="student-intro-text">
			  <ul>
				<li>选择喜欢的课程，按自己的进度学习；</li>
				<li>和各地的同学讨论知识，分享知识；</li>
				<li>随时随地提问，夯实加深对知识的理解。</li>
			  </ul>
			</p>
		</div>
	</div>
	<hr class="hr-gradient">

	<div class="row teacher-introduction-container">
		<div class="col-xs-6 teacher-intro">
			<h1 style="font-weight:bold;">新时代，新老师</h1>
			<p class="teacher-intro-text">
			  <ul>
			    <li>优质资源，你我共享；</li>
				<li>尊重学生多样个性，改善传统无聊课堂；</li>
				<li>融合线上线下教育方式，提高教学效率。</li>
			  </ul>
			</p>
		</div>
		<div class="col-xs-6 teacher-anim" id="">
			<div class="tracks-anim">
				<img class="teacher-img" src="<%=ctx%>/img/teacher.jpg" alt="我是老师">	
			</div>
		</div>
	</div>

	<hr class="hr-gradient">

	<div class="row parent-introduction-container">
		<div class="col-xs-6 parent-anim" id="">
		  <img src="<%=ctx%>/img/parent.png" alt="我是家长" class="parent-img">
		</div>
		<div class="col-xs-6 parent-intro">
			<h1 style="font-weight:bold;">家长的自我修养</h1>
			<p class="parent-intro-text">
			  <ul>
				<li>注册或关联自己的孩子，详实了解孩子的学习情况；</li>
				<li>和老师一同为孩子答疑解惑；</li>
				<li>消除与孩子、老师的隔阂。</li>
			  </ul>
			</p>
		</div>
	</div>
</div>
	<div class="clearfix">
		<div class="col-md-12 column">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div>
</div>
</div>
</body>
</html>
