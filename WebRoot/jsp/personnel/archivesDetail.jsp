<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
	<title>档案详情</title>
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
				<input type="text" class="layui-input" disabled="disabled" value="${archives.id}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">所属部门：</label>
			<select class="select" disabled="disabled">
				<option>${archives.dept.name}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">所属职位：</label>
			<select class="select" disabled="disabled">
				<option>${archives.post.name}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">姓&#12288;&#12288;名：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.name}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">性&#12288;&#12288;别：</label>
			<select class="select" disabled="disabled">
				<option>${archives.sex}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">身份证号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${fn:substring(archives.card,0,6)}************">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">联系电话：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.telephone}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">邮&#12288;&#12288;箱：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.email}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">籍&#12288;&#12288;贯：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.place}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">政治面貌：</label>
			<select class="select" disabled="disabled">
				<option>${archives.politics}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">学&#12288;&#12288;历：</label>
			<select class="select" name="education" disabled="disabled">
				<option>${archives.education}</option>
			</select>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">毕业院校：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.school}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">专&#12288;&#12288;业：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.specialty}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">银行卡号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.bank}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">社保卡号：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.socila}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-inline">
			<label class="layui-form-label">登&nbsp;&nbsp;记&nbsp;&nbsp;人：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.registrar}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">登记时间：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${fn:substring(archives.time,0,19)}">
			</div>
			<span class="msg">&nbsp;&nbsp;&nbsp;</span>
		</div><br/><br/>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">住&#12288;&#12288;址：</label>
			<div class="layui-input-block">
				<input type="text" class="layui-input" disabled="disabled" value="${archives.address}">
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">个人履历：</label>
			<div class="layui-input-block">
				<textarea class="layui-textarea" disabled="disabled">${archives.record}</textarea>
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">备&#12288;&#12288;注：</label>
			<div class="layui-input-block">
				<textarea class="layui-textarea" disabled="disabled">${archives.remarks}</textarea>
			</div>
		</div>
		
		<c:if test="${archivesAudit != null}">
		<hr/>
		<div class="layui-form-item">
			<label class="layui-form-label">审核结果：</label>
			<select class="select" disabled="disabled">
				<option>${archivesAudit.result}</option>
			</select>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">审核意见：</label>
			<div class="layui-input-block" style="width:300px;">
				<textarea class="layui-textarea" maxlength="50" disabled="disabled">${archivesAudit.opinion}</textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">审&nbsp;&nbsp;核&nbsp;&nbsp;人：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${archivesAudit.person}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">审核时间：</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" disabled="disabled" value="${fn:substring(archivesAudit.time,0,19)}">
			</div>
		</div>
		</c:if>
		
		<a href="archivesList.do" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:150px;">返&nbsp;&nbsp;回</a>
		
	</div>
</body>
</html>
