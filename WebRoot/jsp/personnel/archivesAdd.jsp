<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>档案登记</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajaxfileupload.js"></script>
	<script type="text/javascript">
		$(function(){
			//部门-职位-级联菜单
			$("#dept").click(function(){
				$.post(
					"leaveMenu.do",
					"deptID="+$("#dept").val(),
					function(data){
						var postList = "<option value='0'>请选择</option>";
						for(var post in data){
							postList += "<option value="+ data[post].id +">"+ data[post].name +"</option>";
						}
						$("#post").html(postList);
					},
					"json"
				);
			});
			
			//点击提交
			$("#sub").click(function(){
				$("input[name='state']").val("待审核");
				$("#myForm").submit();
			});
			
			//表单验证
			$("#myForm").submit(function(){
				var flg = true;
				if($("#dept").val()==0){
					flg = false;
				}
				if($("#post").val()==0){
					flg = false;
				}
				if($("input[name='name']").val()==""){
					$("input[name='name']").attr("placeholder","姓名不能为空");
					flg = false;
				}
				if($("input[name='card']").val()==""){
					$("input[name='card']").attr("placeholder","身份证不能为空");
					flg = false;
				}
				if($("input[name='card']").val()!="" && !/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test($("input[name='card']").val())){
					$("input[name='card']").val("");
					$("input[name='card']").attr("placeholder","身份证格式不正确");
					flg = false;
				}
				if($("input[name='telephone']").val()==""){
					$("input[name='telephone']").attr("placeholder","联系电话不能为空");
					flg = false;
				}
				if($("input[name='email']").val()==""){
					$("input[name='email']").attr("placeholder","邮箱不能为空");
					flg = false;
				}
				return flg;
			});
			
			//匹配联系电话
			$("input[name='telephone']").blur(function(){
				if(($(this).val()!="") && !/^1[3,5,8]\d{9}$/.test($(this).val())){
					$(this).val("");
					$(this).attr("placeholder","手机号格式不正确");
				};
			});
			
			//匹配邮箱
			$("input[name='email']").blur(function(){
				if(($(this).val()!="") && !/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/.test($(this).val())){
					$(this).val("");
					$(this).attr("placeholder","邮箱格式不正确");
				};
			});
			
			//银行卡号
			$("input[name='bank']").blur(function(){
				if(($(this).val()!="") && !/^\d+$/.test($(this).val())){
					$(this).val("");
					$(this).attr("placeholder","只能为数字");
				};
			});
			
			//社保卡号
			$("input[name='socila']").blur(function(){
				if(($(this).val()!="") && !/^\d+$/.test($(this).val())){
					$(this).val("");
					$(this).attr("placeholder","只能为数字");
				};
			});
		});
		
		//执行上传文件操作的函数		
		function ajaxFileUpload() {
			$.ajaxFileUpload({
				url : "${pageContext.request.contextPath}/fileUpload.do?name=photo&pathName="+$("input[name='photo']").val(),
				secureuri : false, //是否启用安全提交,默认为false   
				fileElementId : 'data', //文件选择框的id属性  
				dataType : 'text',
				success : function(data) {
					if(data.substring(0,1) == 1){
						$("input[name='photo']").val(data.substring(1));
						$("#img").attr("src","${pageContext.request.contextPath}/"+data.substring(1));
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
<form id="myForm" action="addArchives.do" method="post">
	<div class="layui-form-item" style="margin-top:20px;margin-right:20px;">
		
		<div style="width:300px;margin:10px auto;">
			<img alt="点我上传" id="img" style="width:180px;height:200px;" src="<%=request.getContextPath()%>/img/noavatar_middle.gif" /><br/>
			<input type="file" style="width:68px;" id="data" name="myfiles" onchange="ajaxFileUpload()" ><br/>
			<input type="hidden" name="photo" value="">
			<span class="" style="color:red;line-height:38px;" id="result"></span>
		</div>
		
		<div class="layui-inline">
			<label class="layui-form-label">所属部门：</label>
			<select class="select" id="dept" name="dept.id">
				<option value="0">请选择</option>
				<c:forEach var="dept" items="${deptList}">
					<option value="${dept.id}">${dept.name}</option>
				</c:forEach>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">所属职位：</label>
			<select class="select" id="post" name="post.id">
				<option value="0">请选择</option>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">姓&#12288;&#12288;名：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="16" name="name">
			</div>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">性&#12288;&#12288;别：</label>
			<select class="select" name="sex">
				<option>男</option>
				<option>女</option>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">身份证号：</label>
			<div class="layui-input-inline">
				<input type="text" maxlength="18" class="layui-input" name="card">
			</div>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">联系电话：</label>
			<div class="layui-input-inline">
				<input type="text" maxlength="11" class="layui-input" name="telephone">
			</div>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">邮&#12288;&#12288;箱：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="30" name="email">
			</div>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">籍&#12288;&#12288;贯：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="20" name="place">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">政治面貌：</label>
			<select class="select" name="politics">
				<option>群众</option>
				<option>共青团员</option>
				<option>中共党员</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">学&#12288;&#12288;历：</label>
			<select class="select" name="education">
				<option>初中及以下</option>
				<option>中专</option>
				<option>高中</option>
				<option>大专</option>
				<option>本科</option>
				<option>硕士</option>
				<option>博士及以上</option>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">毕业院校：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="20" name="school">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">专&#12288;&#12288;业：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="20" name="specialty">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">银行卡号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="20" name="bank">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">社保卡号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" maxlength="20" name="socila">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">住&#12288;&#12288;址：</label>
			<div class="layui-input-block">
				<input type="text" class="layui-input" maxlength="50" name="address">
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">个人履历：</label>
			<div class="layui-input-block">
				<textarea placeholder="请输入内容" maxlength="50" class="layui-textarea" name="record"></textarea>
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">备&#12288;&#12288;注：</label>
			<div class="layui-input-block">
				<textarea placeholder="请输入内容" maxlength="50" class="layui-textarea" name="remarks"></textarea>
			</div>
		</div>
		
		<input type="hidden" name="registrar" value="${sessionScope.users.realName}" />
		<input type="hidden" name="state" value="起草" />
		
		<input type="submit" value="保&nbsp;&nbsp;存" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:100px;" />
		<input type="button" value="提&nbsp;&nbsp;交" class="layui-btn layui-btn-radius" style="margin-top:20px;" id="sub" />
		<a href="archivesList.do" class="layui-btn layui-btn-radius" style="margin-top:20px">返&nbsp;&nbsp;回</a>
		
	</div>
</form>
</body>
</html>
