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
</head>

<body>
  
  <div class="row clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  
<div style="background-color:blue;margin-top:-20px;width:100%;clear:both;display:table;">
    <div class="row-fluid">
	  <div class="chapter" >
		<div class="subject-container">
		  <div class="chapter-info">
		    <div class="chapter-backto-subject">
			  <s:a action="book_findByName" namespace="/book">
					<s:param name="book.name" value="pageModel.list[0].book.name"></s:param>
				        <h3><--返回<s:property value="pageModel.list[0].book.name" /></h3></s:a>
			</div>			
			<hr style="color:#333333;"/>
                       <h2 class="chapter-title"><s:property value="pageModel.list[0].parent.name" /></h2>
			<div class="subject-description"></div>
			
		  </div>
		</div>
	  </div>
	<div class="content-lists">
       <s:iterator value="pageModel.list">
	  <div class="tutorial-container">
	    <div class="tutorial-overview">
		  <h3><s:property value="name"/></h3>
		  <div class="tutorial-description">
		    <s:property value="name" />
		  </div>
		</div>
		<div class="tutorial-contents">
		  <div class="contents-box">
		    <ul class="section-container" style="list-style:none">
                        <s:iterator value="children">
			  <li class="section-item">
			 <s:a action="video_getByBookItemId" style="text-decoration:none" namespace="/video" >
                                <s:param name="bookItem.id" value="id"/> 
			    <div class="section-item-icon">
				  <div class="pipe-bottom"></div>
				  <div class="pipe-top"></div>
				  <div class="video-item"><span class="glyphicon glyphicon-play-circle"> </span></div>
				  <div class="exercise-icon" style="display:none"><span class=""></span></div>
				</div>
				<span class="section-item-title"><s:property value="name" /></span>
			  </s:a>
			  </li>
                         </s:iterator>
			</ul>
		  </div>
		</div>
	  </div>

	</s:iterator>  
	 
	</div>
  </div>
  </div>    
<hr color=#de3456/>
</body>
</html>
