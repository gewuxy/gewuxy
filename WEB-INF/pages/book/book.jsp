<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<title>格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<style>
</style>
</head>

<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div  class="external-styles-missing"
        style='background: #f2dede;font:bold 20px Arial, Helvetica;text-align:center'>
        <p>oooohps!格物学院提出了一个问题</p>
        <p>请确保网络畅通哦！或者再刷新一下下，o(∩_∩)o</p>
  </div>
  
  <div style="background-color:blue;margin-top:-20px;width:100%;clear:both;display:table;">
    <div class="row-fluid">
	  <div class="left">
		<div class="subject-container">
		<s:iterator value="pageModel.list">
		  <div class="subject-info">
			<h1 class="subject-title"><s:property value="name" /></h1>
			<hr style="color:#333333;"/>
			<div class="subject-description"><s:property value="desc" /></div>
			
		  </div>
		  </s:iterator>
		</div>
	  </div>
	  <div class="right">
	  <ul>
	   <hr color=#de3456/>
		<s:iterator value="pageModel.list[0].bookItems">
		<s:if test="level==1">
		<li class="section" >
                 <s:a action="bookItem_list" namespace="/bookItem" style="text-decoration:none;width:100%">
					<s:param name="pid" value="id"> </s:param>
		<span class="glyphicon glyphicon-adjust tutorial-nav-node-icon"></span><s:property        value="name" />
		</s:a></li>
		<hr color=#de3456/>
		</s:if>
		</s:iterator>
		
	  </ul>
	 
	</div>
	</div>
  </div>
  
  <hr color=#de3456/>	 
</body>
</html>
