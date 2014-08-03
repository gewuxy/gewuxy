<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>前端后端开发工程师-格物学院</title>
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
	<div class="title">Web前端开发工程师</div>
	<div class="body">
	  <div class="section responsibility">
	    <h3>职位描述</h3>
		<ul>
		  <li>Web 应用的设计与开发</li>
		  <li>复杂用户界面与交互应用开发</li>
		  <li>现有产品的持续改进</li>
		</ul>
	  </div>
	  <div class="section requirement">
	    <h3>职位要求</h3>
		<ul>
		  <li>精通 JavaScript/CSS/HTML</li>
		  <li>熟悉至少一种面向对象的前端框架（Bootstrap/Google Closure/YUI/MooTools 等）</li>
		  <li>能够写出高性能、可复用的前端组件</li>
		  <li>熟悉服务器端开发技术</li>
		  <li>良好的编码风格、沟通能力和团队合作精神，有责任感</li>
		  <li>有很强的学习能力，有主动性和上进心，能承担压力</li>
		</ul>
	  </div>
	  <div class="section bonus">
	    <h3>加分项</h3>
		<ul>
		  <li>格物学院深度用户，关注国内外互联网产品，特别是在线教育方向</li>
		  <li>使用过，熟悉Bootstrap,jquery</li>
		  <li>熟练使用 JavaScript 测试框架</li>
		  <li>常用SSH框架和MySQL数据库进行业余开发</li>
		  <li>在GitHub上有自己的业余项目</li>
		  <li>了解前端安全机制</li>
		  <li>有前端性能优化经验</li>
		</ul>
	  </div>
	  <hr />
	  <div class="section joinus">
	    应聘该职位请将简历发送到：<a href="mailto:2723728494@qq.com">2723728494@qq.com</a>，邮件标题注明所应聘的职位，如格式“[应聘]姓名+前端开发工程师”
	  </div>
	</div>
  </div>
  </div>
  <div style="clear:both;">
	  <%@include file="/WEB-INF/pages/common/footer.jsp"%>
  </div> 
</body>
</html>
