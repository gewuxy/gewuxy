<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>我的班级-格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />

<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

<style>
</style>
<script type="text/javascript">
        $(document).ready(function () {
            $(".dropdown-toggle").dropdown();
        });
</script>
<script>
$(document).ready(function(){
//添加学生
$(".add-student-button").click(function(){
$(".add-teacher-button").css("display","none");
$(".add-student-button").css("display","none");
$(".done-adding-student").css("display","block");
$(".invite-students").slideDown();
});
//添加老师
$(".add-teacher-button").click(function(){
$(".add-teacher-button").css("display","none");
$(".add-student-button").css("display","none");
$(".done-adding-student").css("display","block");
$(".invite-teachers").slideDown();
});
//完成添加学生
$(".done-adding-student").click(function(){
$(".invite-students").slideUp();
$("div.create-students").slideUp();
$(".done-adding-student").css("display","none");
$(".add-teacher-button").css("display","block");
$(".add-student-button").css("display","block");
});
//取消添加学生
$("#add-students-cancel-button").click(function(){
$(".invite-students").slideUp();
$(".done-adding-student").css("display","none");
$(".add-teacher-button").css("display","block");
$(".add-student-button").css("display","block");
});
//完成添加老师
$(".done-adding-student").click(function(){
$(".done-adding-student").css("display","none");
$(".invite-teachers").slideUp();
$(".add-teacher-button").css("display","block");
$(".add-student-button").css("display","block");
});
//取消添加老师
$("#add-teachers-cancel-button").click(function(){
$(".done-adding-student").css("display","none");
$(".invite-teachers").slideUp();
$(".add-teacher-button").css("display","block");
$(".add-student-button").css("display","block");
});

//新建班级
$("button.create-class-button").click(function(){
$("button.create-class-button").css("display","none");
$("li.create-class-name").css("display","block");
$("li.create-class-done-button").css("display","block");
});

//免邮件创建学生帐号
$("#create-account-without-email").click(function(){
$("div.invite-students").css("display","none");
$("div.create-students").css("display","block");
});

//取消创建学生帐号
$("#create-students-cancel-button").click(function(){
$("div.create-students").slideUp();
$(".done-adding-student").css("display","none");
$(".add-teacher-button").css("display","block");
$(".add-student-button").css("display","block");

});
//返回创建学生帐号
$("#create-students-goback-button").click(function(){
$("div.create-students").css("display","none");
$("div.invite-students").css("display","block");
});
});
</script>
</head>
<body>
  <div class="clearfix">
	<div style="width:80%">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div style="margin-top:20px;width:100%;clear:both;display:table;">
    <div class="row-fluid" style="background-color:white;">
	
	  <div style="float:left;width:20%;padding-left:30px;padding-right:20px;">
		<ul>
		 
		 <li style="list-style-type:none;line-height:20px;padding:10px;"><s:a action="student_home" namespace="/student" cssClass="settings-item" style="text-decoration:none;color:#000">我的主页</s:a></li>
		 <li style="list-style-type:none;line-height:20px;padding:10px;"><a href="#" class="settings-item" style="text-decoration:none;color:#000">我的班级</a>
		 
		 <ul class="myclass-tab-menus" style="margin-left:10px;">
		 <li style="list-style-type:none;"><hr style="margin-top:4px;margin-bottom:4px;"/></li>
		 <li style="list-style-type:none;margin:3px;"><a href="#" class="settings-item" style="text-decoration:none;font:17px arial;color:#000">高一1班</a></li>
		 <li class="create-class-name" style="list-style-type:none;display:none;margin-bottom:5px;">
		  <div class="create-class-name">
			<input id="classname" name="classname" style="width:100%" placeholder="班级名称">
		  </div>
		 </li>
		 <li  class="create-class-done-button" style="list-style-type:none;display:none;">
		   <button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">确定</button>
		 </li>
		 <li class="create-class-button" style="list-style-type:none;">
		   <button type="button" class="btn btn-primary btn-lg create-class-button" style="padding-top:2px;padding-bottom:2px;">新建班级</button>
		 </li>
		 
		 <li style="list-style-type:none;"><hr style="margin-top:7px;margin-bottom:7px;"/></li>
		 <li style="list-style-type:none;background-color:#EEEEEE;"><a href="#" class="settings-item" style="text-decoration:none;font:17px arial;color:#000">所有学生</a></li>
		 <li style="list-style-type:none;margin:3px;"><a href="#" class="settings-item" style="text-decoration:none;font:17px arial;color:#000">孩子帐号</a></li>
		 </ul>
		 </li>
		 
		</ul>
	  </div>
	  <div id="tab-content">
	    <div style="background-color:#66CC66;min-height:150px;">
		  <div style="margin:10px;float:left;">
		    <div class="headicon" style="float:left;padding:5px;">
			  
			  <img src="<%=ctx%>/img/apple-touch-icon-144-precomposed.png" style="width:100px;height:100px;"/>
			 
			</div>
			<div class="headicon" style="float:left;padding:5px;">
			  <div style="vertical-align:baseline;">
			    <span style="color:white;font-size:24px;padding-left:10px;">所有学生</span>
			  </div>
			  <div style="padding-top:3px;padding-left:10px;">
			    100个学生
			  </div>
			  <div style="padding-top:3px;padding-left:10px;">
			    我的老师ID：<span style="color:#fff;">luozex@gmail.com</span>
			  </div>
			</div>
		  </div>
		  <!--div style="float:right;margin:20px;padding:2px;top:0;right:0;border:2px solid #617a8d;cursor:pointer;">
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
			
		  </div-->
		  
		</div>
		<div id="edit-menus">
		  <div id="select-menu" data-action="select">
		    <input type="checkbox">
		  </div>
		  <div id="move-menu" class="dropdown" data-action="move" style="cursor:pointer;">
		    <div class="dropdown-toggle" data-toggle="dropdown">
			  移动到
			  <span class="caret"></span>
			</div>
			<ul class="dropdown-menu no-submenus">
			  <li><a href="#">高一1班</a></li>
			</ul>
		  </div>
		  <div id="remove-menu" class="dropdown" data-action="remove" style="cursor:pointer;">
		    <div class="dropdown-toggle" data-toggle="dropdown">
			  删除
			  <span class="caret"></span>
			</div>
			<ul class="dropdown-menu no-submenus">
			  <li><a href="#" title="移出班级后，您可以到“其他”标签那里看到学生">移出班级</a></li>
			  <li><a href="#" title="删除学生后，学生将不继续跟着老师学习；删除老师后，老师将不再教授学生">删除学生/老师</a></li>
			</ul>
		  </div>
		  <!--div id="remove-menu" data-action="remove" style="display:inline;">
		    <button type="button" class="btn btn-default delete-student-button" style="float:right;padding-left:15px;padding-right:15px;
			border-radius:4px;background-color:#EE0033;color:white">删除学生</button>
			
		  </div-->
		  <div id="add-remove-students" style="display:inline;">
		    <button type="button" class="btn btn-default add-student-button" style="float:right;padding-left:15px;padding-right:15px;
			border-radius:4px;background-color:#80ac07;color:white">添加学生</button>
			<button type="button" class="btn btn-default add-teacher-button" style="float:right;padding-left:15px;padding-right:15px;
			border-radius:4px;background-color:#80ac07;color:white">添加老师</button>
			<button type="button" class="btn btn-default done-adding-student" style="float:right;padding-left:15px;padding-right:15px;
			border-radius:4px;background-color:#80ac07;color:white;display:none;">完成</button>
		  </div>
		</div>
		<div id="add-students-block">
		<div class="invite-students" style="display:none;">
		  <div class="top-section">
		    <div class="invite-student-container">
			  <p>邀请学生加入你的班级：<span id="class-name-text">高一1班</span></p>
			  <textarea tabindex="1" spellcheck=“false” placeholder="多个电子邮件间用逗号隔开"></textarea>
			  <div class="control-buttons">
			    <input id="add-students-cancel-button" type="button" class="btn btn-default" value="取消">
				<input id="add-students-confirm-button" type="button" class="btn btn-primary" value="邀请学生">
			  </div>
			</div>
		  </div>
		  <div class="bottom-section">
		    <p >免电子邮件为学生<strong>
			<a id="create-account-without-email" href="#">创建帐号</a>
			</strong></p>
		  </div>
		</div>
		<div class="invite-teachers" style="display:none;">
		  <div class="top-section">
		    <div class="invite-student-container">
			  <p>邀请老师加入你的班级：<span id="class-name-text">高一1班</span></p>
			  <textarea tabindex="1" spellcheck=“false” placeholder="多个电子邮件间用逗号隔开"></textarea>
			  <div class="control-buttons">
			    <input id="add-teachers-cancel-button" type="button" class="btn btn-default" value="取消">
				<input id="add-teachers-confirm-button" type="button" class="btn btn-primary" value="邀请老师">
			  </div>
			</div>
		  </div>
		  
		</div>
		<div class="create-students" style="display:none;">
		  <div class="top-section">
		    <form class="auth-form" id="create-student-form" action="">
			  <div id="create-student-container" class="completesignup-contents create-child create-student-section">
			    <p class="create-student-label">创建学生帐号</p>
				<div class="create-student-info-item student-username">
				  <input id="username" name="username" style="width:60%" placeholder="学生用户名">
				</div>
				<div class="create-student-info-item student-password">
				  <input id="password" name="password" style="width:60%" placeholder="密码">
				</div>
				<div class="create-student-info-item student-gender">性别：
				  <select id="gender" name="gender" style="width:50%">
				    <option value="unspecified"></option>
					<option value="male">男</option>
					<option value="female">女</option>
				  </select>
				</div>
				<div class="create-student-info-item student-birthday">
				</div>
				<div class="control-buttons" style="width:60%">
				  <input id="create-students-goback-button" style="float:left" type="button" class="btn btn-default" value="<--返回">
			      <input id="create-students-cancel-button" type="button" class="btn btn-default" value="取消">
				  <input id="create-students-confirm-button" type="button" class="btn btn-primary" value="创建学生帐号">
			    </div>
			  </div>
			  <div id="create-student-success-container" class="card-case vertical-shadow"> </div>
			</form>
		  </div>
		  <div class="bottom-section">
		  </div>
		</div>
		</div>
		<div id="list-container">
		    <div class="add-students-block"></div>
			<div id="requested-students" class="student-list">
			  <div class="requested-students-header" style="display:block;">已邀请老师列表</div>
			  <div class="requested-students-table">
			    <div class="student-row" data-student-key="luozex" data-identifier="luozex" style="display:table-row">
				  <div class="student-row-one">
				    <input type="checkbox">
					<span class="student-name">luozex</span>
				  </div>
				  <div class="student-row-two">
				    <a class="delete-button" href="javascript:void(0);" title="">删除邀请</a>
				  </div>
				  <div class="student-row-tags">
				    <span class="class-tag" style="float:right;">高一1班</span>
				  </div>
				</div>
			  </div>
			</div>
		    <div id="requested-students" class="student-list">
			  <div class="requested-students-header" style="display:block;">已邀请学生列表</div>
			  <div class="requested-students-table">
			    <div class="student-row" data-student-key="luozex" data-identifier="luozex" style="display:table-row">
				  <div class="student-row-one">
				    <input type="checkbox">
					<span class="student-name">luozex</span>
				  </div>
				  <div class="student-row-two">
				    <a class="delete-button" href="javascript:void(0);" title="">删除邀请</a>
				  </div>
				  <div class="student-row-tags">
				    <span class="class-tag" style="float:right;">高一1班</span>
				  </div>
				</div>
			  </div>
			</div>
			<div id="active-teachers" class="teacher-list">
			  <div class="active-teachers-header" style="">老师列表</div>
			  <div class="active-teachers-table">
			    <div class="teacher-row" data-teacher-key="" style="display:table-row">
				  <div class="teacher-row-one">
				    <input type="checkbox">
					<span class="teacher-name">liqiuguo</span>
				  </div>
				  <div class="teacher-row-two">
				    <span class="teacher-email">liqiuguo@gmail.com</span>
				  </div>
				  <div class="teacher-row-tags">
				    <span class="class-tag" style="float:right;">高二4班</span>
				  </div>
				</div>
			  </div>
			</div>
		    <div id="active-students" class="student-list">
			  <div class="active-students-header" style="">学生列表</div>
			  <div class="active-students-table">
			    <div class="student-row" data-student-key="" style="display:table-row">
				  <div class="student-row-one">
				    <input type="checkbox">
					<span class="student-name">liqiuguo</span>
				  </div>
				  <div class="student-row-two">
				    <span class="student-email">liqiuguo@gmail.com</span>
				  </div>
				  <div class="student-row-tags">
				    <span class="class-tag" style="float:right;">高二4班</span>
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