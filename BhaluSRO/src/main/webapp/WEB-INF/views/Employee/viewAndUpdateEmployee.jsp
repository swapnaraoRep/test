<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<spring:url value="/resources/pagination.css" var="bgCss" />
<spring:url value="/resources/style.css" var="mainCss" />
<link href="${bgCss}" rel="stylesheet" />
<link href="${mainCss}" rel="stylesheet" />

</head>
<body>
<c:url var="addAction" value="/employee/saveEmployee" ></c:url>
${addAction}
<form:form action="${addAction}" modelAttribute="employeeVO">
<div id="addEmployeeDiv">
<table align="center" >
<tr>
<td>Employee ID</td><td><form:input path="id" cssClass="focus1"/></td>
<td><form:errors path="id" cssClass="error"/></td></tr>
<tr>
<td>firstName</td><td><form:input path="firstName" cssClass="focus1"/></td>
<td><form:errors path="firstName" cssClass="error" /></td>
</tr>
<tr>
<td>LastName(*)</td><td><form:input path="lastName" cssClass="focus1"/></td>
<td><form:errors path="lastName" cssClass="error"/></td>
</tr>
<tr>
<td>Email(*)</td><td><form:input path="email" cssClass="focus1"/></td>
<td><form:errors path="email" cssClass="error"/></td>
</tr>
<tr>
<td>Phone</td><td><form:input path="phone" cssClass="focus1"/></td>
<td><form:errors path="phone" cssClass="error"/></td>
</tr>
<tr>
<td>DOB</td><td><form:input path="dateOfBirth" cssClass="focus1"/></td>
<td><form:errors path="dateOfBirth" cssClass="error"/></td>
</tr>

<tr>
<td>hire_date</td><td><form:input path="hire_date" cssClass="focus1"/></td>
<td><form:errors path="hire_date" cssClass="error"/></td>
</tr>
<tr>
<td>JobId</td><td><form:input path="job_id" cssClass="focus1"/></td>
<td><form:errors path="job_id" cssClass="error"/></td>
</tr>
<tr>
<td>salary</td><td><form:input path="salary" cssClass="focus1"/></td>
<td><form:errors path="salary" cssClass="error"/></td>
</tr>
<tr>
<td>Department Id(*)</td><td><form:select path="department_id" cssClass="focus1">
 <form:option value="NONE" label="--- Select ---"/>
<form:options items="${DepartmentList}"/>

</form:select> </td>
<td><form:errors path="department_id" cssClass="error"/></td>
</tr>
<tr>
		<td colspan="2">
			<c:if test="${!empty employee.firstName}">
				<input type="submit"
					value="<spring:message text="Edit Employee"/>" />
			</c:if>
			<c:if test="${empty employee.firstName}">
				<input type="submit"
					value="<spring:message text="Add Employee"/>" />
			</c:if>
		</td>
	</tr>

</table>

</div>	
	</form:form> 
	<h3>Employees List</h3>
<c:if test="${!empty listEmployees}">
<div class="center">
<div class="pagination">
	<table class="tg">
	<tr>
		<th>ID</th>
		<th width="80">FirstName</th>
		<th width="120">LastName</th>
		<th width="120">Email</th>
		<th width="120">Phone</th>
		<th width="120">DOB</th>
		<th width="120">HireDate</th>
		<th width="120">JobId</th>
			<th width="120">Salary</th>
			<th width="120">DepartmentId</th>
		
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listEmployees}" var="employee">
	
		<tr>
			<td  width="80">${employee.id}</td>
				<td width="120">${employee.firstName}</td>
				<td width="120">${employee.lastName}</td>
				<td width="120">${employee.email}</td>
				<td width="120">${employee.phone}</td>
				<td width="120">${employee.dateOfBirth}</td>
				<td width="120">${employee.hire_date}</td>
				<td width="120">${employee.job_id}</td>
				<td width="120">${employee.salary}</td> 
				<td width="120">${employee.department_id}</td>
			<td width="60"><a href="<c:url value='/editEmployee/${employee.id}' />" >Edit</a></td>
			<td width="60"><a href="<c:url value='/removeEmployee/${employee.id}' />" >Delete</a></td>
		</tr>
	
	</c:forEach>
	</table>
	</div>
</c:if>
</body>
</html>