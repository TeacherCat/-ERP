<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>职位列表</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sysset.js"></script>
</head>

<body>
<c:if test="${sessionScope.users.role.name=='人事经理'}">

	<form action="postList.do" method="post" id="myForm">
		<div class="layui-form-item" style="margin-top:20px;">
			<div class="layui-inline">
				<label class="layui-form-label">职位名称：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" value="${post.name}">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">所属部门：</label>
				<select class="select" name="dept.id">
					<option value="0">不限</option>
					<c:forEach var="dept" items="${deptList}">
						<option value="${dept.id }" <c:if test="${post.dept.id==dept.id }">selected="selected"</c:if>>${dept.name}</option>
					</c:forEach>
				</select>
			</div>
			<input type="submit" class="layui-btn layui-btn-radius" style="margin-top:-5px;" value="查&nbsp;询" />
			<a class="layui-btn layui-btn-radius" style="margin-top:-5px;" href="postAdd.do?res=1">新&nbsp;增&nbsp;职&nbsp;位</a>
		</div>
	
		<div class="layui-field-box layui-form">
			<table class="layui-table admin-table">
				<thead>
					<tr>
						<th width="25%">职位编号</th>
						<th width="25%">职位名称</th>
						<th width="25%">所属部门</th>
						<th width="25%">操作</th>
					</tr>
				</thead>
				<c:if test="${page.pageList.size()==0}">
					<tr>
						<td colspan="4" style="text-align:center;color:red;line-height:50px;">暂未查到相关数据！</td>
					</tr>
				</c:if>
				<c:forEach var="post" items="${page.pageList}">
					<tr>
						<td>${post.id }</td>
						<td>${post.name }</td>
						<td>${post.dept.name }</td>
						<td><a href="postUpd.do?id=${post.id }&res=1" class="layui-btn layui-btn-normal layui-btn-mini">修改</a>
							<a href="postDetail.do?id=${post.id }" class="layui-btn layui-btn-mini">详情</a>
							<a href="postDel.do?id=${post.id}&currPageNo=${page.currPageNo}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirm('确定要删除吗？');">删除</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<p style="width:200px;margin:0px auto;margin-top:30px;color:red;">${msg}</p>
		</div>
	
		<%@ include file="../../../jsp/public/page.jsp" %>
	</form>
	
</c:if>

<c:if test="${sessionScope.users.role.name != '人事经理'}">
	<div style="font-size:22px;width:250px;margin:300px auto;color:red;">抱歉，您没有访问权限！</div>
</c:if>
</body>
</html>