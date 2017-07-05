<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>薪酬标准修改</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sysset.js"></script>
</head>

<body>
	<div style="width:600px;margin:20px auto;">
		<form action="standardUpd.do" method="post" id="stanForm">
			
			<div class="layui-form-item">
				<label class="layui-form-label">标准名称：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" maxlength="16" name="name" value="${stan.name }">
				</div>
				<span class="msg">&nbsp;*&nbsp;</span>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">标准总额：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="amount" value="<fmt:formatNumber type="number" value="${stan.amount }" pattern="0.00" maxFractionDigits="2"/>" readonly="readonly">
				</div>
				<span class="msg">&nbsp;*&nbsp;</span>
			</div>
			
			<hr/>
			
			<div class="layui-field-box layui-form" style="width:600px;">
				<table class="layui-table admin-table">
					<thead>
						<tr>
							<th width="40">项目编号</th>
							<th width="40">项目名称</th>
							<th width="20">项目金额(元)</th>
						</tr>
					</thead>
					<c:forEach var="staDet" items="${staDetList }">
						<tr>
							<td>${staDet.project.id }</td>
							<td>${staDet.project.name }</td>
							<td><input type="text" class="layui-input" name="money" value="<fmt:formatNumber type="number" value="${staDet.money }" pattern="0.00" maxFractionDigits="2"/>" onchange="totalPrice()"></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<input type="hidden" name="role" value="${sessionScope.users.role.name }" />
			<input type="hidden" name="state" value="起草" />
			<input type="hidden" name="project" value="" />
			<input type="hidden" name="id" value="${stan.id }" />
			
			<input type="button" value="提&nbsp;&nbsp;交" class="layui-btn layui-btn-radius" style="margin-top:20px;margin-left:100px;" id="sub" />
			<c:if test="${sessionScope.users.role.name!='薪酬经理' }">
				<input type="submit" value="修&nbsp;&nbsp;改" class="layui-btn layui-btn-radius" style="margin-top:20px;" />
			</c:if>
			<a href="standardList.do" class="layui-btn layui-btn-radius" style="margin-top:20px">返&nbsp;&nbsp;回</a>
			
		</form>
	</div>
</body>
</html>
