<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>简历修改</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajaxfileupload.js"></script>
	<script type="text/javascript">
		$(function(){
		    //点击提交
		    $("#sub").click(function(){
		    	$("input[name='state']").val("待面试");
		    	$("#myForm").submit();
		    });
		    
		    //表单验证
		    $("#myForm").submit(function(){
		    	var flg = true;
		    	if($("input[name='name']").val()==""){
		    		$("input[name='name']").attr("placeholder","请输入姓名");
		    		flg = false;
		    	}
		    	if($("input[name='age']").val()==""){
		    		$("input[name='age']").attr("placeholder","请输入年龄");
		    		flg = false;
		    	}
		    	if($("input[name='age']").val()!="" && !/^[1-9]\d*$/.test($("input[name='age']").val())){
					$("input[name='age']").val("");
					$("input[name='age']").attr("placeholder","输入非法");
					flg = false;
				}
		    	if($("input[name='telephone']").val()==""){
		    		$("input[name='telephone']").attr("placeholder","请输入电话");
		    		flg = false;
		    	}
		    	if(($("input[name='telephone']").val()!="") && !/^1[3,5,8]\d{9}$/.test($("input[name='telephone']").val())){
					$("input[name='telephone']").val("");
					$("input[name='telephone']").attr("placeholder","手机号格式不正确");
				};
		    	if($("select[name='releases.id']").val()=="0"){
		    		flg = false;
		    	}
		    	return flg;
		    });
		});

		//执行上传文件操作的函数		
		function ajaxFileUpload() {
			$.ajaxFileUpload({
				url : "${pageContext.request.contextPath}/fileUpload.do?name=resum&pathName="+$("input[name='data']").val(),
				secureuri : false, //是否启用安全提交,默认为false   
				fileElementId : 'data', //文件选择框的id属性  
				dataType : 'text',
				success : function(data) {
					if(data.substring(0,1) == 1){
						$("input[name='data']").val(data.substring(1));
						$("#data").val(data.substring(1));
						$("#result").text("上传成功！");
					}else{
						$("#result").text(data.substring(1));
					}
				},
				error : function(data) {
					$("#result").text("文件上传失败！");
				}
			});
		}
	</script>
</head>

<body>

<form id="myForm" action="updResumes.do" method="post">
	<div style="width:500px;margin:10px auto;">
		<div class="layui-form-item">
			<label class="layui-form-label">姓&#12288;&#12288;名：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="16" name="name" value="${resumes.name}">
			</div>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">性&#12288;&#12288;别：</label>
			<select class="select" name="sex">
				<option value="男" <c:if test="${resumes.sex=='男'}">selected="selected"</c:if>>男</option>
				<option value="女" <c:if test="${resumes.sex=='女'}">selected="selected"</c:if>>女</option>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">年&#12288;&#12288;龄：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="2" name="age" value="${resumes.age}">
			</div>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">学&#12288;&#12288;历：</label>
			<select class="select" name="education">
				<option <c:if test="${resumes.education=='初中及以下'}">selected="selected"</c:if>>初中及以下</option>
				<option <c:if test="${resumes.education=='中专'}">selected="selected"</c:if>>中专</option>
				<option <c:if test="${resumes.education=='高中'}">selected="selected"</c:if>>高中</option>
				<option <c:if test="${resumes.education=='大专'}">selected="selected"</c:if>>大专</option>
				<option <c:if test="${resumes.education=='本科'}">selected="selected"</c:if>>本科</option>
				<option <c:if test="${resumes.education=='硕士'}">selected="selected"</c:if>>硕士</option>
				<option <c:if test="${resumes.education=='博士及以上'}">selected="selected"</c:if>>博士及以上</option>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">电&#12288;&#12288;话：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="11" name="telephone" value="${resumes.telephone}">
			</div>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">应聘职位：</label>
			<select class="select" name="releases.id">
				<option value="0">请选择</option>
				<c:forEach var="releases" items="${releasesList}">
					<option value="${releases.id}" <c:if test="${resumes.releases.id==releases.id}">selected="selected"</c:if>>${releases.id}--${releases.post.name}</option>
				</c:forEach>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		
		<div class="layui-inline">
			<label class="layui-form-label">简历附件：</label>
			<div class="layui-input-inline">
				<input type="file" class="layui-input" style="width:250px;border:0px;" id="data" name="myfiles" onchange="ajaxFileUpload()" >
				<input type="hidden" name="data" value="${resumes.data}">
			</div>
			<div class="layui-input-inline">
				<label class="layui-form-label"></label>
				<span class="layui-input-inline" style="color:red;line-height:38px;" id="result"></span>
			</div>
		</div><br/><br/><hr/>
		
		<input type="hidden" name="id" value="${resumes.id}" />
		<input type="hidden" name="registrar" value="${sessionScope.users.realName}" />
		<input type="hidden" name="state" value="起草" />
		
		<input type="submit" value="保&nbsp;&nbsp;存" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:100px;" />
		<input type="button" value="提&nbsp;&nbsp;交" class="layui-btn layui-btn-radius" style="margin-top:20px;" id="sub" />
		<a href="resumesList.do" class="layui-btn layui-btn-radius" style="margin-top:20px">返&nbsp;&nbsp;回</a>
	</div>
	
</form>	
</body>
</html>
