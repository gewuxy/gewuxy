<%@page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 

<div class="question-list-content">
			  <input id="pages" type="text" value="<s:property value="pageModel.pages"/>" style="display:none"> </input>
			  <s:iterator value="pageModel.list">
			    <div class="thread" id="whole<s:property value="id"/>" style="padding-bottom:60px">
				  <div class="question discussion-item"   id="question<s:property value="id"/>">
                                        <input id="questionId" type="text" value="<s:property value="id"/>" style="display:none"> </input>
				    <div class="question-content" name="question-content"><s:property value="content"/></div>
					<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个同问</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="顶起，我有同样的问题；顶起后问题有新回答我们将通知您" data-vote-type="1"></span>
						<span class="toolbar-item-separator">•</span>
						<span id="questioncommentsize"><s:property value="comments.size()"/></span><a  class="toggle-replies show-replies" href="javascript:void(0);" title="添加回答或者申请修改问题">个评论</a>
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
						<s:iterator value="comments"  >
						  <div class="discussion-item reply" id="questincoment<s:property value="id"/>">
						    <div class="discussion-content" >
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
							<div class="item-separator"></div>
						  </div></s:iterator>
						</div><span class="discussion-meta-separator"><hr/></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    <div class="reply-options" style="display:table;">
							  <div>
							    <input type="button" class="btn btn-primary discussion-reply" value="回答问题">
							  </div>
							  <div class="or">或者</div>
							  <div class="suggest-modify-question">
							    <textarea class="suggest-modify-question-dummy" placeholder="建议修改问题..."></textarea>
							  </div>
							</div>
							<div class="comments-block" style="display:none">
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
				  </div>
				  <div class="answers" id="answers<s:property value="id"/>">
				
                                <s:iterator value="answers" status="st" ><s:if test="#st.index<=2">  <span class="discussion-meta-separator"><hr/></span>
					<div class="answer  discussion-item" data-question-key="" id="answer<s:property value="id"/>">
					<input id="answerId" type="text" value="<s:property value="id"/>" style="display:none"> </input>
					  <div class="item-separator"></div>
						<div class="discussion-content">
						  <s:property value="content"/>
						</div>
						<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="答案很好，顶上去让大家看到" data-vote-type="1"></span>
						<span class="vote-num">5个踩</span>
						<span class="question-vote-down glyphicon glyphicon-arrow-down" title="答非所问或者回答的不好" data-vote-type="-1"></span>
						<span class="toolbar-item-separator">•</span><span id="answercommentsize"><s:property value="comments.size()"/></span>
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
						  <div class="discussion-item reply" id="answecomment<s:property value="id"/>" >
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
							<div class="item-separator"></div>
						  </div></s:iterator>
						</div><span class="discussion-meta-separator"><hr/></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    <div style="display:table;" class="reply-options">
							  <div>
							    <input type="button" value="回答问题" class="btn btn-primary discussion-reply">
							  </div>
							  <div class="or">或者</div>
							  <div class="suggest-modify-question">
							    <textarea placeholder="建议修改回答..." class="suggest-modify-question-dummy"></textarea>
							  </div>
							</div>
							<div class="comments-block" style="display: none">
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
					  </div></s:if></s:iterator>
					<s:if test="answers.size()>3">
					  <div class="show-answer-links">
						<a href="javascript:void(0);" class="show-hidden-answers">显示全部回答</a>
						<!--span class="discussion-meta-separator">•</span>
						<a href="javascript:void(0);" class="show-answer-form">
                                我要回答
                        </a-->
                      </div></s:if>
					  <div class="hidden-answers" style="display:none">
						<s:iterator value="answers" status="st" ><s:if test="#st.index>2">  <span class="discussion-meta-separator"><hr/></span>
					<div class="answer  discussion-item" data-question-key="" id="answer<s:property value="id"/>">
					<input id="answerId" type="text" value="<s:property value="id"/>" style="display:none"> </input>
					  <div class="item-separator"></div>
						<div class="discussion-content">
						  <s:property value="content"/>
						</div>
						<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span class="question-vote-up glyphicon glyphicon-arrow-up" title="答案很好，顶上去让大家看到" data-vote-type="1"></span>
						<span class="vote-num">5个踩</span>
						<span class="question-vote-down glyphicon glyphicon-arrow-down" title="答非所问或者回答的不好" data-vote-type="-1"></span>
						<span class="toolbar-item-separator">•</span><span id="answercommentsize"><s:property value="comments.size()"/></span>
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
						  <div class="discussion-item reply" id="answecomment<s:property value="id"/>" >
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
							<div class="item-separator"></div>
						  </div></s:iterator>
						</div><span class="discussion-meta-separator"><hr/></span>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    <div style="display:table;" class="reply-options">
							  <div>
							    <input type="button" value="回答问题" class="btn btn-primary discussion-reply">
							  </div>
							  <div class="or">或者</div>
							  <div class="suggest-modify-question">
							    <textarea placeholder="建议修改回答..." class="suggest-modify-question-dummy"></textarea>
							  </div>
							</div>
							<div class="comments-block" style="display: none">
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
					  </div></s:if></s:iterator>
					  </div>
					</div>
				    <div class="add-answer" style="" id="addanswer<s:property value="id"/>">
					<input type="text" style="display:none" value="<s:property value="id"/>" id="questionId">
					  <div class="answer">
						<input type="hidden" name="question-key" value="">
						<div class="comments-block">
							<textarea class="discussion-text" placeholder="回答这个问题..."></textarea>
							<div class="discussion-controls" style="display:none;">
							  <input type="button" class="btn btn-primary discussion-submit" value="回答">
							  <a href="javascript:void(0);" class="answer-cancel" tabindex="3" >取消</a>
							</div>
						</div>
					  </div>
					</div>
				</div></s:iterator>
			  </div>

<script>
$("li > a.jiathis_button_qzone,li > a.jiathis_button_weixin,li > a.jiathis_button_tsina,li > a.jiathis_button_tqq,li > a.jiathis_button_renren").mouseover(function(){
$(this).removeAttr('title');
});
</script>