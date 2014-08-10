<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>基本资料-设置-格物学院</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content=" " />
<meta name="author" content="">
<meta name="keywords" content="" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<link rel="shortcut icon" type="image/png" href="<%=request.getContextPath()%>/favicon.png">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery.Jcrop.css" type="text/css" />   
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-ui-1.10.3.full.min.css" type="text/css" />      

</head>
<body>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/head.jsp"%>
	</div>
  </div>
  <div class="settings-page-container">
    <ul class="nav nav-tabs" role="tablist">
	  <li role="presentation" class="active"><s:a action="user_account" namespace="/user">基本资料</s:a></li>
	  <li role="presentation"><s:a action="user_password" namespace="/user">密码</s:a></li>
	  <li role="presentation"><s:a action="user_linkSn" namespace="/user">社区绑定</s:a></li>
	  <li role="presentation"><s:a action="user_email" namespace="/user">邮件</s:a></li>
	</ul>
    <div style="height:20px"></div>
	
	<form class="form-horizontal" role="form">
  <div class="form-group">
	<label for="headicon" class="col-sm-2 control-label">头像</label> 
	<div id="myImage" class="headicon-container">
	<s:if test="#session.user.image==null">
	  <img id="myCutImage" class="headicon" src="<%=ctx%>/img/headicon/default-headicon.png" alt="头像"/>
	</s:if>
	<s:if test="#session.user.image!=null">
	  <img id="myCutImage" class="headicon" src="<%=ctx%>/img/headicon/<s:property value='#session.user.image.path'/>" alt="头像"/>
	</s:if>
	<span class="headicon-edit-tip">修改头像</span>	
	</div>
  </div>
  <div class="form-group">
	<label for="nickname" class="col-sm-2 control-label">昵称</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="nickname" class="form-control" value="<s:property value='#session.user.nickname'/>" />
	</div>
  </div>
  <div class="form-group">
    <label for="realname" class="col-sm-2 control-label">姓名</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="realname" class="form-control" value="<s:property value='#session.user.username'/>" />
	</div>
  </div>
  <div class="form-group">
    <label for="gender" class="col-sm-2 control-label">性别</label>
	<div class="col-sm-6">			
<select  id="gender" class="form-control">
<s:if test="#session.user.sex==1">
<option value="1" selected>男</option>
<option value="0">女</option>
</s:if>
<s:if test="#session.user.sex==0">
<option value="1" >男</option>
<option value="0" selected>女</option>
</s:if>
<s:if test="#session.user.sex!=0&&#session.user.sex!=1">
<option value="1" selected>男</option>
<option value="0">女</option>
</s:if>
</select>
	
	</div>
  </div>
  <div class="form-group">
    <label for="birthday" class="col-sm-2 control-label">生日</label>
	<div class="col-sm-6">
	  <input type="date" id="birthday" class="form-control" value="<s:property value='#session.user.birthday'/>" />
	</div>
  </div>
  <div class="form-group">
    <label for="school" class="col-sm-2 control-label">学校</label>
	<div class="col-sm-6">
	  <input type="text" id="school" class="form-control" value="<s:property value='#session.user.school'/>" />
	</div>
  </div>
  <div class="form-group">
    <label for="advantage" class="col-sm-2 control-label">擅长科目</label>
	<div class="col-sm-6">
	  <input type="text" id="advantage" class="form-control" value="<s:property value='#session.user.aptcourses'/>" />
	</div>
  </div>
  <div class="form-group">
    <label for="bio" class="col-sm-2 control-label">一句话介绍</label>
	<div class="col-sm-6">
	  <input type="text" id="bio" class="form-control" value="<s:property value='#session.user.introduction'/>" />
	</div>
  </div>
  <div class="form-group">
    <div style="margin-left:58%;">
      <button id="profileSave" class="btn btn-success">保存</button>
    </div>
  </div>
