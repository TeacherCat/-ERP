<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>添加薪酬项目</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sysset.js"></script>
</head>

<body>
	<div style="width:500px;margin:20px auto;">
		<form action="projectAdd.do" method="post" id="proForm">
		
			<div class="layui-form-item">
				<label class="layui-form-label">项目名称：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" maxlength="16" name="name">
				</div>
				<span class="msg">&nbsp;*&nbsp;</span>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">项目描述：</label>
				<div class="layui-input-block">
					<textarea placeholder="请输入内容" class="layui-textarea" maxlength="50" name="desc"></textarea>
				</div>
			</div>
			
			<p style="width:100px;margin:0px auto;margin-top:30px;color:red;">${msg}</p>
			<input type="submit" value="添&nbsp;&nbsp;加" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:100px;" />
			<a href="projectList.do" class="layui-btn layui-btn-radius" style="margin-top:20px">返&nbsp;&nbsp;回</a>
			
		</form>
	</div>
</body>
</html>
