<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
	<title>试题详情</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
</head>

<body>
	<div style="width:500px;margin:10px auto;">
		
		<div class="layui-form-item">
			<label class="layui-form-label">试题名称：</label>
			<label style="line-height:38px;">${topic.name }</label>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">试题类型：</label>
			<label style="line-height:38px;">${topic.type }</label>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">试题级别：</label>
			<label style="line-height:38px;">${topic.level }</label>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">所属部门：</label>
			<label style="line-height:38px;">${topic.dept.name }</label>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">出题人：</label>
			<label style="line-height:38px;">${topic.person }</label>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">出题时间：</label>
			<label style="line-height:38px;">${topic.time }</label>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">试题内容：</label>
			<div class="layui-input-block">
				<textarea class="layui-textarea" disabled="disabled">${topic.content }</textarea>
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">备&nbsp;&nbsp;注：</label>
			<div class="layui-input-block">
				<textarea class="layui-textarea" disabled="disabled">${topic.remarks }</textarea>
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">试题附件：</label>
			<label style="line-height:38px;">${fn:substring(topic.data,13,50) }</label>
			<div class="layui-input-block">
				<a class="layui-input" style="border:0px;color:blue;" href="fileDownload.do?pathName=${topic.data}">点我下载！！</a>
			</div>
		</div>
		
		<a href="topicList.do" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:150px;">返&nbsp;&nbsp;回</a>
		
	</div>
</body>
</html>