</form>
  </div>
  <div class="clearfix">
	<div class="col-md-12 column">
      <%@include file="/WEB-INF/pages/common/footer.jsp"%>
	</div>
  </div>
  <div id="upload-picture" role="dialog" class="modal" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" >
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title" id="myModalLabel">设置头像</h4>
        </div>
		<div class="modal-body"> 
		  <div class="upload-btn-container">
		    <input type="button" class="btn btn-primary upload-btn" value="本地上传" />
            <input id="uploadfile" type="file" name="pic" accept="image/gif,image/png,image/jpeg,image/jpg" />
		  </div>
		  <span id="loading" style="display:none;float:left">
			  <img src="<%=request.getContextPath()%>/img/loading.gif" style="width:30px;height:30px;"/>
			  <span>上传中...</span>
		  </span>
			<form> 
			  <input type="hidden"  id="cuttingImage" value="<s:property value='#session.user.image.path'/>"/>        
			  <input type="hidden"  id="x" />  
			  <input type="hidden"  id="y" />  
			  <input type="hidden"  id="width" />  
			  <input type="hidden"  id="height" />  
			</form> 
			<div class="clearfix"></div>
            <div class="row img-upload-tip">
			  仅支持JPG, GIF,JPEG, PNG格式，文件小于5M。
			</div>          

            <div class="img-cut-preivew-container">
			  <div id="target" class="selected-img-src">
				<s:if test="#session.user.image==null">
				  <img id="targetpic" src="<%=request.getContextPath()%>/img/headicon/default-headicon.png"/>
				</s:if>
				<s:if test="#session.user.image!=null">
                  <img id="targetpic" src="<%=request.getContextPath()%>/img/headicon/<s:property value='#session.user.image.path'/>" />
				</s:if>
              </div>
			  <div id="preview" class="img-cut-preview">
			    <div>预览</div>
				<div class="img-preview-100">
				  <s:if test="#session.user.image==null">
				    <img id="previewpic" src="<%=request.getContextPath()%>/img/headicon/default-headicon.png"/>
				  </s:if>
				  <s:if test="#session.user.image!=null">
					<img id="previewpic" src="<%=request.getContextPath()%>/img/headicon/<s:property value='#session.user.image.path'/>" />
				  </s:if>
                </div>
                <div class="img-preview-75">
				  <s:if test="#session.user.image==null">
				    <img id="previewpic1" src="<%=request.getContextPath()%>/img/headicon/default-headicon.png"/>
				  </s:if>
				  <s:if test="#session.user.image!=null">
					<img id="previewpic1" src="<%=request.getContextPath()%>/img/headicon/<s:property value='#session.user.image.path'/>"/>
				  </s:if>
                </div>
                <div class="img-preview-30">
				    <s:if test="#session.user.image==null">
					  <img id="previewpic2" src="<%=request.getContextPath()%>/img/headicon/default-headicon.png"/>
				    </s:if>
				    <s:if test="#session.user.image!=null">
					  <img id="previewpic2" src="<%=request.getContextPath()%>/img/headicon/<s:property value='#session.user.image.path'/>"/>
				    </s:if>
                </div>
			  </div>
			  <div class="clearfix"></div>
            </div>
		  </div>
		  <div class="modal-footer">
			<button type="button" id="cutPicCancel" class="btn btn-default" data-dismiss="modal">取消</button>
			<button type="button" class="btn btn-primary" id="cutLoad">确定</button>
		  </div>
         </div>
      </div>
    </div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajaxfileupload.js"></script>  
