<%@page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 

			<div class="discussion-list-content" >
			<input id="thankpages" type="text" value="<s:property value="pageModel.pages"/>" style="display:none"> </input>
			<s:iterator value="pageModel.list">
			  <div class="comment  discussion-item" id="thank<s:property value="id"/>" data-key="">
				<input id="thankId" type="text" value="<s:property value="id"/>" style="display:none"> </input>
				<div class="item-separator"></div>
				<div class="discussion-content">
				  <s:property value="content"/>
				</div>
				<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up"  data-vote-type="1"></span>
						<span class="vote-num">5个踩</span>
						<span class="question-vote-down glyphicon glyphicon-arrow-down" data-vote-type="-1"></span>
						<span class="toolbar-item-separator">•</span><span id="thankcommentcount" class="toolbar-item-separator"><s:property value="comments.size()"/></span>
						<a class="toggle-replies show-replies" href="javascript:void(0);" title="">个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div class="dropdown" style="display:inline;">
						  <div class="dropdown-toggle" data-toggle="dropdown" style="display:inline;"><a href="javascript:void(0);">分享</a></div>
						  <ul class="dropdown-menu">
							<li><a href="javascript:;" class="jiathis_button_qzone">分享到QQ空间</a></li>
							<li><a href="javascript:;" class="jiathis_button_weixin">分享到微信朋友圈</a></li>
							<li><a href="javascript:;" class="jiathis_button_tsina">分享到新浪微博</a></li>
							<li><a href="javascript:;" class="jiathis_button_tqq">分享到腾讯微博</a></li>
							<li><a href="javascript:;" class="jiathis_button_renren">分享到人人网</a></li>
						  </ul>
						  <script type="text/javascript" >
var jiathis_config={
	siteNum:6,
	sm:"tsina,qzone,weixin,renren,cqq,douban",
	summary:$(".tutorial-title").text(),
	title:"格物学院",
	boldNum:0,
	appkey:{
		"tsina":"weibo",
		"tqq":"tencent-weibo"
	},
	shortUrl:false,
	hideMore:true
}
		  </script>
		  <script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a href="#" class="jubao-mute-question" data-toggle="modal" data-target="#jubao-form">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a href="javascript:void(0);" class="question-time" title="2014-7-1 15:36"><s:date name="createTime" format="yyyy-MM-dd" /></a>
						<a href="javascript:void(0);" class="author-nickname" data-user-id="">
						  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
						</a>
					  </div>
					</div>
					<div class="replies-container" style="display:none;">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
					    <div class="replies">
											
							
						<s:iterator value="comments">
						  <div class="discussion-item reply" id="" >
						    <div class="discussion-content">
							   <s:property value="content"/>
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span class="question-time" title="2014-8-17 16:30"><s:date name="createTime" format="yyyy-MM-dd" /></span>
								<a class="author-nickname" data-user-id="" href="#">
								  <img class="author-avatar" src="/img/favicon.png"><s:property value="student.username"/><s:property value="parent.username"/><s:property value="teacher.username"/>
								</a>
							  </div>
							</div>							
						  </div></s:iterator>
						</div><span class="discussion-meta-separator"><hr></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    
							<div class="comments-block">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" class="btn btn-primary discussion-submit" value="评论">
							  <a href="javascript:void(0);" class="discussion-cancel" tabindex="3" >取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
				  </div><span class="discussion-meta-separator"><hr/></span></s:iterator>
				</div>
<script>
$("li > a.jiathis_button_qzone,li > a.jiathis_button_weixin,li > a.jiathis_button_tsina,li > a.jiathis_button_tqq,li > a.jiathis_button_renren").mouseover(function(){
$(this).removeAttr('title');
});
</script>
