<%@page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 

			<div class="discussion-list-content" >
			<!--感谢的模板-->
			<div id="thanktemplate" style="display:none">
			<div data-key="" id="thank0" class="comment  discussion-item">
				<input id="thankId" type="text" value="thankId0" style="display:none"> </input>
				<div class="item-separator"></div>
				<div class="discussion-content">
				 thankcontent
				</div>
				<div class="question-toolbar">
					  <div class="question-toolbar-item">
					    <span class="vote-num">5个赞</span>
						<span data-vote-type="1" class="question-vote-up glyphicon glyphicon-arrow-up"></span>
						<span class="vote-num">5个踩</span>
						<span data-vote-type="-1" class="question-vote-down glyphicon glyphicon-arrow-down"></span>
						<span class="toolbar-item-separator">•</span>
						<a title="" href="javascript:void(0);" class="toggle-replies show-replies">0个评论</a>
						<span class="toolbar-item-separator">•</span>
						<span class="question-share-num">10个
						<div style="display:inline;" class="dropdown">
						  <div style="display:inline;" data-toggle="dropdown" class="dropdown-toggle"><a href="javascript:void(0);">分享</a></div>
						  <ul class="dropdown-menu">
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
						  </div>
						</span>
						<span class="toolbar-item-separator">•</span>
						<span class="mute-question">
						  <a data-target="#jubao-form" data-toggle="modal" class="jubao-mute-question" href="#">举报</a>
						</span>
					  </div>
					  <div class="question-user-info">
					    <a title="2014-7-1 15:36" class="question-time" href="javascript:void(0);">thankcreatetime</a>
						<a data-user-id="" class="author-nickname" href="javascript:void(0);">
						  <img src="/img/favicon.png" class="author-avatar">thankusername
						</a>
					  </div>
					</div>
					<div style="display: none;" class="replies-container">
					  <div class="replies-triangle"></div>
					  <div class="replies-panel">
					    <div class="replies">
						  
						</div>
						<div class="add-reply">
						  <div class="discussion-item reply ">
						    
							<div class="comments-block">
							<textarea class="discussion-text open"></textarea>
							<div class="discussion-controls">
							  <input type="button" value="评论" class="btn btn-primary discussion-submit">
							  <a tabindex="3" class="discussion-cancel" href="javascript:void(0);">取消</a>
							</div>
							</div>
						  </div>
						</div>
					  </div>
					</div>
				  </div>
		<span class="discussion-meta-separator"><hr></span>
</div><input id="thankpageNo" type="text" value="1" style="display:none"> </input>
  <input id="thankpages" type="text" value="<s:property value="pageModel.pages"/>" style="display:none"> </input>
		</div>
			<!--感谢的模板结束-->
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
							<li><a href="#">分享到QQ空间</a></li>
							<li><a href="#">分享到新浪微博</a></li>
							<li><a href="#">分享到人人网</a></li>
						  </ul>
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
						<!--感谢评论的模板-->
						<div id="thankcommenttemplate" style="display:none">
						<div id="" class="discussion-item reply">
						    <div class="discussion-content">
							   thankcomentcontent
							</div>
							<div class="discussion-meta">
							  <div class="discussion-meta-info">
							    <span title="2014-8-17 16:30" class="question-time">thankcommentcreatetime</span>
								<a href="#" data-user-id="" class="author-nickname">
								  <img src="/img/favicon.png" class="author-avatar">thankcommentuser
								</a>
							  </div>
							</div>							
						  </div>
<span class="discussion-meta-separator"></span>

</div>
						<!--感谢评论的模板结尾-->						
							
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
						  </div><span class="discussion-meta-separator"></span></s:iterator>
						</div>
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

