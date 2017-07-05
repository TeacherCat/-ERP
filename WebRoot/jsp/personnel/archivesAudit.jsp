<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
	<title>档案审核</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
</head>

<body>
	<div class="layui-form-item" style="margin-top:20px;margin-right:20px;">
		
		<div style="width:300px;margin:10px auto;">
			<img alt="点我上传" style="width:180px;height:200px;" src="<%=request.getContextPath()%>/${archives.photo}" /><br/>
		</div>
		
		<div class="layui-inline">
			<label class="layui-form-label">档案编号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.id}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">所属部门：</label>
			<select class="select">
				<option>${archives.dept.name}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">所属职位：</label>
			<select class="select">
				<option>${archives.post.name}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">姓&#12288;&#12288;名：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.name}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">性&#12288;&#12288;别：</label>
			<select class="select">
				<option>${archives.sex}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">身份证号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${fn:substring(archives.card,0,6)}************">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">联系电话：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.telephone}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">邮&#12288;&#12288;箱：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.email}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">籍&#12288;&#12288;贯：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.place}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">政治面貌：</label>
			<select class="select" name="politics">
				<option>${archives.politics}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">学&#12288;&#12288;历：</label>
			<select class="select" name="education">
				<option>${archives.education}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">毕业院校：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.school}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">专&#12288;&#12288;业：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.specialty}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">银行卡号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.bank}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">社保卡号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.socila}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">登&nbsp;&nbsp;记&nbsp;&nbsp;人：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.registrar}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">登记时间：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" readonly="readonly" value="${fn:substring(archives.time,0,19)}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">住&#12288;&#12288;址：</label>
			<div class="layui-input-block">
				<input type="text" class="layui-input" readonly="readonly" value="${archives.address}">
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">个人履历：</label>
			<div class="layui-input-block">
				<textarea class="layui-textarea" readonly="readonly">${archives.record}</textarea>
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">备&#12288;&#12288;注：</label>
			<div class="layui-input-block">
				<textarea class="layui-textarea" readonly="readonly">${archives.remarks}</textarea>
			</div>
		</div>
		
		<hr/>
		
		<form id="myForm" action="auditArchives.do" method="post" >
		<div class="layui-form-item">
			<label class="layui-form-label">审核结果：</label>
			<select class="select" name="result">
				<option>审核通过</option>
				<option>驳回</option>
				<option>拒绝</option>
			</select>
			<span class="msg">&nbsp;*&nbsp;</span>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">审核意见：</label>
			<div class="layui-input-block" style="width:300px;">
				<textarea placeholder="请输入内容" class="layui-textarea" maxlength="50" name="opinion"></textarea>
			</div>
		</div>
		<input type="hidden" name="id" value="${archives.id}" />
		<input type="hidden" name="person" value="${sessionScope.users.realName}" />
		
		<input type="submit" value="提&nbsp;&nbsp;交&nbsp;&nbsp;审&nbsp;&nbsp;核" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:50px;"/>
		<a href="archivesList.do" class="layui-btn layui-btn-radius" style="margin-top:20px">返&nbsp;&nbsp;回</a>
		
		</form>
	</div>
</body>
</html>