<script src="<%=request.getContextPath()%>/js/jquery.Jcrop.min.js" type="text/javascript"></script>    
<script src="<%=request.getContextPath()%>/js/jquery-ui-1.10.3.full.min.js" type="text/javascript"></script>    
<script type="text/javascript">     
$(document).ready(function () {
//头像修改弹出modal对话框
$(".headicon-container").click(function(){
	$("#upload-picture").modal();
});
//上传相片并显示
$("#uploadfile").live("change",function(){
  var filename=$("#uploadfile").val();
  var	uploadUrl="../user/user_uploadPic.html?picFileName="+filename;
  //starting setting some animation when the ajax starts and completes
  $("#loading").ajaxStart(function(){$(this).show();}).ajaxComplete(function(){$(this).hide();});
  $.ajaxFileUpload({
	url:uploadUrl,
	secureuri:false,
	fileElementId:"uploadfile",
	async: false,
	dataType:'json',
	success:function(data,status){ 
	var messageBig="文件过大";
	var messageFai="文件上传失败";
	var messageSuc="文件上传成功";
	if(data.imageMessage==messageBig){
		alert("文件过大");
		$("#uploadfile").val("");
		return false;
	}
	if(data.imageMessage==messageFai){
		alert("文件上传失败!");
		$("#uploadfile").val("");
		return false;
	}				
	if(data.imageMessage==messageSuc){
		var hostname='<%=request.getContextPath()%>';
		var pathPic=hostname+"/img/headicon/"+data.uploadFile.path;							
		var api = $.Jcrop("#targetpic"); 
		api.destroy(); //设置为禁用裁剪效果 
		$("#previewpic").attr("src",pathPic);	
		$("#previewpic1").attr("src",pathPic);
		$("#previewpic2").attr("src",pathPic);
		$("#previewpic").css({  		
			width: 100 + 'px',   //100 为预览div的宽和高
			height: 100+ 'px',  
			marginLeft: '-' + 0 + 'px',  
			marginTop: '-' + 0 + 'px'  
		});  	
		$("#previewpic1").css({  		
			width:75 + 'px',   //75 为预览div的宽和高
			height: 75 + 'px',  
			marginLeft: '-' + 0 + 'px',  
			marginTop: '-' + 0 + 'px'  
		});  
		$("#previewpic2").css({  		
			width: 30 + 'px',   //30 为预览div的宽和高
			height: 30 + 'px',  
			marginLeft: '-' + 0 + 'px',  
			marginTop: '-' + 0 + 'px'  
		}); 
		$("#targetpic").attr("src",pathPic);	
		$("#targetpic").Jcrop({  
			onChange: updatePreview,  
			onSelect: updatePreview,  
			aspectRatio: 1,
						    //允许重新选择区域
	 		allowSelect:true,
						     //初始化选中区域 
						    //setSelect:[0,0,200,200],						    
						    //是否允许改变选中区域大小
			allowResize:true,
						    //固定选择区域
			fixedSupport:true,
						    //是否允许移动选中区域。 
			allowMove:true
		},function(){  
						    // Use the API to get the real image size  
						    //jcrop_api.setImage(pathPic);
			var bounds = this.getBounds();  
			boundx = bounds[0];  
			boundy = bounds[1];  
						    // Store the API in the jcrop_api variable  
			jcrop_api = this;  
		});					
		$("#cuttingImage").val(data.uploadFile.path);
		$("#uploadfile").val("");
	}			 
	},
	error:function(){
		$("#uploadfile").val("");
		alert("异步失败");
	}
});
				
});

//剪切完后上传
$("#cutLoad").live("click",function(){
    if($("#cuttingImage").val()==""){
		alert("没有选择上传图片!!!");
		return false;
	}
	if(($("#width").val()==0) || ($("#height").val()==0)){
		alert("没有选择裁剪比例!!!");
		return false;
	}
	var params = {
		"cuttingImageName":$("#cuttingImage").val(),
		"cuttingImageX":$("#x").val(),
		"cuttingImageY" : $("#y").val(),
		"cuttingImageWidth" : $("#width").val(),
		"cuttingImageHeight":$("#height").val()
	};
	$.ajax({
		type: "POST",
		url: "../user/user_cutPic.html",
		data:params,
		async: false,
		dataType:"json",
		success:function(data){ 				 	
			var hostname='<%=request.getContextPath()%>';
			var pathPic=hostname+"/img/headicon/"+data.uploadFile.path;
			var api = $.Jcrop("#targetpic"); 
			api.destroy(); //设置为禁用裁剪效果 
						$("#previewpic1").attr("src",pathPic);	
						$("#previewpic2").attr("src",pathPic);
						$("#previewpic").attr("src",pathPic);
						$("#previewpic").css({  		
						    width: 100 + 'px',   //100 为预览div的宽和高
						    height: 100+ 'px',  
						    marginLeft: '-' + 0 + 'px',  
						    marginTop: '-' + 0 + 'px'  
						});  	
						 $("#previewpic1").css({  		
						    width:75 + 'px',   //75 为预览div的宽和高
						    height: 75 + 'px',  
						    marginLeft: '-' + 0 + 'px',  
						    marginTop: '-' + 0 + 'px'  
						});  
						 $("#previewpic2").css({  		
						    width: 30 + 'px',   //30 为预览div的宽和高
						    height: 30 + 'px',  
						    marginLeft: '-' + 0 + 'px',  
						    marginTop: '-' + 0 + 'px'  
						});    
						$("#targetpic").attr("src",pathPic);						
						$("#targetpic").Jcrop({  
						    onChange: updatePreview,  
						    onSelect: updatePreview,  
						    aspectRatio: 1,
						    //允许重新选择区域
	 					    allowSelect:true,
						    //初始化选中区域 
						    //setSelect:[0,0,200,200],						    
						    //是否允许改变选中区域大小
						    allowResize:true,
						    //固定选择区域
						    fixedSupport:true,
						    //是否允许移动选中区域。 
						    allowMove:true 
						},function(){  
						    // Use the API to get the real image size  
						    //jcrop_api.setImage(pathPic);
						    var bounds = this.getBounds();  
						    boundx = bounds[0];  
						    boundy = bounds[1];  
						    // Store the API in the jcrop_api variable  
						    jcrop_api = this;  
						}); 				
						$("#cuttingImage").val(data.uploadFile.path)
						//$("#upload-picture").modal('hide');	
						$("#myCutImage").attr("src",pathPic);			
					
				},
				error: function(data){
				  

				  return false;
				}
				});
}); 
    var x;  
    var y;  
    var width;  
    var height;  

	//初始化，使对话框打开时可以对初始头像进行裁剪
    $("#targetpic").Jcrop({
	onChange: updatePreview,  
	 onSelect: updatePreview,  

	 aspectRatio: 1,
	//允许重新选择区域
	 allowSelect:true,
	//初始化选中区域 
	 //setSelect:[0,0,200,200],	
	//是否允许改变选中区域大小
	allowResize:true,
	//固定选择区域
	fixedSupport:true,
	//是否允许移动选中区域。 
	allowMove:true   
	},function(){  
	// Use the API to get the real image size
	 //jcrop_api.setImage(pathPic);
	  var bounds = this.getBounds();  
	 boundx = bounds[0]; 
	 boundy = bounds[1];  
	 // Store the API in the jcrop_api variable  
	 jcrop_api = this;  
	});
	
       //裁剪过程中，每改变裁剪大小执行该函数  
        function updatePreview(c){  
            if (parseInt(c.w) > 0){    
		//计算预览区域图片缩放的比例，通过计算显示区域的宽度(与高度)与剪裁的宽度(与高度)之比得到 
		var rx_100 = $(".img-preview-100").width()/c.w; 
		var ry_100 = $(".img-preview-100").height()/c.h;
		var rx_75 = $(".img-preview-75").width()/c.w; 
		var ry_75 = $(".img-preview-75").height()/c.h;
		var rx_30 = $(".img-preview-30").width()/c.w; 
		var ry_30 = $(".img-preview-30").height()/c.h;
                $("#previewpic").css({  		
                    width: Math.round(boundx*rx_100) + 'px',   //100 为预览div的宽和高
                    height: Math.round(boundy*ry_100) + 'px',  
                    marginLeft: '-' + Math.round(rx_100*c.x) + 'px',  
                    marginTop: '-' + Math.round(ry_100*c.y) + 'px'  
                });  	
		 $("#previewpic1").css({  		
                    width: Math.round(boundx*rx_75) + 'px',   //75 为预览div的宽和高
                    height: Math.round(boundy*ry_75) + 'px',  
                    marginLeft: '-' + Math.round(rx_75*c.x) + 'px',  
                    marginTop: '-' + Math.round(ry_75*c.y) + 'px'  
                });  
		 $("#previewpic2").css({  		
                    width: Math.round(boundx*rx_30) + 'px',   //30 为预览div的宽和高
                    height: Math.round(boundy*ry_30) + 'px',  
                    marginLeft: '-' + Math.round(rx_30*c.x) + 'px',  
                    marginTop: '-' + Math.round(ry_30*c.y) + 'px'  
                });    	
                $("#width").val(c.w);  //c.w 裁剪区域的宽  
                $("#height").val(c.h); //c.h 裁剪区域的高  
                $("#x").val(c.x);  //c.x 裁剪区域左上角顶点相对于图片左上角顶点的x坐标  
                $("#y").val(c.y);  //c.y 裁剪区域顶点的y坐标 
            }  
          };  
   
  

//保存个人信息
$("#profileSave").click(function(){
	var params = {
		"student.nickname":$("#nickname").val(),
		"student.username":$("#realname").val(),
		"student.sex" : $("#gender").val(),
		"student.birthday" :$("#birthday").val(),
		"student.school" : $("#school").val(),
		"student.aptcourses" : $("#advantage").val(),
		"student.introduction":$("#bio").val()
	};
	$.ajax({
		type: "POST",
		url: "../user/user_saveProfile.html",
		data:params,
		async: false,
		dataType:"json",
		success:function(data){ 				 	
			alert(data.erroMessage);			
		},
		error: function(data){
			alert(data.erroMessage)
			return false;
		}
	});
}); 
$('.headicon-container').hover(function(){
	$('.headicon-edit-tip').show();
},function(){
	$('.headicon-edit-tip').hide();
});
});
</script>
</body>
</html>

