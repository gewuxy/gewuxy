<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>后端开发工程师-格物学院</title>
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
	<div class="title">Web后端开发工程师</div>
	<div class="body">
	  <div class="section responsibility">
	    <h3>职位描述</h3>
		<ul>
		  <li>负责格物学院网站的后台开发工作，主要架构是SSH</li>
		  <li>与产品设计师/前端工程师共同探讨设计网站的新功能，改善网站的架构</li>
		  <li>实现稳定可扩展的后台服务，完成产品的快速迭代</li>
		</ul>
	  </div>
	  <div class="section requirement">
	    <h3>职位要求</h3>
		<ul>
		  <li>对计算机相关基础知识有较好理解，了解常用数据结构和算法</li>
		  <li>至少掌握一门 web 编程语言，如 Python、Ruby、Java、PHP、Node.js 等</li>
		  <li>熟悉 web 开发相关技术，如 web 框架、HTTP 协议、web 安全、单元测试等</li>
		  <li>掌握关系数据库及 SQL 相关知识，了解基本优化和设计原则</li>
		  <li>良好的编码风格、沟通能力和团队合作精神，有责任感</li>
		  <li>有很强的学习能力，有主动性和上进心，能承担压力</li>
		</ul>
	  </div>
	  <div class="section bonus">
	    <h3>加分项</h3>
		<ul>
		  <li>格物学院深度用户，关注国内外互联网产品，特别是在线教育方向</li>
		  <li>有前端开发经验，了解 HTML、CSS、JavaScript、jquery</li>
		  <li>参与设计并实现过大型互联网应用或系统</li>
		  <li>常用SSH框架和MySQL数据库进行业余开发</li>
		  <li>在GitHub上有自己的业余项目</li>
		  <li>对开源技术有强烈的兴趣和爱好，参与或向开发者提交过 bug 和 patch</li>
		</ul>
	  </div>
	  <hr />
	  <div class="section joinus">
	    应聘该职位请将简历发送到：<a href="mailto:2723728494@qq.com">2723728494@qq.com</a>，邮件标题注明所应聘的职位，如格式“[应聘]姓名+后端开发工程师”
	  </div>
	</div>
  </div>
  </div>
  <div style="clear:both;">
	  <%@include file="/WEB-INF/pages/common/footer.jsp"%>
  </div> 
</body>
</html>
