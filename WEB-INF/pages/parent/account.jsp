<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>设置|格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />


<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-ui-datepicker.js"></script> 




<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<style>
</style>
    <script type="text/javascript">
      jQuery(function(){
        $.datepicker.regional['zh-CN'] = {
          clearText: '清除',
          clearStatus: '清除已选日期',
          closeText: '关闭',
          closeStatus: '不改变当前选择',
          prevText: '<上月',
          prevStatus: '显示上月',
          prevBigText: '<<',
          prevBigStatus: '显示上一年',
          nextText: '下月>',
          nextStatus: '显示下月',
          nextBigText: '>>',
          nextBigStatus: '显示下一年',
          currentText: '今天',
          currentStatus: '显示本月',
          monthNames: ['一月','二月','三月','四月','五月','六月', '七月','八月','九月','十月','十一月','十二月'],
          monthNamesShort: ['一月','二月','三月','四月','五月','六月', '七月','八月','九月','十月','十一月','十二月'],
          monthStatus: '选择月份',
          yearStatus: '选择年份',
          weekHeader: '周',
          weekStatus: '年内周次',
          dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],
          dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],
          dayNamesMin: ['日','一','二','三','四','五','六'],
          dayStatus: '设置 DD 为一周起始',
          dateStatus: '选择 m月 d日, DD',
          dateFormat: 'yy-mm-dd',
          firstDay: 1,
          initStatus: '请选择日期',
          isRTL: false
        };
        $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
        $('#date-picker').datepicker({changeMonth:true,changeYear:true,yearRange:'1900:2014'});
      });
    </script>
</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div style="width:760px;margin:0 auto;">
  <!--ul class="settings">
	<li class="settings-item-selected" style="display:inline;"><a class="settings-item" href="#">基本资料</a></li>
	<li style="display:inline;"><a class="settings-item" href="/qianduan/settings/password.jsp">密码</a></li>
	<li style="display:inline;"><a class="settings-item" href="/qianduan/settings/link-sn.jsp">社区绑定</a></li>
	<li style="display:inline;"><a class="settings-item" href="/qianduan/settings/email.jsp">邮件</a></li>
  </ul-->
    <ul class="nav nav-tabs" role="tablist">
	  <li role="presentation" class="active"><a href="#">基本资料</a></li>
	  <li role="presentation"><a href="/qianduan/settings/password.jsp">密码</a></li>
	  <li role="presentation"><a href="/qianduan/settings/link-sn.jsp">社区绑定</a></li>
	  <li role="presentation"><a href="/qianduan/settings/email.jsp">邮件</a></li>
	</ul>
  <div style="height:20px"></div>
  <div class="settings-body">
    <form action="account.jsp" method="POST" >
	  <div class="settings-info">
	  
	    <div class="item-info">
		  <label for="headicon">头像：</label>
		  <img src="qianduan/img/apple-touch-icon-144-precomposed.png" style="width:100px;height:100px;"/>
		  <div style="display:inline-block">
		  <button type="submit" style="width:100px">上传头像</button>
		  <div>支持 JPG、PNG、GIF 格式，不要超过 2M </div>
		  </div>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="nickname">昵称：</label>
		  <input autocomplete="off"  name="nickname" id="nickname" required>
		  &nbsp&nbsp<strong style="color:red;font-size:18px;vertical-align:middle;">*</strong>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="realname">姓名：</label>
		  <input autocomplete="off"  name="realname" id="realname" required>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="sex">性别：</label>
		  <select  name="sex" id="sex" style="width:100px">
		    <option value="none"> </option>
			<option value="male">男</option>
		    <option value="female">女</option>
		  </select>
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="birthday">生日：</label>
		  <input id="date-picker" type="text" readonly="readonly"/>
		  <span class="add-on"><i class="icon-th"></i></span>
		    <!--fieldset class="date-picker">
			  <select class="birth-year">
			    <option value="0"></option>
				<option value="2014">2014</option>
				<option value="2013">2013</option>
				<option value="2012">2012</option>
				<option value="2011">2011</option>
				<option value="2010">2010</option>
				<option value="2009">2009</option>
				<option value="2008">2008</option>
				<option value="2007">2007</option>
				<option value="2006">2006</option>
				<option value="2005">2005</option>
				<option value="2004">2004</option>
				<option value="2003">2003</option>
				<option value="2002">2002</option>
				<option value="2001">2001</option>
			  </select>
			  <select class="birthday-month">
			    <option value="0"></option>
				<option value="1"></option>
				<option value="2"></option>
				<option value="3"></option>
				<option value="4"></option>
				<option value="5"></option>
				<option value="6"></option>
				<option value="7"></option>
				<option value="8"></option>
				<option value="9"></option>
				<option value="10"></option>
				<option value="11"></option>
				<option value="12"></option>
			  </select>
			  <select></select>
			</fieldset-->
		  
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="school">学校：</label>
		  <input   name="school" id="school">
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="advantage">擅长科目：</label>
		  <input   name="advantage" id="advantage" style="width:200px;" placeholder="不同科目用空格隔开">
		</div>
		<hr style="line-height:50%;"/>
		
		<div class="item-info">
		  <label for="bio">一句话介绍自己：</label>
		  <input   name="bio" id="bio" style="width:300px;">
		</div>
		<hr style="line-height:50%;"/>
		
		<div style="margin:10px;"><button type="button" class="btn btn-success btn-lg" style="padding-top:2px;padding-bottom:2px;">保存</button></div>
		<div style="height:20px;"></div>
	  </div>
	</form>
  </div>
  </div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>
</body>
</html>