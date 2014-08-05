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
  <div style="width:760px;margin:0 auto;">
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
	  <img id="myCutImage" class="headicon" src="<%=ctx%>/img/default-headicon.png" alt="头像"/>
	</s:if>
	<s:if test="#session.user.image!=null">
	  <img id="myCutImage" class="headicon" src="<%=ctx%>/img/<s:property value='#session.user.image.path'/>" alt="头像"/>
	</s:if>
	<span class="headicon-edit-tip">修改头像</span>
	</div>
  </div>
  <div class="form-group">
	<label for="nickname" class="col-sm-2 control-label">昵称</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="nickname" class="form-control" value="<s:property value="#session.user.nickname"/>">
	</div>
  </div>
  <div class="form-group">
    <label for="realname" class="col-sm-2 control-label">姓名</label>
	<div class="col-sm-6">
	  <input type="text" autocomplete="on" id="realname" class="form-control" value="<s:property value="#session.user.username"/>">
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
	  <input type="date" id="birthday" class="form-control" value="<s:property value="#session.user.birthday"/>">
	</div>
  </div>
  <div class="form-group">
    <label for="school" class="col-sm-2 control-label">学校</label>
	<div class="col-sm-6">
	  <input type="text" id="school" class="form-control" value="<s:property value="#session.user.school"/>">
	</div>
  </div>
  <div class="form-group">
    <label for="advantage" class="col-sm-2 control-label">擅长科目</label>
	<div class="col-sm-6">
	  <input type="text" id="advantage" class="form-control" value="<s:property value="#session.user.aptcourses"/>">
	</div>
  </div>
  <div class="form-group">
    <label for="bio" class="col-sm-2 control-label">一句话介绍</label>
	<div class="col-sm-6">
	  <input type="text" id="bio" class="form-control" value="<s:property value="#session.user.introduction"/>">
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
<div id="upload-picture" role="dialog" class="modal fade" >
                <div class="modal-dialog" >
                  <div class="modal-content">
                    <div class="modal-body" >
                      
                        <div class="row btns">
                          <div class="col-xs-8">
                            <label class="btn-choose-file">选择照片
                              <input id="uploadfile" type="file" name="pic" accept="image/gif,image/png,image/jpeg,image/jpg">			      
                            </label>
                          </div>
			 <div id="loading" style="display:none;"><img src="<%=request.getContextPath()%>/img/loading.gif" style="width:75px;height:75px;"/></div>
                          <div class="col-xs-4">
			    <form> 
			    <input type="hidden"  id="cuttingImage"/>       
			    <input type="hidden"  id="x"/>  
			    <input type="hidden"  id="y"/>  
			    <input type="hidden"   id="width"/>  
			    <input type="hidden"  id="height"/>  
			    <input type="button" value="确定" id="cutLoad"/>  
			    <input id="cutPicCancel" type="button" value="取消" class="btn btn-cancel">
			    
			   </form> 
			    
                            
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-xs-12"><span class="upload-tip">仅支持JPG, GIF, PNG格式，文件小于5M。</span> <input type="button" value="上传" id="sub_upload" ></div>
			 
                        </div>
                        <div class="row">
			
                          <div  id="target"  style="width:300px;height:300px;overflow:hidden; border:1px solid gray;display:inline;">
<s:if test="#session.user.image==null"><img id="targetpic" src="<%=request.getContextPath()%>/img/joinus.png" style="width:300px;height:300px;"/>
	</s:if>
<s:if test="#session.user.image!=null">
                            <img id="targetpic" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:300px;height:300px;" /></s:if>
                           
                          </div>
			
                          <div id="preview"  style="width:300px;height:300px;overflow:hidden;margin-left:320px;margin-top:-300px">
			 
                            <div style="width:150px;height:150px;">
<s:if test="#session.user.image==null"><img id="previewpic" src="<%=request.getContextPath()%>/img/joinus.png" style="width:150px;height:150px;" />
	</s:if>
<s:if test="#session.user.image!=null">
<img id="previewpic" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:150px;height:150px;"/></s:if>
                            </div>150x150像素
                         
                          <div style="width:100px;height:150px;margin-left:170px;display:block;margin-top:-170px">
                            <div style="width:75px;height:75px;">
<s:if test="#session.user.image==null"><img id="previewpic1" src="<%=request.getContextPath()%>/img/joinus.png" style="width:75px;height:75px;" />
	</s:if>
<s:if test="#session.user.image!=null">
<img id="previewpic1" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:75px;height:75px;"/></s:if>
                            </div>75x75像素
                            <div style="width:50px;height:50px;">
<s:if test="#session.user.image==null"><img id="previewpic2" src="<%=request.getContextPath()%>/img/joinus.png" style="width:50px;height:50px;" />
	</s:if>
<s:if test="#session.user.image!=null">
<img id="previewpic2" src="<%=request.getContextPath()%>/img/<s:property value="#session.user.image.path"/>" style="width:50px;height:50px;"/></s:if>
                            </div>50x50像素
			     </div>
			    </div>
                         
                        </div>
                     
                    </div>
                  </div>
                </div>
              </div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajaxfileupload.js"></script>  
