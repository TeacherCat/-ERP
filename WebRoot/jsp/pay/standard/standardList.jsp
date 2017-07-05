<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>薪酬标准列表</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/layui/css/layui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sysset.js"></script>
<body>
<c:if test="${sessionScope.users.role.name=='薪酬专员' || sessionScope.users.role.name=='薪酬经理'}">

	<form action="standardList.do" method="post" id="myForm">

		<div class="layui-form-item" style="margin-top:20px;">
			<div class="layui-inline">
				<label class="layui-form-label">标准名称：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" value="${stan.name}" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">标准状态：</label>
				<select class="select" name="state">
					<option value="0">不限</option>
					<option <c:if test="${stan.state=='审核中'}">selected="selected"</c:if>>审核中</option>
					<option <c:if test="${stan.state=='审核通过'}">selected="selected"</c:if>>审核通过</option>
					<option <c:if test="${stan.state=='驳回'}">selected="selected"</c:if>>驳回</option>
				</select>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">薪酬总额：</label>
				<select class="select" name="amount">
					<option value="0">不限</option>
					<option value="1" <c:if test="${stan.amount==1}">selected="selected"</c:if>>5000以下</option>
					<option value="2" <c:if test="${stan.amount==2}">selected="selected"</c:if>>5000-10000</option>
					<option value="3" <c:if test="${stan.amount==3}">selected="selected"</c:if>>10000-20000</option>
					<option value="4" <c:if test="${stan.amount==4}">selected="selected"</c:if>>20000以上</option>
				</select>
			</div>
		</div>
		
		<div class="layui-form-item" style="margin-top:20px;">
			<div class="layui-inline">
				<label class="layui-form-label">登记时间：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="begin" name="time" value="${stan.time }">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">至&#12288;&#12288;&nbsp;</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" id="end" name="endTime" value="${endTime }" onclick="endTimeClick()">
				</div>
			</div>
			<input type="submit" class="layui-btn layui-btn-radius" style="margin-top:-5px;" value="查&nbsp;询" />
			<c:if test="${sessionScope.users.role.name=='薪酬专员'}">
				<a class="layui-btn layui-btn-radius" style="margin-top:-5px;" href="standardAdd.do?res=1">薪&nbsp;酬&nbsp;标&nbsp;准&nbsp;登&nbsp;记</a>
			</c:if>
		</div>
		
		<div class="layui-field-box layui-form">
			<table class="layui-table admin-table">
				<thead>
					<tr>
						<th>标准名称</th>
						<th>薪酬总额</th>
						<th>登记人</th>
						<th>登记时间</th>
						<th>审核时间</th>
						<th>状态</th>
						<th style="width:200px;">操作</th>
					</tr>
				</thead>
				<c:if test="${page.pageList.size()==0}">
					<tr>
						<td colspan="9" style="text-align:center;color:red;line-height:50px;">暂未查到相关数据！</td>
					</tr>
				</c:if>
				<c:forEach var="stan" items="${page.pageList }">
					<tr>
						<td>${stan.name }</td>
						<td><fmt:formatNumber type="number" value="${stan.amount }" pattern="0.00" maxFractionDigits="2"/></td>
						<td>${stan.registrar }</td>
						<td>${fn:substring(stan.time, 0, 10)}</td>
						<td>
							<c:forEach var="staAud" items="${staAudList }">
								<c:if test="${staAud.standard.id==stan.id }">
									<%-- ${fn:substring(staAud.time, 0, 10)} --%>
									<fmt:formatDate value="${staAud.time}" type="both" pattern="yyyy-MM-dd"/>
								</c:if>
							</c:forEach>
						</td>
						<td>${stan.state}</td>
						<td>
							<a href="standardDetail.do?id=${stan.id }" class="layui-btn layui-btn-mini">详情</a>
							
							<c:if test="${(stan.state=='起草' || stan.state=='驳回') && sessionScope.users.role.name=='薪酬专员' }">
								<a href="standardUpd.do?id=${stan.id }&res=1" class="layui-btn layui-btn-normal layui-btn-mini">修改</a>
							</c:if>
							
							<c:if test="${stan.state=='审核中' && sessionScope.users.role.name=='薪酬经理' }">
								<a href="standardAudit.do?id=${stan.id }&res=1" class="layui-btn layui-btn-normal layui-btn-mini">审核</a>
							</c:if>
							
							<c:if test="${sessionScope.users.role.name=='薪酬经理' && stan.state!='审核中' }">
								<a href="standardDel.do?id=${stan.id }&currPageNo=${page.currPageNo}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirm('确定要删除吗？');">删除</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</table>
			<p style="width:100px;margin:0px auto;margin-top:30px;color:red;">${msg}</p>
		</div>
		
		<%@ include file="../../../jsp/public/page.jsp" %>
	</form>
</c:if>

<c:if test="${sessionScope.users.role.name!='薪酬专员' && sessionScope.users.role.name!='薪酬经理'}">
	<div style="font-size:22px;width:250px;margin:300px auto;color:red;">抱歉，您没有访问权限！</div>
</c:if>
</body>
</html>
