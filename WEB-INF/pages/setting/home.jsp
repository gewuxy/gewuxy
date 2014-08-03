<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>我的主页-格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<script>
$(document).ready(function(){
$(".myclass-tab").mouseover(function(){
$(".myclass-tab-menus").css("display","block");
})
.mouseout(function(){
$(".myclass-tab-menus").css("display","none");
})
});

</script>
<style>
</style>
</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div style="margin-top:20px;width:100%;clear:both;display:table;">
    <div class="row-fluid" style="background-color:white;">
	
	  <div style="float:left;width:20%;padding-left:30px;padding-right:20px;">
		<ul>
		 <li style="list-style-type:none;line-height:20px;padding:10px;background-color:#EEEEEE;"><a href="#" class="settings-item" style="text-decoration:none;color:#000">我的主页</a></li>
		 <li class="myclass-tab" style="list-style-type:none;line-height:20px;padding:10px;"><s:a action="student_myClass" namespace="/student" cssClass="settings-item " style="text-decoration:none;color:#000">我的班级</s:a>
		   <ul class="myclass-tab-menus" style="margin-left:10px;display:none;">
		 <li style="list-style-type:none;"><hr style="margin-top:4px;margin-bottom:4px;"/></li>
		 <li style="list-style-type:none;margin:3px;"><a href="#" class="settings-item" style="text-decoration:none;font:17px arial;color:#000">高一1班</a></li>
		 <li style="list-style-type:none;">
		   <button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">新建班级</button>
		 </li>
		 
		 <li style="list-style-type:none;"><hr style="margin-top:7px;margin-bottom:7px;"/></li>
		 <li style="list-style-type:none;"><a href="#" class="settings-item" style="text-decoration:none;font:17px arial;color:#000">所有学生</a></li>
		 <li style="list-style-type:none;margin:3px;"><a href="#" class="settings-item" style="text-decoration:none;font:17px arial;color:#000">孩子帐号</a></li>
		 </ul>
		 </li>
		 
		</ul>
	  </div>
	  <div style="float:right;width:80%;padding-right:100px;">
	    <div style="background-color:#66CCCC;min-height:150px;">
		  <div style="margin:10px;float:left;">
		    <div class="headicon" style="float:left;padding:5px;">
			  
			  <img src="<%=ctx%>/img/apple-touch-icon-144-precomposed.png" style="width:100px;height:100px;"/>
			 
			</div>
			<div class="headicon" style="float:left;padding:5px;">
			  <div style="vertical-align:baseline;">
			    <span style="color:white;font-size:24px;padding-left:10px;"><s:property value="#session.student.username"/></span>
			  </div>
			  <div style="padding-top:3px;padding-left:10px;">
			    一句话介绍自己
			  </div>
			  <div style="padding-top:3px;padding-left:10px;">
			    执信中学
			  </div>
			</div>
		  </div>
		  <div style="float:right;margin:20px;padding:2px;top:0;right:0;border:2px solid #617a8d;cursor:pointer;">
		    <div class="dropdown">
			  <a class="dropdown-toggle" data-toggle="dropdown">
			    <span>编辑名片</span>
				<span class="caret"></span>
			  </a>
			  <ul class="dropdown-menu no-submenus">
			    <li><a style="text-decoration:none" href="javascript:void(0)">更换头像</a></li>
				<li><a style="text-decoration:none" href="javascript:void(0)">更换背景</a></li>
				<li><a style="text-decoration:none" href="javascript:void(0)">编辑资料</a></li>
			  </ul>
			</div>
			
		  </div>
		</div>
		<div style="margin-top:20px;background-color:white;">
		  <!--ul class="settings">
			<li class="settings-item-selected" style="display:inline;"><a class="settings-item" href="#">提问</a></li>
			<li style="display:inline;"><a class="settings-item" href="/qianduan/settings/password.jsp">回答</a></li>
			<li style="display:inline;"><a class="settings-item" href="/qianduan/settings/link-sn.jsp">关注</a></li>
			<li style="display:inline;"><a class="settings-item" href="/qianduan/settings/email.jsp">收藏</a></li>
		  </ul-->
		  <div  id="user-profile-widgets">
		    <div >
			  <div style="width:49%;display:inline-block;">
			    <div class="profile-widget">
				  <div class="profile-widget-header">
				    <div class="profile-header-name">最近学习内容</div>
					<div class="profile-header-name" style="float:right;"><a href="#">继续学习</a></div>
					<div class="profile-header-name" style="float:right;"><a href="#">查看时间轴</a></div>
				  </div>
				  <div class="profile-widget-body">
				    <div style="display:block;float:left;margin-left:0px;">
				      <ul style="list-style-type:none;padding:0px;">
						<li style="margin-bottom:2px;border-right:2px solid #ccc;"><a href="#" style="text-decoration:none;">最近一个星期</a></li>
						<li style="margin-bottom:2px;border-right:2px solid #ccc;"><a href="#" style="text-decoration:none;">最近一个月</a></li>
				      </ul> 
				    </div>
					
				  </div>
				</div>
				<div class="profile-widget">
				  <div class="profile-widget-header">
				    <div class="profile-header-name">提问</div>
					<div class="profile-header-name" style="float:right;"><a href="#">我要提问</a></div>
					<div class="profile-header-name" style="float:right;"><a href="#">查看全部</a></div>
				  </div>
				  <div class="profile-widget-body">
				    <div>
				      <a href="#" style="display:block;font-size:18px;font-weight:bold;color:#6666CC;padding-left:3px;">为什么地球是圆的？</a>
					  <a style="font-size:12px;color:#999999;padding-left:3px;" href="#">取消关注</a>
					  <span style="font-size:12px;color:#999999">·１个回答　·８个关注</span>
				    </div>
					<hr style="margin:2px;"/>
					<div>
				      <a href="#" style="display:block;font-size:18px;font-weight:bold;color:#6666CC;padding-left:3px;">为什么地球是圆的？</a>
					  <a style="font-size:12px;color:#999999;padding-left:3px;" href="#">取消关注</a>
					  <span style="font-size:12px;color:#999999">·１个回答　·８个关注</span>
				    </div>
					<hr style="margin:2px;"/>
					<div>
				      <a href="#" style="display:block;font-size:18px;font-weight:bold;color:#6666CC;padding-left:3px;">为什么地球是圆的？</a>
					  <a style="font-size:12px;color:#999999;padding-left:3px;" href="#">取消关注</a>
					  <span style="font-size:12px;color:#999999">·１个回答　·８个关注</span>
				    </div>
				  </div>
				</div>
				<div class="profile-widget">
				  <div class="profile-widget-header">
				    <div class="profile-header-name">回答</div>
					<div class="profile-header-name" style="float:right;"><a href="#">查看全部</a></div>
				  </div>
				  <div class="profile-widget-body">
				  <a href="#" style="display:block;font-size:18px;font-weight:bold;color:#6666CC;padding-left:3px;">为什么地球是圆的？</a>
				  <div class="answer-style" style="padding-left:3px;">我的回答，只显示一行，多余的用省略号...</div>
				  <a style="font-size:12px;color:#999999;padding-left:3px;" href="#">取消关注</a>
				  <hr style="margin:2px;"/>	
				  </div>
				</div>
			  </div>
			  <div style="width:49%;display:inline-block;vertical-align:top;">
			    <!--iv class="profile-widget">
				  <div class="profile-widget-header">
				    <div class="profile-header-name">最近练习</div>
					<div class="profile-header-name" style="float:right;"><a href="#">继续练习</a></div>
				  </div>
				  <div class="profile-widget-body">
				  </div>
				</div-->
				<div class="profile-widget">
				  <div class="profile-widget-header">
				    <div class="profile-header-name">关注</div>
					<div class="profile-header-name" style="float:right;"><a href="#">查看全部</a></div>
				  </div>
				  <div class="profile-widget-body">
				    <a href="#" style="display:block;font-size:18px;font-weight:bold;color:#6666CC;padding-left:3px;">为什么地球是圆的？</a>
				    <div class="answer-style" style="padding-left:3px;">赞同数最多的回答，只显示一行，多余的用省略号...</div>
				    <a style="font-size:12px;color:#999999;padding-left:3px;" href="#">取消关注</a>
				    <hr style="margin:2px;"/>
				  </div>
				</div>
				<div class="profile-widget">
				  <div class="profile-widget-header">
				    <div class="profile-header-name">收藏</div>
					<div class="profile-header-name" style="float:right;"><a href="#">查看全部</a></div>
				  </div>
				  <div class="profile-widget-body">
				    <a href="#" style="display:block;font-size:18px;font-weight:bold;color:#6666CC;padding-left:3px;">为什么地球是圆的？</a>
					<hr style="margin:2px;"/>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  
	</div>
  </div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>
</body>
</html>