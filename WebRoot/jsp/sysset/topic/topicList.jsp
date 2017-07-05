<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>试题列表</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sysset.js"></script>
</head>

<body>
<c:if test="${sessionScope.users.role.name=='人事专员' || sessionScope.users.role.name=='人事经理'}">

	<form action="topicList.do" method="post" id="myForm">
	
		<div class="layui-form-item" style="margin-top:20px;">
			<div class="layui-inline">
				<label class="layui-form-label">试题名称：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" value="${topic.name }">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">试题级别：</label>
				<select class="select" name="level">
					<option value="0">不限</option>
					<option <c:if test="${topic.level=='A' }">selected="selected"</c:if>>A</option>
					<option <c:if test="${topic.level=='B' }">selected="selected"</c:if>>B</option>
					<option <c:if test="${topic.level=='C' }">selected="selected"</c:if>>C</option>
				</select>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">所属部门：</label>
				<select class="select" name="dept.id">
					<option value="0">不限</option>
					<c:forEach var="dept" items="${deptList }">
						<option value="${dept.id }" <c:if test="${topic.dept.id==dept.id }">selected="selected"</c:if>>${dept.name }</option>
					</c:forEach>
				</select>
			</div>
			<input type="submit" class="layui-btn layui-btn-radius" style="margin-top:-5px;" value="查&nbsp;询" />
			<a class="layui-btn layui-btn-radius" style="margin-top:-5px;" href="topicAdd.do?res=1">新&nbsp;增&nbsp;试&nbsp;题</a>
		</div>
		
		<div class="layui-field-box layui-form">
			<table class="layui-table admin-table">
				<thead>
					<tr>
						<th>试题名称</th>
						<th>试题类型</th>
						<th>试题级别</th>
						<th>所属部门</th>
						<th style="width:200px;">操作</th>
					</tr>
				</thead>
				<c:if test="${page.pageList.size()==0}">
					<tr>
						<td colspan="5" style="text-align:center;color:red;line-height:50px;">暂未查到相关数据！</td>
					</tr>
				</c:if>
				<c:forEach var="topic" items="${page.pageList }">
					<tr>
						<td>${topic.name }</td>
						<td>${topic.type }</td>
						<td>${topic.level }</td>
						<td>${topic.dept.name }</td>
						<td><a href="topicUpd.do?id=${topic.id }&res=1" class="layui-btn layui-btn-normal layui-btn-mini">修改</a>
							<a href="topicDetail.do?id=${topic.id }" class="layui-btn layui-btn-mini">详情</a>
							<a href="topicDel.do?id=${topic.id}&currPageNo=${page.currPageNo}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirm('确定要删除吗？');">删除</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<p style="width:100px;margin:0px auto;margin-top:30px;color:red;">${msg}</p>
		</div>
	
		<%@ include file="../../../jsp/public/page.jsp" %>
	</form>
</c:if>	

<c:if test="${sessionScope.users.role.name!='人事专员' && sessionScope.users.role.name!='人事经理' }">
	<div style="font-size:22px;width:250px;margin:300px auto;color:red;">抱歉，您没有访问权限！</div>
</c:if>
</body>
</html>
