<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>实习生-格物学院</title>
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
  <div class="jobs">
	  <h1>加入格物学院</h1>
  </div>
  <div class="job-section-wrap">
  <div class="jobs-section">
	<span class="glyphicon glyphicon-map-marker job-location">广州</span>
	<div class="title">实习生</div>
	<div class="body">
	  <div class="section responsibility">
	    <h3>职位描述</h3>
		<ul>
		  <li>设计方向：主导或参与格物学院的视觉设计，交互设计</li>
		  <li>内容策划方向：主导或参与格物学院某一方向的课程制作，如物理科目高中阶段等</li>
		  <li>技术方向：主导或参与格物学院的前后台开发</li>
		</ul>
	  </div>
	  <div class="section requirement">
	    <h3>职位要求</h3>
		<ul>
		  <li>热爱生活，认可在线教育的未来，认可格物学院的价值观</li>
		  <li>对工作具有责任感、使命感</li>
		</ul>
	  </div>
	  <div class="section bonus">
	    <h3>加分项</h3>
		<ul>
		  <li>格物学院深度用户</li>
		  <li>本科学历，且学习能力强</li>
		  <li>对将参与的工作有较强的能力，如内容策划方向，能够自己制作高质量的课程，或者能够拉来同学朋友制作课程</li>
		</ul>
	  </div>
	  <hr />
	  <div class="section joinus">
	    应聘该职位请将简历发送到：<a href="mailto:2723728494@qq.com">2723728494@qq.com</a>，邮件标题注明所应聘的职位，如格式“[应聘]姓名+实习生+内容策划方向”
	  </div>
	</div>
  </div>
  </div>
  <div style="clear:both;">
	  <%@include file="/WEB-INF/pages/common/footer.jsp"%>
  </div> 
</body>
</html>
