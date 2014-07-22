
<%@page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title>格物学院</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="<%=request.getContextPath()%>/favicon.ico">	
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script>
$(document).ready(function(){
$(".signup-container").height($(window).height());
$(".signup-container").width($(document.body).outerWidth());
$(window).resize(function(){
		$(".signup-container").width($(document.body).outerWidth());
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
          <hr /> 		
		  <div style="text-align:center;">
		<s:form action="user_save" namespace="/user" method="post">
		  <label for="id">我是</label>
		  <select  name="category" id="id" style="width:100px">
		     <option value="student">学生</option>
		    <option value="teacher">老师</option>
			<option value="teacher">家长</option>
		  </select>
		  </div>
		  <div class="input-group user-email">
			<span class="input-group-addon" style="color:#000;">用户名</span>
			<input name="username" type="text" class="form-control">
		  </div>
		  <div class="input-group user-email">
			<span class="input-group-addon" style="color:#000;">电子邮件</span>
			<input name="email" type="text" class="form-control">
		  </div>
		  <div class="input-group user-password">
			<span class="input-group-addon" style="color:#000;">密码</span>
			<input name="password" type="password" class="form-control">
		  </div>
		   <div class="input-group user-password">
			<span class="input-group-addon" style="color:#000;">再次输入密码</span>
			<input name="repassword" type="password" class="form-control">
		  </div>
		  
		  <div class="signup-button">
		    <button type="button submit" class="btn btn-primary" style="width:100%">加入格物学院</button>
		  </div>
		</s:form>
		  <div class="hr-with-words">
		    或者
		  </div>
		  <div class="sign-up-with-sn">
			  <!--a href="#"><img src="<%=request.getContextPath()%>/img/Connect_qq_long.png" alt="QQ登录"></a>
			  <a href="#"><img src="<%=request.getContextPath()%>/img/connect_weibo.png" alt="新浪微博登录"></a-->
			  <button type="button" class="btn btn-info QQ-signup"><span class="login_byQQ"></span>用QQ帐号登录</button>
			  <button type="button" class="btn btn-warning weibo-signup"><span class="login_bysina"></span>用新浪微博登录</button>
		  </div>
        </div>
      </div>
    </div>
    </div>
  </div>
  <div class="container" id="introduction-container">
	<div class="row student-introduction-container">
		<div class="col-xs-6 student-anim" id="">
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
</body>
</html>