<script src="<%=request.getContextPath()%>/js/jquery.Jcrop.js" type="text/javascript"></script>    
<script src="<%=request.getContextPath()%>/js/jquery-ui-1.10.3.full.min.js" type="text/javascript"></script>    
<script type="text/javascript">

     
 $(document).ready(function () {
//剪切功能name="cuttingImageName" name="cuttingImageX" name="cuttingImageY" name="cuttingImageWidth" name="cuttingImageHeight"
    var x;  
    var y;  
    var width;  
    var height;  
    $(function(){  
        var jcrop_api, boundx, boundy;  
       //使原图具有裁剪功能 
        $("#targetpic").Jcrop({  
            onChange: updatePreview,  
            onSelect: updatePreview,  
            aspectRatio: 1  
        },function(){  
            // Use the API to get the real image size  
            var bounds = this.getBounds();  
            boundx = bounds[0];  
            boundy = bounds[1];  
            // Store the API in the jcrop_api variable  
            jcrop_api = this;  
        });  
       //裁剪过程中，每改变裁剪大小执行该函数  
        function updatePreview(c){  
            if (parseInt(c.w) > 0){    
                $("#previewpic").css({  
                    width: Math.round(150/c.w * boundx) + 'px',   //150 为预览div的宽和高
                    height: Math.round(150/c.h * boundy) + 'px',  
                    marginLeft: '-' + Math.round(150/c.w * c.x) + 'px',  
                    marginTop: '-' + Math.round(150/c.h * c.y) + 'px'  
                });  
		$("#previewpic1").css({  
                    width: Math.round(75/c.w * boundx) + 'px',   //75 为预览div的宽和高
                    height: Math.round(75/c.h * boundy) + 'px',  
                    marginLeft: '-' + Math.round(75/c.w * c.x) + 'px',  
                    marginTop: '-' + Math.round(75/c.h * c.y) + 'px'  
                });  
		$("#previewpic2").css({  
                    width: Math.round(50/c.w * boundx) + 'px',   //50 为预览div的宽和高
                    height: Math.round(50/c.h * boundy) + 'px',  
                    marginLeft: '-' + Math.round(50/c.w * c.x) + 'px',  
                    marginTop: '-' + Math.round(50/c.h * c.y) + 'px'  
                });  
                $("#width").val(c.w);  //c.w 裁剪区域的宽  
                $("#height").val(c.h); //c.h 裁剪区域的高  
                $("#x").val(c.x);  //c.x 裁剪区域左上角顶点相对于图片左上角顶点的x坐标  
                $("#y").val(c.y);  //c.y 裁剪区域顶点的y坐标 
            }  
          };  
    });
//剪切完后上传
$("#cutLoad").click(function(){
                                if($("#cuttingImage").val()==""){
				alert("没有选择上传图片!!!");
				return false;
				}
				if($("#width").val()==0){
				alert("没有选择裁剪比例!!!");
				return false;
				}
				if($("#height").val()==0){
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
				//async: false,
			       	dataType:"json",
				success:function(data){ 				 	
					        var hostname='<%=request.getContextPath()%>';
						var pathPic=hostname+"/img/"+data.uploadFile.path;
						$("#myCutImage").attr("src",pathPic);
						$("#targetpic").attr("src",pathPic);
						$("#previewpic").attr("src",pathPic);
						$("#previewpic1").attr("src",pathPic);
						$("#previewpic2").attr("src",pathPic);	
						$("#upload-picture").modal('hide');				
					
				},
				error: function(data){
				  

				  return false;
				}
				});
}); 
//取消按钮退出modal对话框
$("#cutPicCancel").click(function(){
			$("#upload-picture").modal('hide');
});

$(".headicon-container").click(function(){
				$("#upload-picture").modal();
			});
//上传相片
$("#sub_upload").click(function(){	
				var filename=$("#uploadfile").val();
				//判断上传文件格式
				  var suffixs=new Array(".jpg", ".jpeg", ".bmp", ".gif");
				  //截取上传文件格式
				  var fileType=filename.substring(filename.lastIndexOf('.'));	
				if(filename==""){
				  alert("请选择需要上传的图片");
				  return false;
				}else{
				 
				  //截取上传文件格式
				   if($.inArray(fileType,suffixs)<=-1){
				    alert("图片格式错误");
				    return false;
				  }else{
				    var	uploadUrl="../user/user_uploadPic.html?picFileName="+filename;
				  //starting setting some animation when the ajax starts and completes
				$("#loading").ajaxStart(function(){
					$(this).show();
				}).ajaxComplete(function(){
					$(this).hide();
				});
		                 //异步上传
				    $.ajaxFileUpload({
				      url:uploadUrl,
				      secureuri:false,
				      fileElementId:"uploadfile",
				      dataType:'json',
				      success:function(data,status){ 
					   var messageBig="文件过大";
					   var messageFai="文件上传失败";
					   var messageSuc="文件上传成功";
						
					   if(data.imageMessage==messageBig){
					  alert("文件过大");return false;
						}
					   if(data.imageMessage==messageFai){
					  alert("文件上传失败!");return false;
						}
					  if(data.imageMessage==messageSuc) {
						var hostname='<%=request.getContextPath()%>';
						var pathPic=hostname+"/img/"+data.uploadFile.path;
						$("#targetpic").attr("src",pathPic);
						$("#previewpic").attr("src",pathPic);
						$("#previewpic1").attr("src",pathPic);
						$("#previewpic2").attr("src",pathPic);	
						//var pathcut="../img/"+data.uploadFile.path;					
						$("#cuttingImage").val(data.uploadFile.path);
						//alert($("#cuttingImage").val());
						
						}			 
					
				      },
				      error:function(){
					alert("异步失败");
				      }
				    });
				  }
				}
      			});
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

