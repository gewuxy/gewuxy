<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>内容策划师-格物学院</title>
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
	<div class="title">内容策划师</div>
	<div class="body">
	  <div class="section responsibility">
	    <h3>职位描述</h3>
		<ul>
		  <li>联合K12学校进行战略合作</li>
		  <li>识别和追踪教育热点，策划和促进高质量课程的创作和传播</li>
		  <li>分析和理解用户的课程偏好，对课程制作提出合理的建议</li>
		  <li>及时回答用户针对课程的反馈</li>
		</ul>
	  </div>
	  <div class="section requirement">
	    <h3>职位要求</h3>
		<ul>
		  <li>对高品质的课程有独到、公正、中立的判断和理解</li>
		  <li>从事教育行业多年，明确学生，老师，家长的需求</li>
		</ul>
	  </div>
	  <div class="section bonus">
	    <h3>加分项</h3>
		<ul>
		  <li>对在线教育有浓厚的兴趣，深入参与到线上教育行业圈子</li>
		  <li>在教育行业有足够多的人脉，能够快速丰富网站的内容</li>
		  <li>从事过与教育相关的志愿者活动</li>
		</ul>
	  </div>
	  <hr />
	  <div class="section joinus">
	    应聘该职位请将简历发送到：<a href="mailto:2723728494@qq.com">2723728494@qq.com</a>，邮件标题注明所应聘的职位，如格式“[应聘]姓名+内容策划师”
	  </div>
	</div>
  </div>
  </div>
  <div style="clear:both;">
	  <%@include file="/WEB-INF/pages/common/footer.jsp"%>
  </div> 
</body>
</html>
